%% 2ASK带通系统发射机 - 图像处理与m序列加扰（1位输出）
% 题目F7 - 产生m序列的本源多项式为 x^4+x+1

clear; clc; close all;

%% 1. 读取MATLAB自带的测试图像
img = imread('cameraman.tif');  % 使用MATLAB自带的cameraman测试图像
[rows, cols] = size(img);

% 显示原始图像
figure(1);
imshow(img);
title('原始图像');

%% 2. 将图像转换为二进制码流
% 将图像数据展开为一维数组
img_data = img(:);

% 将每个像素值转换为8位二进制
binary_stream = [];
for i = 1:length(img_data)
    pixel_binary = de2bi(img_data(i), 8, 'left-msb');
    binary_stream = [binary_stream, double(pixel_binary)];  % 转换为double类型
end

fprintf('图像大小: %d x %d\n', rows, cols);
fprintf('总像素数: %d\n', rows * cols);
fprintf('二进制码流长度: %d bits\n', length(binary_stream));

%% 3. 生成m序列 (本源多项式 x^4+x+1)
% 初始状态设为[1 0 0 1]（非全零）
m_seq_reg = [1 0 0 1];
m_seq_length = 2^4 - 1;  % m序列周期为15
m_sequence = zeros(1, m_seq_length);

% 生成m序列
for i = 1:m_seq_length
    m_sequence(i) = m_seq_reg(4);  % 输出第4位
    feedback = mod(m_seq_reg(4) + m_seq_reg(1), 2);  % x^4 + x^1
    m_seq_reg = [feedback, m_seq_reg(1:3)];  % 移位
end

%% 4. 用m序列对二进制码流进行加扰
% 将m序列重复到与二进制码流相同长度
m_seq_repeated = repmat(m_sequence, 1, ceil(length(binary_stream)/m_seq_length));
m_seq_repeated = m_seq_repeated(1:length(binary_stream));

% 模2加（异或）
scrambled_stream = mod(binary_stream + m_seq_repeated, 2);

%% 5. 生成1位宽的COE文件
% COE文件格式：
% memory_initialization_radix=2;
% memory_initialization_vector=
% data0,
% data1,
% ...
% dataN;

% 打开文件
fid = fopen('scrambled_data_1bit.coe', 'w');

% 写入文件头
fprintf(fid, 'memory_initialization_radix=2;\n');
fprintf(fid, 'memory_initialization_vector=\n');

% 将加扰后的数据逐位写入
for i = 1:length(scrambled_stream)
    if i < length(scrambled_stream)
        fprintf(fid, '%d,\n', scrambled_stream(i));
    else
        fprintf(fid, '%d;\n', scrambled_stream(i));  % 最后一个数据用分号结束
    end
end

fclose(fid);

fprintf('\n1位COE文件生成完成: scrambled_data_1bit.coe\n');
fprintf('ROM深度（位数）: %d\n', length(scrambled_stream));
fprintf('ROM宽度: 1 bit\n');

%% 6. 显示部分数据用于验证
fprintf('\n前20位加扰数据:\n');
for i = 1:20
    fprintf('地址[%d] = %d\n', i-1, scrambled_stream(i));
end

%% 7. 验证m序列（可选）
figure(2);
subplot(2,1,1);
stem(m_sequence);
title('m序列 (周期=15)');
xlabel('位置');
ylabel('值');
axis([0 16 -0.5 1.5]);

subplot(2,1,2);
plot(binary_stream(1:100), 'b-', 'LineWidth', 1.5);
hold on;
plot(scrambled_stream(1:100), 'r--', 'LineWidth', 1.5);
title('加扰前后对比（前100位）');
xlabel('位置');
ylabel('值');
legend('原始码流', '加扰后码流');
axis([0 100 -0.5 1.5]);