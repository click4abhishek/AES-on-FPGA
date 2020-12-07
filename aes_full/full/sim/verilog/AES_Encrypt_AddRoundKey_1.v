// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AES_Encrypt_AddRoundKey_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_0_read,
        state_1_read,
        state_2_read,
        state_3_read,
        state_4_read,
        state_5_read,
        state_6_read,
        state_7_read,
        state_8_read,
        state_9_read,
        state_10_read,
        state_11_read,
        state_1213_read,
        state_13_read,
        state_14_read,
        state_15_read,
        roundKey_address0,
        roundKey_ce0,
        roundKey_q0,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15
);

parameter    ap_ST_st1_fsm_0 = 17'b1;
parameter    ap_ST_st2_fsm_1 = 17'b10;
parameter    ap_ST_st3_fsm_2 = 17'b100;
parameter    ap_ST_st4_fsm_3 = 17'b1000;
parameter    ap_ST_st5_fsm_4 = 17'b10000;
parameter    ap_ST_st6_fsm_5 = 17'b100000;
parameter    ap_ST_st7_fsm_6 = 17'b1000000;
parameter    ap_ST_st8_fsm_7 = 17'b10000000;
parameter    ap_ST_st9_fsm_8 = 17'b100000000;
parameter    ap_ST_st10_fsm_9 = 17'b1000000000;
parameter    ap_ST_st11_fsm_10 = 17'b10000000000;
parameter    ap_ST_st12_fsm_11 = 17'b100000000000;
parameter    ap_ST_st13_fsm_12 = 17'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 17'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 17'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 17'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 17'b10000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_1 = 64'b1;
parameter    ap_const_lv64_2 = 64'b10;
parameter    ap_const_lv64_3 = 64'b11;
parameter    ap_const_lv64_4 = 64'b100;
parameter    ap_const_lv64_5 = 64'b101;
parameter    ap_const_lv64_6 = 64'b110;
parameter    ap_const_lv64_7 = 64'b111;
parameter    ap_const_lv64_8 = 64'b1000;
parameter    ap_const_lv64_9 = 64'b1001;
parameter    ap_const_lv64_A = 64'b1010;
parameter    ap_const_lv64_B = 64'b1011;
parameter    ap_const_lv64_C = 64'b1100;
parameter    ap_const_lv64_D = 64'b1101;
parameter    ap_const_lv64_E = 64'b1110;
parameter    ap_const_lv64_F = 64'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv8_0 = 8'b00000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] state_0_read;
input  [7:0] state_1_read;
input  [7:0] state_2_read;
input  [7:0] state_3_read;
input  [7:0] state_4_read;
input  [7:0] state_5_read;
input  [7:0] state_6_read;
input  [7:0] state_7_read;
input  [7:0] state_8_read;
input  [7:0] state_9_read;
input  [7:0] state_10_read;
input  [7:0] state_11_read;
input  [7:0] state_1213_read;
input  [7:0] state_13_read;
input  [7:0] state_14_read;
input  [7:0] state_15_read;
output  [7:0] roundKey_address0;
output   roundKey_ce0;
input  [7:0] roundKey_q0;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;
output  [7:0] ap_return_7;
output  [7:0] ap_return_8;
output  [7:0] ap_return_9;
output  [7:0] ap_return_10;
output  [7:0] ap_return_11;
output  [7:0] ap_return_12;
output  [7:0] ap_return_13;
output  [7:0] ap_return_14;
output  [7:0] ap_return_15;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] roundKey_address0;
reg roundKey_ce0;
reg[7:0] ap_return_0;
reg[7:0] ap_return_1;
reg[7:0] ap_return_2;
reg[7:0] ap_return_3;
reg[7:0] ap_return_4;
reg[7:0] ap_return_5;
reg[7:0] ap_return_6;
reg[7:0] ap_return_7;
reg[7:0] ap_return_8;
reg[7:0] ap_return_9;
reg[7:0] ap_return_10;
reg[7:0] ap_return_11;
reg[7:0] ap_return_12;
reg[7:0] ap_return_13;
reg[7:0] ap_return_14;
reg[7:0] ap_return_15;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_34;
reg   [7:0] roundKey_load_reg_504;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_88;
reg   [7:0] roundKey_load_1_reg_514;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_98;
reg   [7:0] roundKey_load_2_reg_524;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_108;
reg   [7:0] roundKey_load_3_reg_534;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_118;
reg   [7:0] roundKey_load_4_reg_544;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_128;
reg   [7:0] roundKey_load_5_reg_554;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_138;
reg   [7:0] roundKey_load_6_reg_564;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_148;
reg   [7:0] roundKey_load_7_reg_574;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_158;
reg   [7:0] roundKey_load_8_reg_584;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_168;
reg   [7:0] roundKey_load_9_reg_594;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_178;
reg   [7:0] roundKey_load_10_reg_604;
reg    ap_sig_cseq_ST_st12_fsm_11;
reg    ap_sig_188;
reg   [7:0] roundKey_load_11_reg_614;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_198;
reg   [7:0] roundKey_load_12_reg_624;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_208;
reg   [7:0] roundKey_load_13_reg_634;
reg    ap_sig_cseq_ST_st15_fsm_14;
reg    ap_sig_218;
reg   [7:0] roundKey_load_14_reg_644;
reg    ap_sig_cseq_ST_st16_fsm_15;
reg    ap_sig_228;
reg    ap_sig_cseq_ST_st17_fsm_16;
reg    ap_sig_254;
wire   [7:0] state_fu_322_p2;
wire   [7:0] state_1_fu_327_p2;
wire   [7:0] state_2_fu_332_p2;
wire   [7:0] state_3_fu_337_p2;
wire   [7:0] state_4_fu_342_p2;
wire   [7:0] state_5_fu_347_p2;
wire   [7:0] state_6_fu_352_p2;
wire   [7:0] state_7_fu_357_p2;
wire   [7:0] state_8_fu_362_p2;
wire   [7:0] state_9_fu_367_p2;
wire   [7:0] state_10_fu_372_p2;
wire   [7:0] state_11_fu_377_p2;
wire   [7:0] state_s_fu_382_p2;
wire   [7:0] state_13_fu_387_p2;
wire   [7:0] state_14_fu_392_p2;
wire   [7:0] state_15_fu_397_p2;
reg   [7:0] ap_return_0_preg;
reg   [7:0] ap_return_1_preg;
reg   [7:0] ap_return_2_preg;
reg   [7:0] ap_return_3_preg;
reg   [7:0] ap_return_4_preg;
reg   [7:0] ap_return_5_preg;
reg   [7:0] ap_return_6_preg;
reg   [7:0] ap_return_7_preg;
reg   [7:0] ap_return_8_preg;
reg   [7:0] ap_return_9_preg;
reg   [7:0] ap_return_10_preg;
reg   [7:0] ap_return_11_preg;
reg   [7:0] ap_return_12_preg;
reg   [7:0] ap_return_13_preg;
reg   [7:0] ap_return_14_preg;
reg   [7:0] ap_return_15_preg;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'b1;
#0 ap_return_0_preg = 8'b00000000;
#0 ap_return_1_preg = 8'b00000000;
#0 ap_return_2_preg = 8'b00000000;
#0 ap_return_3_preg = 8'b00000000;
#0 ap_return_4_preg = 8'b00000000;
#0 ap_return_5_preg = 8'b00000000;
#0 ap_return_6_preg = 8'b00000000;
#0 ap_return_7_preg = 8'b00000000;
#0 ap_return_8_preg = 8'b00000000;
#0 ap_return_9_preg = 8'b00000000;
#0 ap_return_10_preg = 8'b00000000;
#0 ap_return_11_preg = 8'b00000000;
#0 ap_return_12_preg = 8'b00000000;
#0 ap_return_13_preg = 8'b00000000;
#0 ap_return_14_preg = 8'b00000000;
#0 ap_return_15_preg = 8'b00000000;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_0_preg <= state_fu_322_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_10_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_10_preg <= state_10_fu_372_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_11_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_11_preg <= state_11_fu_377_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_12_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_12_preg <= state_s_fu_382_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_13_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_13_preg <= state_13_fu_387_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_14_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_14_preg <= state_14_fu_392_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_15_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_15_preg <= state_15_fu_397_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_1_preg <= state_1_fu_327_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_2_preg <= state_2_fu_332_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_3_preg <= state_3_fu_337_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_4_preg <= state_4_fu_342_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_5_preg <= state_5_fu_347_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_6_preg <= state_6_fu_352_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_7_preg <= state_7_fu_357_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_8_preg <= state_8_fu_362_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_9_preg <= ap_const_lv8_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
            ap_return_9_preg <= state_9_fu_367_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        roundKey_load_10_reg_604 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        roundKey_load_11_reg_614 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        roundKey_load_12_reg_624 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        roundKey_load_13_reg_634 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        roundKey_load_14_reg_644 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        roundKey_load_1_reg_514 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        roundKey_load_2_reg_524 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        roundKey_load_3_reg_534 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        roundKey_load_4_reg_544 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        roundKey_load_5_reg_554 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        roundKey_load_6_reg_564 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        roundKey_load_7_reg_574 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        roundKey_load_8_reg_584 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        roundKey_load_9_reg_594 <= roundKey_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        roundKey_load_reg_504 <= roundKey_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st17_fsm_16))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_0 = state_fu_322_p2;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_1 = state_1_fu_327_p2;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_10 = state_10_fu_372_p2;
    end else begin
        ap_return_10 = ap_return_10_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_11 = state_11_fu_377_p2;
    end else begin
        ap_return_11 = ap_return_11_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_12 = state_s_fu_382_p2;
    end else begin
        ap_return_12 = ap_return_12_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_13 = state_13_fu_387_p2;
    end else begin
        ap_return_13 = ap_return_13_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_14 = state_14_fu_392_p2;
    end else begin
        ap_return_14 = ap_return_14_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_15 = state_15_fu_397_p2;
    end else begin
        ap_return_15 = ap_return_15_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_2 = state_2_fu_332_p2;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_3 = state_3_fu_337_p2;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_4 = state_4_fu_342_p2;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_5 = state_5_fu_347_p2;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_6 = state_6_fu_352_p2;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_7 = state_7_fu_357_p2;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_8 = state_8_fu_362_p2;
    end else begin
        ap_return_8 = ap_return_8_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        ap_return_9 = state_9_fu_367_p2;
    end else begin
        ap_return_9 = ap_return_9_preg;
    end
