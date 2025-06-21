classdef Image2FPGA_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        Image2FPGAUIFigure   matlab.ui.Figure
        Import_Image_File    matlab.ui.container.Menu
        Label_5              matlab.ui.control.Label
        Label_4              matlab.ui.control.Label
        open_state           matlab.ui.control.Lamp
        check_serial         matlab.ui.control.Button
        serial_num_choose    matlab.ui.control.DropDown
        Label_3              matlab.ui.control.Label
        open_serial          matlab.ui.control.Button
        Baud_choose          matlab.ui.control.DropDown
        Label_2              matlab.ui.control.Label
        start_send           matlab.ui.control.Button
        Pixel_coding         matlab.ui.control.Button
        Image_preview_label  matlab.ui.control.Label
        Image                matlab.ui.control.Image
        Path_display         matlab.ui.control.EditField
        Label                matlab.ui.control.Label
    end


    % Public properties that correspond to the Simulink model
    properties (Access = public, Transient)
        Simulation simulink.Simulation
    end

    properties (Access = private)
        SerialPort           % 串口对象
        ImageData            % 存储图像数据
        BinaryStream         % 二进制数据流
        ScrambledData        % 加扰后的数据
        StopFlag = false     % 停止标志
        MSequence            % M序列
        ProgressDialog       % 进度对话框
    end
    
    methods (Access = private)
        % 辅助函数：生成M序列
        function mseq = generateMSequence(~)
            % 生成M序列，本源多项式为 x^4+x+1
            n = 4; % 寄存器数量
            reg = [1 0 0 0]; % 初始状态（不能全0）
            mseq = zeros(1, 2^n - 1); % M序列长度为2^n-1
            
            for i = 1:length(mseq)
                mseq(i) = reg(4); % 输出最后一位
                feedback = mod(reg(4) + reg(1), 2); % x^4 + x^1
                reg = [feedback, reg(1:3)]; % 移位
            end
        end
        
        % 辅助函数：数据加扰
        function scrambledData = scrambleData(~, data, mseq)
            dataLen = length(data);
            mseqLen = length(mseq);
            
            % 将M序列重复至数据长度
            mseqExtended = repmat(mseq, 1, ceil(dataLen/mseqLen));
            mseqExtended = mseqExtended(1:dataLen);
            
            % 模2加（异或）
            scrambledData = mod(data + mseqExtended, 2);
        end
        
        % 辅助函数：将比特流打包成字节
        function bytes = packBitsToBytes(~, bits)
            % 补齐到8的倍数
            remainder = mod(length(bits), 8);
            if remainder ~= 0
                bits = [bits, zeros(1, 8 - remainder)];
            end
            
            % 将比特流转换为字节
            numBytes = length(bits) / 8;
            bytes = zeros(1, numBytes, 'uint8');
            
            for i = 1:numBytes
                bitIdx = (i-1)*8 + 1;
                bytes(i) = uint8(bin2dec(num2str(bits(bitIdx:bitIdx+7))));
            end
        end
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Menu selected function: Import_Image_File
        function Import_Image_FileMenuSelected(app, event)
                        % 选择图像文件
            [filename, pathname] = uigetfile({'*.jpg;*.jpeg;*.png;*.bmp;*.gif', '图像文件 (*.jpg,*.jpeg,*.png,*.bmp,*.gif)'}, '选择图像文件');
            
            if filename ~= 0
                % 读取图像
                fullpath = fullfile(pathname, filename);
                try
                    app.ImageData = imread(fullpath);
                    
                    % 如果是彩色图像，转换为灰度图像
                    if size(app.ImageData, 3) == 3
                        app.ImageData = rgb2gray(app.ImageData);
                    end
                    
                    % 确保图像数据类型正确
                    if ~isa(app.ImageData, 'uint8')
                        app.ImageData = uint8(app.ImageData);
                    end
                    
                    % 显示路径
                    app.Path_display.Value = fullpath;
                    
                    % 将灰度图像转换为RGB格式用于显示
                    displayImage = repmat(app.ImageData, [1, 1, 3]);
                    
                    % 显示图像
                    app.Image.ImageSource = displayImage;
                    app.Image.Enable = 'on';
                    
                    % 启用像素编码按钮
                    app.Pixel_coding.Enable = 'on';
                    
                catch ex
                    uialert(app.Image2FPGAUIFigure, ['加载图像失败: ' ex.message], '错误');
                end
            end
        end

        % Button pushed function: check_serial
        function check_serialButtonPushed(app, event)
            % 显示等待光标
            app.Image2FPGAUIFigure.Pointer = 'watch';
            drawnow;
            
            % 查询可用串口
            try
                ports = serialportlist("available");
                if isempty(ports)
                    app.serial_num_choose.Items = {'无可用串口'};
                    uialert(app.Image2FPGAUIFigure, '未检测到可用串口', '提示');
                else
                    app.serial_num_choose.Items = ports;
                    app.serial_num_choose.Value = ports(1);
                    app.open_serial.Enable = 'on';
                end
            catch ex
                uialert(app.Image2FPGAUIFigure, ['查询串口失败: ' ex.message], '错误');
            end
            
            % 恢复光标
            app.Image2FPGAUIFigure.Pointer = 'arrow';
        end

        % Button pushed function: open_serial
        function open_serialButtonPushed(app, event)
            if strcmp(app.open_serial.Text, '打开串口')
                try
                    % 打开串口
                    port = app.serial_num_choose.Value;
                    baudrate = str2double(app.Baud_choose.Value);
                    
                    app.SerialPort = serialport(port, baudrate);
                    configureTerminator(app.SerialPort, "LF");
                    
                    % 更新UI状态
                    app.open_serial.Text = '关闭串口';
                    app.open_state.Color = 'red';
                    app.serial_num_choose.Enable = 'off';
                    app.Baud_choose.Enable = 'off';
                    app.check_serial.Enable = 'off';
                    
                    % 如果已经有编码数据，启用发送按钮
                    if ~isempty(app.ScrambledData)
                        app.start_send.Enable = 'on';
                    end
                    
                catch ex
                    uialert(app.Image2FPGAUIFigure, ['打开串口失败: ' ex.message], '错误');
                end
            else
                try
                    % 关闭串口
                    if ~isempty(app.SerialPort)
                        delete(app.SerialPort);
                        app.SerialPort = [];
                    end
                    
                    % 更新UI状态
                    app.open_serial.Text = '打开串口';
                    app.open_state.Color = [0.5 0.5 0.5];
                    app.start_send.Enable = 'off';
                    app.serial_num_choose.Enable = 'on';
                    app.Baud_choose.Enable = 'on';
                    app.check_serial.Enable = 'on';
                    
                catch ex
                    uialert(app.Image2FPGAUIFigure, ['关闭串口失败: ' ex.message], '错误');
                end
            end
        end

        % Button pushed function: Pixel_coding
        function Pixel_codingButtonPushed(app, event)
            if isempty(app.ImageData)
                uialert(app.Image2FPGAUIFigure, '请先导入图像', '提示');
                return;
            end
            
            % 创建进度对话框
            app.ProgressDialog = uiprogressdlg(app.Image2FPGAUIFigure, ...
                'Title', '像素编码', ...
                'Message', '正在准备...', ...
                'Value', 0, ...
                'Cancelable', 'on');
            
            app.StopFlag = false;
            
            try
                % 生成M序列 (x^4+x+1)
                app.MSequence = app.generateMSequence();
                
                % 获取图像尺寸
                [rows, cols] = size(app.ImageData);
                totalPixels = rows * cols;
                
                % 预分配内存以提高速度
                app.BinaryStream = zeros(1, totalPixels * 8);
                app.ScrambledData = [];
                
                app.ProgressDialog.Message = '正在进行像素编码...';
                drawnow limitrate; % 限制更新频率
                
                % 将整个图像数据一次性转换
                flattenedImage = app.ImageData(:)'; % 展平图像
                
                % 向量化处理 - 一次性转换所有像素
                for i = 1:totalPixels
                    if mod(i, 1000) == 0 % 每1000个像素检查一次
                        % 检查是否取消
                        if app.ProgressDialog.CancelRequested
                            app.StopFlag = true;
                            break;
                        end
                        
                        % 更新进度
                        progress = (i / totalPixels) * 0.5;
                        app.ProgressDialog.Value = progress;
                        app.ProgressDialog.Message = sprintf('正在进行像素编码... %.1f%%', progress*100);
                        drawnow limitrate;
                    end
                    
                    % 获取二进制表示
                    binStr = dec2bin(flattenedImage(i), 8);
                    app.BinaryStream((i-1)*8+1:i*8) = binStr - '0';
                end
                
                if ~app.StopFlag
                    % 进行加扰
                    app.ProgressDialog.Message = '正在进行加扰处理...';
                    app.ProgressDialog.Value = 0.6;
                    drawnow limitrate;
                    
                    app.ScrambledData = app.scrambleData(app.BinaryStream, app.MSequence);
                    
                    % 完成编码
                    app.ProgressDialog.Value = 1;
                    app.ProgressDialog.Message = '编码完成！';
                    drawnow;
                    pause(0.5);
                    
                    % 如果串口已打开，启用发送按钮
                    if ~isempty(app.SerialPort) && isvalid(app.SerialPort)
                        app.start_send.Enable = 'on';
                    end
                else
                    app.ProgressDialog.Message = '编码已取消';
                    drawnow;
                    pause(0.5);
                end
                
            catch ex
                if ~isempty(app.ProgressDialog) && isvalid(app.ProgressDialog)
                    close(app.ProgressDialog);
                end
                uialert(app.Image2FPGAUIFigure, ['编码失败: ' ex.message], '错误');
            end
            
            % 关闭进度对话框
            if ~isempty(app.ProgressDialog) && isvalid(app.ProgressDialog)
                close(app.ProgressDialog);
            end
            app.ProgressDialog = [];
        end

        % Button pushed function: start_send
        function start_sendButtonPushed(app, event)
            if isempty(app.SerialPort) || ~isvalid(app.SerialPort)
                uialert(app.Image2FPGAUIFigure, '请先打开串口', '提示');
                return;
            end
            
            if isempty(app.ScrambledData)
                uialert(app.Image2FPGAUIFigure, '请先进行像素编码', '提示');
                return;
            end
            
            % 创建进度对话框
            app.ProgressDialog = uiprogressdlg(app.Image2FPGAUIFigure, ...
                'Title', '数据发送', ...
                'Message', '正在发送数据...', ...
                'Value', 0, ...
                'Cancelable', 'on');
            
            app.StopFlag = false;
            
            try
                % 分块发送数据
                dataLength = length(app.ScrambledData);
                blockSize = 1024; % 每次发送1024位
                numBlocks = ceil(dataLength / blockSize);
                
                for i = 1:numBlocks
                    % 检查是否取消
                    if app.ProgressDialog.CancelRequested
                        app.StopFlag = true;
                        break;
                    end
                    
                    % 计算当前块的索引
                    startIdx = (i-1) * blockSize + 1;
                    endIdx = min(i * blockSize, dataLength);
                    
                    % 获取当前块数据
                    blockData = app.ScrambledData(startIdx:endIdx);
                    
                    % 转换为字节并发送
                    byteData = app.packBitsToBytes(blockData);
                    write(app.SerialPort, byteData, "uint8");
                    
                    % 更新进度
                    app.ProgressDialog.Value = i / numBlocks;
                    app.ProgressDialog.Message = sprintf('正在发送数据... %.1f%%', (i/numBlocks)*100);
                    drawnow limitrate; % 限制更新频率
                    
                    % 添加小延时避免缓冲区溢出
                    pause(0.01);
                end
                
                if ~app.StopFlag
                    app.ProgressDialog.Value = 1;
                    app.ProgressDialog.Message = '发送完成！';
                    drawnow;
                    pause(0.5);
                else
                    app.ProgressDialog.Message = '发送已取消';
                    drawnow;
                    pause(0.5);
                end
                
            catch ex
                if ~isempty(app.ProgressDialog) && isvalid(app.ProgressDialog)
                    close(app.ProgressDialog);
                end
                uialert(app.Image2FPGAUIFigure, ['发送失败: ' ex.message], '错误');
            end
            
            % 关闭进度对话框
            if ~isempty(app.ProgressDialog) && isvalid(app.ProgressDialog)
                close(app.ProgressDialog);
            end
            app.ProgressDialog = [];
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create Image2FPGAUIFigure and hide until all components are created
            app.Image2FPGAUIFigure = uifigure('Visible', 'off');
            app.Image2FPGAUIFigure.Position = [100 100 874 403];
            app.Image2FPGAUIFigure.Name = 'Image2FPGA';

            % Create Import_Image_File
            app.Import_Image_File = uimenu(app.Image2FPGAUIFigure);
            app.Import_Image_File.MenuSelectedFcn = createCallbackFcn(app, @Import_Image_FileMenuSelected, true);
            app.Import_Image_File.Text = '导入图像文件';

            % Create Label
            app.Label = uilabel(app.Image2FPGAUIFigure);
            app.Label.HorizontalAlignment = 'right';
            app.Label.FontName = '华文楷体';
            app.Label.FontSize = 24;
            app.Label.Position = [9 358 149 32];
            app.Label.Text = '图像文件路径';

            % Create Path_display
            app.Path_display = uieditfield(app.Image2FPGAUIFigure, 'text');
            app.Path_display.Editable = 'off';
            app.Path_display.FontName = 'Times New Roman';
            app.Path_display.FontSize = 18;
            app.Path_display.Position = [173 358 689 32];

            % Create Image
            app.Image = uiimage(app.Image2FPGAUIFigure);
            app.Image.Enable = 'off';
            app.Image.Position = [19 112 327 235];

            % Create Image_preview_label
            app.Image_preview_label = uilabel(app.Image2FPGAUIFigure);
            app.Image_preview_label.FontName = '华文楷体';
            app.Image_preview_label.FontSize = 24;
            app.Image_preview_label.Position = [132 57 101 32];
            app.Image_preview_label.Text = '图像预览';

            % Create Pixel_coding
            app.Pixel_coding = uibutton(app.Image2FPGAUIFigure, 'push');
            app.Pixel_coding.ButtonPushedFcn = createCallbackFcn(app, @Pixel_codingButtonPushed, true);
            app.Pixel_coding.FontName = '华文楷体';
            app.Pixel_coding.FontSize = 24;
            app.Pixel_coding.Position = [503 205 183 39];
            app.Pixel_coding.Text = '像素编码并加扰';

            % Create start_send
            app.start_send = uibutton(app.Image2FPGAUIFigure, 'push');
            app.start_send.ButtonPushedFcn = createCallbackFcn(app, @start_sendButtonPushed, true);
            app.start_send.FontName = '华文楷体';
            app.start_send.FontSize = 24;
            app.start_send.Enable = 'off';
            app.start_send.Position = [503 143 183 39];
            app.start_send.Text = '开始发送';

            % Create Label_2
            app.Label_2 = uilabel(app.Image2FPGAUIFigure);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.FontName = '华文楷体';
            app.Label_2.FontSize = 24;
            app.Label_2.Position = [352 262 125 32];
            app.Label_2.Text = '串口波特率';

            % Create Baud_choose
            app.Baud_choose = uidropdown(app.Image2FPGAUIFigure);
            app.Baud_choose.Items = {'9600', '14400', '19200', '115200', '921600'};
            app.Baud_choose.FontName = 'Times New Roman';
            app.Baud_choose.FontSize = 24;
            app.Baud_choose.Position = [492 262 206 32];
            app.Baud_choose.Value = '9600';

            % Create open_serial
            app.open_serial = uibutton(app.Image2FPGAUIFigure, 'push');
            app.open_serial.ButtonPushedFcn = createCallbackFcn(app, @open_serialButtonPushed, true);
            app.open_serial.HorizontalAlignment = 'right';
            app.open_serial.FontName = '华文楷体';
            app.open_serial.FontSize = 24;
            app.open_serial.Position = [720 259 131 39];
            app.open_serial.Text = '打开串口';

            % Create Label_3
            app.Label_3 = uilabel(app.Image2FPGAUIFigure);
            app.Label_3.HorizontalAlignment = 'center';
            app.Label_3.FontName = '华文楷体';
            app.Label_3.FontSize = 24;
            app.Label_3.Position = [352 305 124 32];
            app.Label_3.Text = '串口号';

            % Create serial_num_choose
            app.serial_num_choose = uidropdown(app.Image2FPGAUIFigure);
            app.serial_num_choose.Items = {};
            app.serial_num_choose.FontName = 'Times New Roman';
            app.serial_num_choose.FontSize = 24;
            app.serial_num_choose.Position = [492 305 206 32];
            app.serial_num_choose.Value = {};

            % Create check_serial
            app.check_serial = uibutton(app.Image2FPGAUIFigure, 'push');
            app.check_serial.ButtonPushedFcn = createCallbackFcn(app, @check_serialButtonPushed, true);
            app.check_serial.FontName = '华文楷体';
            app.check_serial.FontSize = 24;
            app.check_serial.Position = [720 302 131 39];
            app.check_serial.Text = '查询串口';

            % Create open_state
            app.open_state = uilamp(app.Image2FPGAUIFigure);
            app.open_state.Position = [727 268 20 20];
            app.open_state.Color = [0.502 0.502 0.502];

            % Create Label_4
            app.Label_4 = uilabel(app.Image2FPGAUIFigure);
            app.Label_4.FontName = '华文楷体';
            app.Label_4.FontSize = 16;
            app.Label_4.Position = [356 -22 267 155];
            app.Label_4.Text = {'使用方法与说明：'; '1.点击左上角导入图像'; '2.查询使用对应的串口号'; '3.选择对应的波特率'; '4.点击像素编码开始处理'; '5.点击发送开始向串口发送数据'; ''; ''};

            % Create Label_5
            app.Label_5 = uilabel(app.Image2FPGAUIFigure);
            app.Label_5.FontName = '华文楷体';
            app.Label_5.FontSize = 16;
            app.Label_5.Position = [591 24 291 98];
            app.Label_5.Text = {'注：'; '1.本设计由爱尔兰的楠小楠设计，用于实'; '现课程设计；'; '2.个人提倡开源精神'; ''; ''};

            % Show the figure after all components are created
            app.Image2FPGAUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Image2FPGA_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.Image2FPGAUIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.Image2FPGAUIFigure)
        end
    end
end