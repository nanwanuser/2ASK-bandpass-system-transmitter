module carrier_generator(
    input wire clk,                     // 100MHz系统时钟
    input wire rst_n,                   // 复位信号
    output reg signed [15:0] carrier_i, // I路载波输出（余弦）
    output reg carrier_valid            // 载波有效信号
);

    // DDS参数
    // 载波频率1MHz，系统时钟100MHz
    // 相位累加器32位，频率字 = (1MHz * 2^32) / 100MHz = 42949673
    parameter PHASE_INC = 32'd42949673;
    
    // 相位累加器
    reg [31:0] phase_acc;
    
    // 正弦/余弦查找表 (256个点，8位地址)
    wire [7:0] lut_addr = phase_acc[31:24];  // 取高8位作为查找表地址
    
    // 预计算的余弦查找表 (256个点，16位有符号数)
    wire signed [15:0] cos_lut [0:255];
    
    // 余弦查找表 - 正弦表相位偏移90度
    assign cos_lut[0]   = 16'h7FFF; assign cos_lut[1]   = 16'h7FF6; assign cos_lut[2]   = 16'h7FD8; assign cos_lut[3]   = 16'h7FA7;
    assign cos_lut[4]   = 16'h7F62; assign cos_lut[5]   = 16'h7F09; assign cos_lut[6]   = 16'h7E9D; assign cos_lut[7]   = 16'h7E1D;
    assign cos_lut[8]   = 16'h7D8A; assign cos_lut[9]   = 16'h7CE3; assign cos_lut[10]  = 16'h7C29; assign cos_lut[11]  = 16'h7B5D;
    assign cos_lut[12]  = 16'h7A7D; assign cos_lut[13]  = 16'h798A; assign cos_lut[14]  = 16'h7884; assign cos_lut[15]  = 16'h776C;
    assign cos_lut[16]  = 16'h7641; assign cos_lut[17]  = 16'h7504; assign cos_lut[18]  = 16'h73B5; assign cos_lut[19]  = 16'h7255;
    assign cos_lut[20]  = 16'h70E2; assign cos_lut[21]  = 16'h6F5F; assign cos_lut[22]  = 16'h6DCA; assign cos_lut[23]  = 16'h6C24;
    assign cos_lut[24]  = 16'h6A6D; assign cos_lut[25]  = 16'h68A6; assign cos_lut[26]  = 16'h66CF; assign cos_lut[27]  = 16'h64E8;
    assign cos_lut[28]  = 16'h62F2; assign cos_lut[29]  = 16'h60EC; assign cos_lut[30]  = 16'h5ED7; assign cos_lut[31]  = 16'h5CB4;
    assign cos_lut[32]  = 16'h5A82; assign cos_lut[33]  = 16'h5842; assign cos_lut[34]  = 16'h55F5; assign cos_lut[35]  = 16'h539B;
    assign cos_lut[36]  = 16'h5133; assign cos_lut[37]  = 16'h4EBF; assign cos_lut[38]  = 16'h4C3F; assign cos_lut[39]  = 16'h49B4;
    assign cos_lut[40]  = 16'h471C; assign cos_lut[41]  = 16'h447A; assign cos_lut[42]  = 16'h41CE; assign cos_lut[43]  = 16'h3F17;
    assign cos_lut[44]  = 16'h3C56; assign cos_lut[45]  = 16'h398C; assign cos_lut[46]  = 16'h36BA; assign cos_lut[47]  = 16'h33DE;
    assign cos_lut[48]  = 16'h30FB; assign cos_lut[49]  = 16'h2E11; assign cos_lut[50]  = 16'h2B1F; assign cos_lut[51]  = 16'h2826;
    assign cos_lut[52]  = 16'h2528; assign cos_lut[53]  = 16'h2223; assign cos_lut[54]  = 16'h1F19; assign cos_lut[55]  = 16'h1C0B;
    assign cos_lut[56]  = 16'h18F8; assign cos_lut[57]  = 16'h15E2; assign cos_lut[58]  = 16'h12C8; assign cos_lut[59]  = 16'h0FAB;
    assign cos_lut[60]  = 16'h0C8B; assign cos_lut[61]  = 16'h096A; assign cos_lut[62]  = 16'h0647; assign cos_lut[63]  = 16'h0324;
    assign cos_lut[64]  = 16'h0000; assign cos_lut[65]  = 16'hFCDC; assign cos_lut[66]  = 16'hF9B9; assign cos_lut[67]  = 16'hF696;
    assign cos_lut[68]  = 16'hF375; assign cos_lut[69]  = 16'hF055; assign cos_lut[70]  = 16'hED38; assign cos_lut[71]  = 16'hEA1E;
    assign cos_lut[72]  = 16'hE708; assign cos_lut[73]  = 16'hE3F5; assign cos_lut[74]  = 16'hE0E7; assign cos_lut[75]  = 16'hDDDD;
    assign cos_lut[76]  = 16'hDAD8; assign cos_lut[77]  = 16'hD7DA; assign cos_lut[78]  = 16'hD4E1; assign cos_lut[79]  = 16'hD1EF;
    assign cos_lut[80]  = 16'hCF05; assign cos_lut[81]  = 16'hCC22; assign cos_lut[82]  = 16'hC946; assign cos_lut[83]  = 16'hC674;
    assign cos_lut[84]  = 16'hC3AA; assign cos_lut[85]  = 16'hC0E9; assign cos_lut[86]  = 16'hBE32; assign cos_lut[87]  = 16'hBB86;
    assign cos_lut[88]  = 16'hB8E4; assign cos_lut[89]  = 16'hB64C; assign cos_lut[90]  = 16'hB3C1; assign cos_lut[91]  = 16'hB141;
    assign cos_lut[92]  = 16'hAECD; assign cos_lut[93]  = 16'hAC65; assign cos_lut[94]  = 16'hAA0B; assign cos_lut[95]  = 16'hA7BE;
    assign cos_lut[96]  = 16'hA57E; assign cos_lut[97]  = 16'hA34C; assign cos_lut[98]  = 16'hA129; assign cos_lut[99]  = 16'h9F14;
    assign cos_lut[100] = 16'h9D0E; assign cos_lut[101] = 16'h9B18; assign cos_lut[102] = 16'h9931; assign cos_lut[103] = 16'h975A;
    assign cos_lut[104] = 16'h9593; assign cos_lut[105] = 16'h93DC; assign cos_lut[106] = 16'h9236; assign cos_lut[107] = 16'h90A1;
    assign cos_lut[108] = 16'h8F1E; assign cos_lut[109] = 16'h8DAB; assign cos_lut[110] = 16'h8C4B; assign cos_lut[111] = 16'h8AFC;
    assign cos_lut[112] = 16'h89BF; assign cos_lut[113] = 16'h8894; assign cos_lut[114] = 16'h877C; assign cos_lut[115] = 16'h8676;
    assign cos_lut[116] = 16'h8583; assign cos_lut[117] = 16'h84A3; assign cos_lut[118] = 16'h83D7; assign cos_lut[119] = 16'h831D;
    assign cos_lut[120] = 16'h8276; assign cos_lut[121] = 16'h81E3; assign cos_lut[122] = 16'h8163; assign cos_lut[123] = 16'h80F7;
    assign cos_lut[124] = 16'h809E; assign cos_lut[125] = 16'h8059; assign cos_lut[126] = 16'h8028; assign cos_lut[127] = 16'h800A;
    assign cos_lut[128] = 16'h8001; assign cos_lut[129] = 16'h800A; assign cos_lut[130] = 16'h8028; assign cos_lut[131] = 16'h8059;
    assign cos_lut[132] = 16'h809E; assign cos_lut[133] = 16'h80F7; assign cos_lut[134] = 16'h8163; assign cos_lut[135] = 16'h81E3;
    assign cos_lut[136] = 16'h8276; assign cos_lut[137] = 16'h831D; assign cos_lut[138] = 16'h83D7; assign cos_lut[139] = 16'h84A3;
    assign cos_lut[140] = 16'h8583; assign cos_lut[141] = 16'h8676; assign cos_lut[142] = 16'h877C; assign cos_lut[143] = 16'h8894;
    assign cos_lut[144] = 16'h89BF; assign cos_lut[145] = 16'h8AFC; assign cos_lut[146] = 16'h8C4B; assign cos_lut[147] = 16'h8DAB;
    assign cos_lut[148] = 16'h8F1E; assign cos_lut[149] = 16'h90A1; assign cos_lut[150] = 16'h9236; assign cos_lut[151] = 16'h93DC;
    assign cos_lut[152] = 16'h9593; assign cos_lut[153] = 16'h975A; assign cos_lut[154] = 16'h9931; assign cos_lut[155] = 16'h9B18;
    assign cos_lut[156] = 16'h9D0E; assign cos_lut[157] = 16'h9F14; assign cos_lut[158] = 16'hA129; assign cos_lut[159] = 16'hA34C;
    assign cos_lut[160] = 16'hA57E; assign cos_lut[161] = 16'hA7BE; assign cos_lut[162] = 16'hAA0B; assign cos_lut[163] = 16'hAC65;
    assign cos_lut[164] = 16'hAECD; assign cos_lut[165] = 16'hB141; assign cos_lut[166] = 16'hB3C1; assign cos_lut[167] = 16'hB64C;
    assign cos_lut[168] = 16'hB8E4; assign cos_lut[169] = 16'hBB86; assign cos_lut[170] = 16'hBE32; assign cos_lut[171] = 16'hC0E9;
    assign cos_lut[172] = 16'hC3AA; assign cos_lut[173] = 16'hC674; assign cos_lut[174] = 16'hC946; assign cos_lut[175] = 16'hCC22;
    assign cos_lut[176] = 16'hCF05; assign cos_lut[177] = 16'hD1EF; assign cos_lut[178] = 16'hD4E1; assign cos_lut[179] = 16'hD7DA;
    assign cos_lut[180] = 16'hDAD8; assign cos_lut[181] = 16'hDDDD; assign cos_lut[182] = 16'hE0E7; assign cos_lut[183] = 16'hE3F5;
    assign cos_lut[184] = 16'hE708; assign cos_lut[185] = 16'hEA1E; assign cos_lut[186] = 16'hED38; assign cos_lut[187] = 16'hF055;
    assign cos_lut[188] = 16'hF375; assign cos_lut[189] = 16'hF696; assign cos_lut[190] = 16'hF9B9; assign cos_lut[191] = 16'hFCDC;
    assign cos_lut[192] = 16'h0000; assign cos_lut[193] = 16'h0324; assign cos_lut[194] = 16'h0647; assign cos_lut[195] = 16'h096A;
    assign cos_lut[196] = 16'h0C8B; assign cos_lut[197] = 16'h0FAB; assign cos_lut[198] = 16'h12C8; assign cos_lut[199] = 16'h15E2;
    assign cos_lut[200] = 16'h18F8; assign cos_lut[201] = 16'h1C0B; assign cos_lut[202] = 16'h1F19; assign cos_lut[203] = 16'h2223;
    assign cos_lut[204] = 16'h2528; assign cos_lut[205] = 16'h2826; assign cos_lut[206] = 16'h2B1F; assign cos_lut[207] = 16'h2E11;
    assign cos_lut[208] = 16'h30FB; assign cos_lut[209] = 16'h33DE; assign cos_lut[210] = 16'h36BA; assign cos_lut[211] = 16'h398C;
    assign cos_lut[212] = 16'h3C56; assign cos_lut[213] = 16'h3F17; assign cos_lut[214] = 16'h41CE; assign cos_lut[215] = 16'h447A;
    assign cos_lut[216] = 16'h471C; assign cos_lut[217] = 16'h49B4; assign cos_lut[218] = 16'h4C3F; assign cos_lut[219] = 16'h4EBF;
    assign cos_lut[220] = 16'h5133; assign cos_lut[221] = 16'h539B; assign cos_lut[222] = 16'h55F5; assign cos_lut[223] = 16'h5842;
    assign cos_lut[224] = 16'h5A82; assign cos_lut[225] = 16'h5CB4; assign cos_lut[226] = 16'h5ED7; assign cos_lut[227] = 16'h60EC;
    assign cos_lut[228] = 16'h62F2; assign cos_lut[229] = 16'h64E8; assign cos_lut[230] = 16'h66CF; assign cos_lut[231] = 16'h68A6;
    assign cos_lut[232] = 16'h6A6D; assign cos_lut[233] = 16'h6C24; assign cos_lut[234] = 16'h6DCA; assign cos_lut[235] = 16'h6F5F;
    assign cos_lut[236] = 16'h70E2; assign cos_lut[237] = 16'h7255; assign cos_lut[238] = 16'h73B5; assign cos_lut[239] = 16'h7504;
    assign cos_lut[240] = 16'h7641; assign cos_lut[241] = 16'h776C; assign cos_lut[242] = 16'h7884; assign cos_lut[243] = 16'h798A;
    assign cos_lut[244] = 16'h7A7D; assign cos_lut[245] = 16'h7B5D; assign cos_lut[246] = 16'h7C29; assign cos_lut[247] = 16'h7CE3;
    assign cos_lut[248] = 16'h7D8A; assign cos_lut[249] = 16'h7E1D; assign cos_lut[250] = 16'h7E9D; assign cos_lut[251] = 16'h7F09;
    assign cos_lut[252] = 16'h7F62; assign cos_lut[253] = 16'h7FA7; assign cos_lut[254] = 16'h7FD8; assign cos_lut[255] = 16'h7FF6;
    
    always @(posedge clk) begin
        if (!rst_n) begin
            phase_acc <= 32'b0;
            carrier_i <= 16'sh0000;
            carrier_valid <= 1'b0;
        end else begin
            // 更新相位累加器
            phase_acc <= phase_acc + PHASE_INC;
            
            // 查表获取余弦值
            carrier_i <= cos_lut[lut_addr];  // I路为余弦
            carrier_valid <= 1'b1;
        end
    end

endmodule