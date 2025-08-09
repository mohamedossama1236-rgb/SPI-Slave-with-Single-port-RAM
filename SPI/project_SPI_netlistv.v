// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug  5 06:57:50 2025
// Host        : DESKTOP-01NS6KN running 64-bit major release  (build 9200)
// Command     : write_verilog F:/Family/SynthesisKareemWassemTasks/ppproject222222222/project_SPI_netlistv.v
// Design      : SPIWrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_validd,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    SR,
    Q,
    WEA,
    \rx_data_reg[9] ,
    \counter2_reg[1] ,
    E);
  output tx_validd;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input [0:0]SR;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[9] ;
  input [1:0]\counter2_reg[1] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [7:0]addr;
  wire [1:0]\counter2_reg[1] ;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[9] ;
  wire [7:0]tx_dataa;
  wire tx_validd;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_5
       (.I0(tx_dataa[0]),
        .I1(tx_dataa[1]),
        .I2(\counter2_reg[1] [0]),
        .I3(\counter2_reg[1] [1]),
        .I4(tx_dataa[2]),
        .I5(tx_dataa[3]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_7
       (.I0(tx_dataa[4]),
        .I1(tx_dataa[5]),
        .I2(\counter2_reg[1] [0]),
        .I3(\counter2_reg[1] [1]),
        .I4(tx_dataa[6]),
        .I5(tx_dataa[7]),
        .O(MISO_reg_0));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(addr[7]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "RAMblock/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_dataa),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[9] ),
        .Q(tx_validd),
        .R(SR));
endmodule

module SPI
   (MISO_OBUF,
    SR,
    Q,
    WEA,
    \addr_reg[7] ,
    E,
    tx_valid_reg,
    mem_reg,
    CLK,
    tx_validd,
    mem_reg_0,
    mem_reg_1,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF);
  output MISO_OBUF;
  output [0:0]SR;
  output [1:0]Q;
  output [0:0]WEA;
  output [7:0]\addr_reg[7] ;
  output [0:0]E;
  output tx_valid_reg;
  output mem_reg;
  input CLK;
  input tx_validd;
  input mem_reg_0;
  input mem_reg_1;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_i_6_n_0;
  wire MOSI_IBUF;
  wire [1:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire [7:0]\addr_reg[7] ;
  wire counter1;
  wire \counter1[0]_i_1_n_0 ;
  wire \counter1[1]_i_1_n_0 ;
  wire \counter1[2]_i_1_n_0 ;
  wire \counter1[3]_i_2_n_0 ;
  wire \counter1[3]_i_3_n_0 ;
  wire \counter1_reg_n_0_[0] ;
  wire \counter1_reg_n_0_[1] ;
  wire \counter1_reg_n_0_[2] ;
  wire \counter1_reg_n_0_[3] ;
  wire counter2;
  wire \counter2[0]_i_1_n_0 ;
  wire \counter2[1]_i_1_n_0 ;
  wire \counter2[2]_i_1_n_0 ;
  wire \counter2[3]_i_2_n_0 ;
  wire \counter2_reg_n_0_[2] ;
  wire \counter2_reg_n_0_[3] ;
  wire flag_add_i_1_n_0;
  wire flag_add_i_2_n_0;
  wire flag_add_reg_n_0;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire rst_n_IBUF;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire \rx_data[9]_i_3_n_0 ;
  wire [9:8]rx_dataa;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire rx_validd;
  wire tx_valid_reg;
  wire tx_validd;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(SS_n_IBUF),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(flag_add_reg_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(MOSI_IBUF),
        .I4(SS_n_IBUF),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(flag_add_reg_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(MOSI_IBUF),
        .I4(SS_n_IBUF),
        .O(\FSM_onehot_current_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    MISO_i_1
       (.I0(MISO_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(MISO_i_4_n_0),
        .I4(tx_validd),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'hC0C0C088888888C0)) 
    MISO_i_2
       (.I0(mem_reg_0),
        .I1(MISO_i_6_n_0),
        .I2(mem_reg_1),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\counter2_reg_n_0_[2] ),
        .O(MISO_i_2_n_0));
  LUT6 #(
    .INIT(64'h00080C0000080000)) 
    MISO_i_3
       (.I0(\counter1[3]_i_3_n_0 ),
        .I1(\counter1_reg_n_0_[3] ),
        .I2(\counter1_reg_n_0_[2] ),
        .I3(\counter1_reg_n_0_[0] ),
        .I4(\counter1_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(MISO_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    MISO_i_4
       (.I0(\counter2_reg_n_0_[3] ),
        .I1(\counter2_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(MISO_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    MISO_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter2_reg_n_0_[2] ),
        .I3(\counter2_reg_n_0_[3] ),
        .I4(tx_validd),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(MISO_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr[7]_i_1 
       (.I0(rx_validd),
        .I1(rx_dataa[8]),
        .O(E));
  LUT6 #(
    .INIT(64'h3333333331330000)) 
    \counter1[0]_i_1 
       (.I0(\counter1_reg_n_0_[1] ),
        .I1(\counter1_reg_n_0_[0] ),
        .I2(\counter1_reg_n_0_[2] ),
        .I3(\counter1_reg_n_0_[3] ),
        .I4(\counter1[3]_i_3_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\counter1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EECEEEAE0000)) 
    \counter1[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\counter1[3]_i_3_n_0 ),
        .I2(\counter1_reg_n_0_[3] ),
        .I3(\counter1_reg_n_0_[2] ),
        .I4(\counter1_reg_n_0_[1] ),
        .I5(\counter1_reg_n_0_[0] ),
        .O(\counter1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78787800)) 
    \counter1[2]_i_1 
       (.I0(\counter1_reg_n_0_[1] ),
        .I1(\counter1_reg_n_0_[0] ),
        .I2(\counter1_reg_n_0_[2] ),
        .I3(\counter1[3]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\counter1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FC50FC00FCFCFC)) 
    \counter1[3]_i_1 
       (.I0(\counter1_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\counter1[3]_i_3_n_0 ),
        .I3(\counter1_reg_n_0_[3] ),
        .I4(\counter1_reg_n_0_[2] ),
        .I5(\counter1_reg_n_0_[1] ),
        .O(counter1));
  LUT6 #(
    .INIT(64'h0EE0E0A0E0C0E0E0)) 
    \counter1[3]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\counter1[3]_i_3_n_0 ),
        .I2(\counter1_reg_n_0_[3] ),
        .I3(\counter1_reg_n_0_[2] ),
        .I4(\counter1_reg_n_0_[0] ),
        .I5(\counter1_reg_n_0_[1] ),
        .O(\counter1[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1[3]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\counter1[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[0] 
       (.C(CLK),
        .CE(counter1),
        .D(\counter1[0]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[1] 
       (.C(CLK),
        .CE(counter1),
        .D(\counter1[1]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[2] 
       (.C(CLK),
        .CE(counter1),
        .D(\counter1[2]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[3] 
       (.C(CLK),
        .CE(counter1),
        .D(\counter1[3]_i_2_n_0 ),
        .Q(\counter1_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter2[0]_i_1 
       (.I0(Q[1]),
        .I1(\counter2_reg_n_0_[2] ),
        .I2(\counter2_reg_n_0_[3] ),
        .I3(Q[0]),
        .O(\counter2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \counter2[1]_i_1 
       (.I0(\counter2_reg_n_0_[2] ),
        .I1(\counter2_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\counter2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \counter2[2]_i_1 
       (.I0(\counter2_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\counter2_reg_n_0_[2] ),
        .O(\counter2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000100000000)) 
    \counter2[3]_i_1 
       (.I0(\counter2_reg_n_0_[3] ),
        .I1(\counter2_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(tx_validd),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(counter2));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter2[3]_i_2 
       (.I0(\counter2_reg_n_0_[3] ),
        .I1(\counter2_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\counter2[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[0] 
       (.C(CLK),
        .CE(counter2),
        .D(\counter2[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[1] 
       (.C(CLK),
        .CE(counter2),
        .D(\counter2[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[2] 
       (.C(CLK),
        .CE(counter2),
        .D(\counter2[2]_i_1_n_0 ),
        .Q(\counter2_reg_n_0_[2] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \counter2_reg[3] 
       (.C(CLK),
        .CE(counter2),
        .D(\counter2[3]_i_2_n_0 ),
        .Q(\counter2_reg_n_0_[3] ),
        .S(SR));
  LUT5 #(
    .INIT(32'hFCFF4C44)) 
    flag_add_i_1
       (.I0(MISO_i_4_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(flag_add_i_2_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(flag_add_reg_n_0),
        .O(flag_add_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    flag_add_i_2
       (.I0(\counter1_reg_n_0_[3] ),
        .I1(\counter1_reg_n_0_[2] ),
        .I2(\counter1_reg_n_0_[0] ),
        .I3(\counter1_reg_n_0_[1] ),
        .O(flag_add_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    flag_add_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(flag_add_i_1_n_0),
        .Q(flag_add_reg_n_0),
        .S(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_dataa[8]),
        .I1(rx_validd),
        .I2(rx_dataa[9]),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_2
       (.I0(rx_dataa[9]),
        .I1(rx_validd),
        .I2(rx_dataa[8]),
        .O(WEA));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[1]_i_1 
       (.I0(\addr_reg[7] [0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[2]_i_1 
       (.I0(\addr_reg[7] [1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[3]_i_1 
       (.I0(\addr_reg[7] [2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[4]_i_1 
       (.I0(\addr_reg[7] [3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[5]_i_1 
       (.I0(\addr_reg[7] [4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[6]_i_1 
       (.I0(\addr_reg[7] [5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[7]_i_1 
       (.I0(\addr_reg[7] [6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[8]_i_1 
       (.I0(\addr_reg[7] [7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1115)) 
    \rx_data[9]_i_1 
       (.I0(\rx_data[9]_i_3_n_0 ),
        .I1(\counter1_reg_n_0_[3] ),
        .I2(\counter1_reg_n_0_[2] ),
        .I3(\counter1_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[9]_i_2 
       (.I0(rx_dataa[8]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\rx_data[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rx_data[9]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\rx_data[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(\addr_reg[7] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(\addr_reg[7] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(\addr_reg[7] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(\addr_reg[7] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(\addr_reg[7] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(\addr_reg[7] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(\addr_reg[7] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(\addr_reg[7] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_dataa[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[9]_i_2_n_0 ),
        .Q(rx_dataa[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF4FFF4F0)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(rx_valid_i_3_n_0),
        .I3(\rx_data[9]_i_1_n_0 ),
        .I4(rx_validd),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    rx_valid_i_2
       (.I0(\counter1_reg_n_0_[3] ),
        .I1(\counter1_reg_n_0_[2] ),
        .I2(\counter1_reg_n_0_[0] ),
        .I3(\counter1_reg_n_0_[1] ),
        .O(rx_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    rx_valid_i_3
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\counter1_reg_n_0_[1] ),
        .I3(\counter1_reg_n_0_[0] ),
        .I4(\counter1_reg_n_0_[2] ),
        .I5(\counter1_reg_n_0_[3] ),
        .O(rx_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_validd),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_dataa[9]),
        .I1(rx_dataa[8]),
        .I2(rx_validd),
        .I3(tx_validd),
        .O(tx_valid_reg));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPIWrapper
   (MOSI,
    SS_n,
    clk,
    rst_n,
    MISO);
  input MOSI;
  input SS_n;
  input clk;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAMblock_n_1;
  wire RAMblock_n_2;
  wire SPIbLock_n_1;
  wire SPIbLock_n_13;
  wire SPIbLock_n_14;
  wire SPIbLock_n_15;
  wire SPIbLock_n_2;
  wire SPIbLock_n_3;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_dataa;
  wire tx_validd;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM RAMblock
       (.CLK(clk_IBUF_BUFG),
        .E(SPIbLock_n_13),
        .MISO_reg(RAMblock_n_1),
        .MISO_reg_0(RAMblock_n_2),
        .Q(rx_dataa),
        .SR(SPIbLock_n_1),
        .WEA(mem),
        .\counter2_reg[1] ({SPIbLock_n_2,SPIbLock_n_3}),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SPIbLock_n_15),
        .\rx_data_reg[9] (SPIbLock_n_14),
        .tx_validd(tx_validd));
  SPI SPIbLock
       (.CLK(clk_IBUF_BUFG),
        .E(SPIbLock_n_13),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({SPIbLock_n_2,SPIbLock_n_3}),
        .SR(SPIbLock_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .\addr_reg[7] (rx_dataa),
        .mem_reg(SPIbLock_n_15),
        .mem_reg_0(RAMblock_n_1),
        .mem_reg_1(RAMblock_n_2),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid_reg(SPIbLock_n_14),
        .tx_validd(tx_validd));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