end

always @ (*) begin
    if (ap_sig_168) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_178) begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_188) begin
        ap_sig_cseq_ST_st12_fsm_11 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st12_fsm_11 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_198) begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_208) begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_218) begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_228) begin
        ap_sig_cseq_ST_st16_fsm_15 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st16_fsm_15 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_254) begin
        ap_sig_cseq_ST_st17_fsm_16 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st17_fsm_16 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_34) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_88) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_98) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_108) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_118) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_128) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_138) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_148) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_158) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        roundKey_address0 = ap_const_lv64_F;
    end else if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        roundKey_address0 = ap_const_lv64_E;
    end else if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        roundKey_address0 = ap_const_lv64_D;
    end else if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        roundKey_address0 = ap_const_lv64_C;
    end else if ((1'b1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        roundKey_address0 = ap_const_lv64_B;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        roundKey_address0 = ap_const_lv64_A;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        roundKey_address0 = ap_const_lv64_9;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        roundKey_address0 = ap_const_lv64_8;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        roundKey_address0 = ap_const_lv64_7;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        roundKey_address0 = ap_const_lv64_6;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        roundKey_address0 = ap_const_lv64_5;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        roundKey_address0 = ap_const_lv64_4;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        roundKey_address0 = ap_const_lv64_3;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        roundKey_address0 = ap_const_lv64_2;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        roundKey_address0 = ap_const_lv64_1;
    end else if ((1'b1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        roundKey_address0 = ap_const_lv64_0;
    end else begin
        roundKey_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | (1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12) | (1'b1 == ap_sig_cseq_ST_st14_fsm_13) | (1'b1 == ap_sig_cseq_ST_st15_fsm_14) | (1'b1 == ap_sig_cseq_ST_st16_fsm_15))) begin
        roundKey_ce0 = 1'b1;
    end else begin
        roundKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_108 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_118 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_128 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_138 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_148 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_158 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_168 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

always @ (*) begin
    ap_sig_178 = (1'b1 == ap_CS_fsm[ap_const_lv32_A]);
end

always @ (*) begin
    ap_sig_188 = (1'b1 == ap_CS_fsm[ap_const_lv32_B]);
end

always @ (*) begin
    ap_sig_198 = (1'b1 == ap_CS_fsm[ap_const_lv32_C]);
end

always @ (*) begin
    ap_sig_208 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_218 = (1'b1 == ap_CS_fsm[ap_const_lv32_E]);
end

always @ (*) begin
    ap_sig_228 = (1'b1 == ap_CS_fsm[ap_const_lv32_F]);
end

always @ (*) begin
    ap_sig_254 = (1'b1 == ap_CS_fsm[ap_const_lv32_10]);
end

always @ (*) begin
    ap_sig_34 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_88 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_98 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign state_10_fu_372_p2 = (roundKey_load_10_reg_604 ^ state_10_read);

assign state_11_fu_377_p2 = (roundKey_load_11_reg_614 ^ state_11_read);

assign state_13_fu_387_p2 = (roundKey_load_13_reg_634 ^ state_13_read);

assign state_14_fu_392_p2 = (roundKey_load_14_reg_644 ^ state_14_read);

assign state_15_fu_397_p2 = (roundKey_q0 ^ state_15_read);

assign state_1_fu_327_p2 = (roundKey_load_1_reg_514 ^ state_1_read);

assign state_2_fu_332_p2 = (roundKey_load_2_reg_524 ^ state_2_read);

assign state_3_fu_337_p2 = (roundKey_load_3_reg_534 ^ state_3_read);

assign state_4_fu_342_p2 = (roundKey_load_4_reg_544 ^ state_4_read);

assign state_5_fu_347_p2 = (roundKey_load_5_reg_554 ^ state_5_read);

assign state_6_fu_352_p2 = (roundKey_load_6_reg_564 ^ state_6_read);

assign state_7_fu_357_p2 = (roundKey_load_7_reg_574 ^ state_7_read);

assign state_8_fu_362_p2 = (roundKey_load_8_reg_584 ^ state_8_read);

assign state_9_fu_367_p2 = (roundKey_load_9_reg_594 ^ state_9_read);

assign state_fu_322_p2 = (roundKey_load_reg_504 ^ state_0_read);

assign state_s_fu_382_p2 = (roundKey_load_12_reg_624 ^ state_1213_read);

endmodule //AES_Encrypt_AddRoundKey_1
