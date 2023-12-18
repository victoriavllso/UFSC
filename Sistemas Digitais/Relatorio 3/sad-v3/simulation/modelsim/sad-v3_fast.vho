-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/07/2023 17:33:31"

-- 
-- Device: Altera EP2C5AF256A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topo IS
    PORT (
	ck : IN std_logic;
	iniciar : IN std_logic;
	reset : IN std_logic;
	mem_A : IN std_logic_vector(31 DOWNTO 0);
	mem_B : IN std_logic_vector(31 DOWNTO 0);
	pronto : OUT std_logic;
	ler : OUT std_logic;
	end_mem : OUT std_logic_vector(3 DOWNTO 0);
	SAD : OUT std_logic_vector(13 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- pronto	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ler	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- end_mem[0]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- end_mem[1]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- end_mem[2]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- end_mem[3]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[0]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[1]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[6]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[8]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[9]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[10]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[11]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[12]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAD[13]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iniciar	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[16]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[16]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[23]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[23]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[22]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[22]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[21]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[21]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[20]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[20]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[19]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[19]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[18]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[18]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[17]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[17]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[24]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[24]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[31]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[31]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[30]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[30]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[29]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[29]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[28]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[28]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[27]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[27]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[26]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[26]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[25]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[25]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[0]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[7]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[6]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[5]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[5]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[3]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[8]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[15]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[15]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[14]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[14]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[13]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[13]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[12]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[12]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[11]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[11]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[10]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[10]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_B[9]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_A[9]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mem_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mem_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_ler : std_logic;
SIGNAL ww_end_mem : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SAD : std_logic_vector(13 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|sub2|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~0_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~1\ : std_logic;
SIGNAL \datapath|sub0|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~2_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~3\ : std_logic;
SIGNAL \datapath|sub0|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~6_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~5\ : std_logic;
SIGNAL \datapath|sub1|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~6_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[2]~4_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~9_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~7\ : std_logic;
SIGNAL \datapath|sub0|Add1~9_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~9\ : std_logic;
SIGNAL \datapath|sub1|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~12_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[4]~8_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[4]~8_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~15_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~11\ : std_logic;
SIGNAL \datapath|sub0|Add1~16\ : std_logic;
SIGNAL \datapath|sub1|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~13\ : std_logic;
SIGNAL \datapath|sub3|Add1~19\ : std_logic;
SIGNAL \datapath|somador_1|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~13\ : std_logic;
SIGNAL \datapath|sub0|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~19\ : std_logic;
SIGNAL \datapath|sub3|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~21_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~15\ : std_logic;
SIGNAL \datapath|sub0|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~21_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[7]~14_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~16_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[8]~17\ : std_logic;
SIGNAL \datapath|somador_2|S[9]~18_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~2_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~2_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~8_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~8_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~11_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~11_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~14_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~23_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~23_combout\ : std_logic;
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \iniciar~combout\ : std_logic;
SIGNAL \controle|EstadoAtual~12_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \controle|EstadoAtual.S1~regout\ : std_logic;
SIGNAL \datapath|mux_i|output[0]~0_combout\ : std_logic;
SIGNAL \datapath|somador_i|Add0~0_combout\ : std_logic;
SIGNAL \datapath|somador_i|Add0~1_combout\ : std_logic;
SIGNAL \datapath|mux_i|output[4]~1_combout\ : std_logic;
SIGNAL \datapath|somador_i|Add0~2_combout\ : std_logic;
SIGNAL \datapath|mux_i|output[4]~2_combout\ : std_logic;
SIGNAL \controle|EstadoAtual~10_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S3~regout\ : std_logic;
SIGNAL \controle|EstadoAtual.S4~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S4~regout\ : std_logic;
SIGNAL \controle|csoma~combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S2~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S2~regout\ : std_logic;
SIGNAL \controle|EstadoAtual~11_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S5~regout\ : std_logic;
SIGNAL \controle|Selector0~0_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S0~regout\ : std_logic;
SIGNAL \datapath|sub1|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~2_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[0]~0_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[0]~0_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[0]~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~1\ : std_logic;
SIGNAL \datapath|sub1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~1\ : std_logic;
SIGNAL \datapath|sub1|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~5_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[0]~1\ : std_logic;
SIGNAL \datapath|somador_0|S[1]~2_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[0]~1\ : std_logic;
SIGNAL \datapath|somador_2|S[1]~2_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[0]~15\ : std_logic;
SIGNAL \datapath|reg_soma|q[1]~16_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~1\ : std_logic;
SIGNAL \datapath|sub3|Add0~3\ : std_logic;
SIGNAL \datapath|sub3|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~1\ : std_logic;
SIGNAL \datapath|sub3|Add1~4\ : std_logic;
SIGNAL \datapath|sub3|Add1~6_combout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~8_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~2_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~1\ : std_logic;
SIGNAL \datapath|somador_1|Add0~3\ : std_logic;
SIGNAL \datapath|somador_1|Add0~4_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[1]~3\ : std_logic;
SIGNAL \datapath|somador_2|S[2]~4_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[1]~17\ : std_logic;
SIGNAL \datapath|reg_soma|q[2]~18_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~4\ : std_logic;
SIGNAL \datapath|sub1|Add1~7\ : std_logic;
SIGNAL \datapath|sub1|Add1~9_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~11_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~1\ : std_logic;
SIGNAL \datapath|sub0|Add1~4\ : std_logic;
SIGNAL \datapath|sub0|Add1~6_combout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~8_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[1]~3\ : std_logic;
SIGNAL \datapath|somador_0|S[2]~5\ : std_logic;
SIGNAL \datapath|somador_0|S[3]~6_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[2]~5\ : std_logic;
SIGNAL \datapath|somador_2|S[3]~6_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[2]~19\ : std_logic;
SIGNAL \datapath|reg_soma|q[3]~20_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[3]~21\ : std_logic;
SIGNAL \datapath|reg_soma|q[4]~22_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~7\ : std_logic;
SIGNAL \datapath|sub0|Add1~10\ : std_logic;
SIGNAL \datapath|sub0|Add1~13\ : std_logic;
SIGNAL \datapath|sub0|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~14_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[3]~7\ : std_logic;
SIGNAL \datapath|somador_0|S[4]~9\ : std_logic;
SIGNAL \datapath|somador_0|S[5]~10_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~1\ : std_logic;
SIGNAL \datapath|sub2|Add0~3\ : std_logic;
SIGNAL \datapath|sub2|Add0~5\ : std_logic;
SIGNAL \datapath|sub2|Add0~7\ : std_logic;
SIGNAL \datapath|sub2|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~14_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~1\ : std_logic;
SIGNAL \datapath|sub2|Add1~4\ : std_logic;
SIGNAL \datapath|sub2|Add1~7\ : std_logic;
SIGNAL \datapath|sub2|Add1~9_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~11_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~5\ : std_logic;
SIGNAL \datapath|somador_1|Add0~7\ : std_logic;
SIGNAL \datapath|somador_1|Add0~8_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[3]~7\ : std_logic;
SIGNAL \datapath|somador_2|S[4]~9\ : std_logic;
SIGNAL \datapath|somador_2|S[5]~10_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[4]~23\ : std_logic;
SIGNAL \datapath|reg_soma|q[5]~24_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~3\ : std_logic;
SIGNAL \datapath|sub1|Add0~5\ : std_logic;
SIGNAL \datapath|sub1|Add0~7\ : std_logic;
SIGNAL \datapath|sub1|Add0~9\ : std_logic;
SIGNAL \datapath|sub1|Add0~11\ : std_logic;
SIGNAL \datapath|sub1|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~10\ : std_logic;
SIGNAL \datapath|sub1|Add1~13\ : std_logic;
SIGNAL \datapath|sub1|Add1~16\ : std_logic;
SIGNAL \datapath|sub1|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~20_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[5]~11\ : std_logic;
SIGNAL \datapath|somador_0|S[6]~12_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[5]~11\ : std_logic;
SIGNAL \datapath|somador_2|S[6]~12_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[5]~25\ : std_logic;
SIGNAL \datapath|reg_soma|q[6]~26_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[6]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~10\ : std_logic;
SIGNAL \datapath|sub2|Add1~13\ : std_logic;
SIGNAL \datapath|sub2|Add1~16\ : std_logic;
SIGNAL \datapath|sub2|Add1~19\ : std_logic;
SIGNAL \datapath|sub2|Add1~21_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~9\ : std_logic;
SIGNAL \datapath|sub2|Add0~11\ : std_logic;
SIGNAL \datapath|sub2|Add0~13\ : std_logic;
SIGNAL \datapath|sub2|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~23_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~7\ : std_logic;
SIGNAL \datapath|sub3|Add1~10\ : std_logic;
SIGNAL \datapath|sub3|Add1~13\ : std_logic;
SIGNAL \datapath|sub3|Add1~16\ : std_logic;
SIGNAL \datapath|sub3|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~5\ : std_logic;
SIGNAL \datapath|sub3|Add0~7\ : std_logic;
SIGNAL \datapath|sub3|Add0~9\ : std_logic;
SIGNAL \datapath|sub3|Add0~11\ : std_logic;
SIGNAL \datapath|sub3|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~17_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~9\ : std_logic;
SIGNAL \datapath|somador_1|Add0~11\ : std_logic;
SIGNAL \datapath|somador_1|Add0~13\ : std_logic;
SIGNAL \datapath|somador_1|Add0~14_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[6]~13\ : std_logic;
SIGNAL \datapath|somador_2|S[7]~14_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[6]~27\ : std_logic;
SIGNAL \datapath|reg_soma|q[7]~28_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[7]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~19\ : std_logic;
SIGNAL \datapath|sub1|Add1~21_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~13\ : std_logic;
SIGNAL \datapath|sub1|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~23_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[6]~13\ : std_logic;
SIGNAL \datapath|somador_0|S[7]~15\ : std_logic;
SIGNAL \datapath|somador_0|S[8]~16_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[7]~15\ : std_logic;
SIGNAL \datapath|somador_2|S[8]~16_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[7]~29\ : std_logic;
SIGNAL \datapath|reg_soma|q[8]~30_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[8]~31\ : std_logic;
SIGNAL \datapath|reg_soma|q[9]~32_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[9]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[9]~33\ : std_logic;
SIGNAL \datapath|reg_soma|q[10]~34_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[10]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[10]~35\ : std_logic;
SIGNAL \datapath|reg_soma|q[11]~36_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[11]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[11]~37\ : std_logic;
SIGNAL \datapath|reg_soma|q[12]~38_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[12]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[12]~39\ : std_logic;
SIGNAL \datapath|reg_soma|q[13]~40_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[13]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_i|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \datapath|reg_pA0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_soma|q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \mem_B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem_A~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|reg_pA1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pA2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pB3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_SAD|q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \datapath|reg_pB1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pB2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pA3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pB0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controle|ALT_INV_EstadoAtual.S0~regout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_iniciar <= iniciar;
ww_reset <= reset;
ww_mem_A <= mem_A;
ww_mem_B <= mem_B;
pronto <= ww_pronto;
ler <= ww_ler;
end_mem <= ww_end_mem;
SAD <= ww_SAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);
\controle|ALT_INV_EstadoAtual.S0~regout\ <= NOT \controle|EstadoAtual.S0~regout\;

-- Location: LCCOMB_X13_Y12_N2
\datapath|sub2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~0_combout\ = (\datapath|reg_pA2|q\(0) & ((GND) # (!\datapath|reg_pB2|q\(0)))) # (!\datapath|reg_pA2|q\(0) & (\datapath|reg_pB2|q\(0) $ (GND)))
-- \datapath|sub2|Add0~1\ = CARRY((\datapath|reg_pA2|q\(0)) # (!\datapath|reg_pB2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(0),
	datab => \datapath|reg_pB2|q\(0),
	datad => VCC,
	combout => \datapath|sub2|Add0~0_combout\,
	cout => \datapath|sub2|Add0~1\);

-- Location: LCCOMB_X15_Y13_N4
\datapath|sub3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~0_combout\ = (\datapath|reg_pA3|q\(0) & ((GND) # (!\datapath|reg_pB3|q\(0)))) # (!\datapath|reg_pA3|q\(0) & (\datapath|reg_pB3|q\(0) $ (GND)))
-- \datapath|sub3|Add0~1\ = CARRY((\datapath|reg_pA3|q\(0)) # (!\datapath|reg_pB3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(0),
	datab => \datapath|reg_pB3|q\(0),
	datad => VCC,
	combout => \datapath|sub3|Add0~0_combout\,
	cout => \datapath|sub3|Add0~1\);

-- Location: LCCOMB_X14_Y13_N16
\datapath|sub3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~0_combout\ = (\datapath|reg_pB3|q\(0) & ((GND) # (!\datapath|reg_pA3|q\(0)))) # (!\datapath|reg_pB3|q\(0) & (\datapath|reg_pA3|q\(0) $ (GND)))
-- \datapath|sub3|Add1~1\ = CARRY((\datapath|reg_pB3|q\(0)) # (!\datapath|reg_pA3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(0),
	datab => \datapath|reg_pA3|q\(0),
	datad => VCC,
	combout => \datapath|sub3|Add1~0_combout\,
	cout => \datapath|sub3|Add1~1\);

-- Location: LCCOMB_X15_Y12_N2
\datapath|somador_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~0_combout\ = (\datapath|sub3|Add1~2_combout\ & (\datapath|sub2|Add1~2_combout\ $ (VCC))) # (!\datapath|sub3|Add1~2_combout\ & (\datapath|sub2|Add1~2_combout\ & VCC))
-- \datapath|somador_1|Add0~1\ = CARRY((\datapath|sub3|Add1~2_combout\ & \datapath|sub2|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~2_combout\,
	datab => \datapath|sub2|Add1~2_combout\,
	datad => VCC,
	combout => \datapath|somador_1|Add0~0_combout\,
	cout => \datapath|somador_1|Add0~1\);

-- Location: LCCOMB_X20_Y12_N2
\datapath|sub0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~0_combout\ = (\datapath|reg_pA0|q\(0) & ((GND) # (!\datapath|reg_pB0|q\(0)))) # (!\datapath|reg_pA0|q\(0) & (\datapath|reg_pB0|q\(0) $ (GND)))
-- \datapath|sub0|Add0~1\ = CARRY((\datapath|reg_pA0|q\(0)) # (!\datapath|reg_pB0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(0),
	datab => \datapath|reg_pB0|q\(0),
	datad => VCC,
	combout => \datapath|sub0|Add0~0_combout\,
	cout => \datapath|sub0|Add0~1\);

-- Location: LCCOMB_X21_Y12_N0
\datapath|sub0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~0_combout\ = (\datapath|reg_pA0|q\(0) & (\datapath|reg_pB0|q\(0) $ (VCC))) # (!\datapath|reg_pA0|q\(0) & ((\datapath|reg_pB0|q\(0)) # (GND)))
-- \datapath|sub0|Add1~1\ = CARRY((\datapath|reg_pB0|q\(0)) # (!\datapath|reg_pA0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(0),
	datab => \datapath|reg_pB0|q\(0),
	datad => VCC,
	combout => \datapath|sub0|Add1~0_combout\,
	cout => \datapath|sub0|Add1~1\);

-- Location: LCCOMB_X19_Y13_N12
\datapath|sub1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~0_combout\ = (\datapath|reg_pB1|q\(0) & (\datapath|reg_pA1|q\(0) $ (VCC))) # (!\datapath|reg_pB1|q\(0) & ((\datapath|reg_pA1|q\(0)) # (GND)))
-- \datapath|sub1|Add0~1\ = CARRY((\datapath|reg_pA1|q\(0)) # (!\datapath|reg_pB1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(0),
	datab => \datapath|reg_pA1|q\(0),
	datad => VCC,
	combout => \datapath|sub1|Add0~0_combout\,
	cout => \datapath|sub1|Add0~1\);

-- Location: LCCOMB_X13_Y12_N4
\datapath|sub2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~2_combout\ = (\datapath|reg_pB2|q\(1) & ((\datapath|reg_pA2|q\(1) & (!\datapath|sub2|Add0~1\)) # (!\datapath|reg_pA2|q\(1) & ((\datapath|sub2|Add0~1\) # (GND))))) # (!\datapath|reg_pB2|q\(1) & ((\datapath|reg_pA2|q\(1) & 
-- (\datapath|sub2|Add0~1\ & VCC)) # (!\datapath|reg_pA2|q\(1) & (!\datapath|sub2|Add0~1\))))
-- \datapath|sub2|Add0~3\ = CARRY((\datapath|reg_pB2|q\(1) & ((!\datapath|sub2|Add0~1\) # (!\datapath|reg_pA2|q\(1)))) # (!\datapath|reg_pB2|q\(1) & (!\datapath|reg_pA2|q\(1) & !\datapath|sub2|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(1),
	datab => \datapath|reg_pA2|q\(1),
	datad => VCC,
	cin => \datapath|sub2|Add0~1\,
	combout => \datapath|sub2|Add0~2_combout\,
	cout => \datapath|sub2|Add0~3\);

-- Location: LCCOMB_X14_Y12_N2
\datapath|sub2|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~3_combout\ = (\datapath|reg_pA2|q\(1) & ((\datapath|reg_pB2|q\(1) & (!\datapath|sub2|Add1~1\)) # (!\datapath|reg_pB2|q\(1) & ((\datapath|sub2|Add1~1\) # (GND))))) # (!\datapath|reg_pA2|q\(1) & ((\datapath|reg_pB2|q\(1) & 
-- (\datapath|sub2|Add1~1\ & VCC)) # (!\datapath|reg_pB2|q\(1) & (!\datapath|sub2|Add1~1\))))
-- \datapath|sub2|Add1~4\ = CARRY((\datapath|reg_pA2|q\(1) & ((!\datapath|sub2|Add1~1\) # (!\datapath|reg_pB2|q\(1)))) # (!\datapath|reg_pA2|q\(1) & (!\datapath|reg_pB2|q\(1) & !\datapath|sub2|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(1),
	datab => \datapath|reg_pB2|q\(1),
	datad => VCC,
	cin => \datapath|sub2|Add1~1\,
	combout => \datapath|sub2|Add1~3_combout\,
	cout => \datapath|sub2|Add1~4\);

-- Location: LCCOMB_X15_Y13_N6
\datapath|sub3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~2_combout\ = (\datapath|reg_pA3|q\(1) & ((\datapath|reg_pB3|q\(1) & (!\datapath|sub3|Add0~1\)) # (!\datapath|reg_pB3|q\(1) & (\datapath|sub3|Add0~1\ & VCC)))) # (!\datapath|reg_pA3|q\(1) & ((\datapath|reg_pB3|q\(1) & 
-- ((\datapath|sub3|Add0~1\) # (GND))) # (!\datapath|reg_pB3|q\(1) & (!\datapath|sub3|Add0~1\))))
-- \datapath|sub3|Add0~3\ = CARRY((\datapath|reg_pA3|q\(1) & (\datapath|reg_pB3|q\(1) & !\datapath|sub3|Add0~1\)) # (!\datapath|reg_pA3|q\(1) & ((\datapath|reg_pB3|q\(1)) # (!\datapath|sub3|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(1),
	datab => \datapath|reg_pB3|q\(1),
	datad => VCC,
	cin => \datapath|sub3|Add0~1\,
	combout => \datapath|sub3|Add0~2_combout\,
	cout => \datapath|sub3|Add0~3\);

-- Location: LCCOMB_X15_Y12_N4
\datapath|somador_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~2_combout\ = (\datapath|sub2|Add1~5_combout\ & ((\datapath|sub3|Add1~5_combout\ & (\datapath|somador_1|Add0~1\ & VCC)) # (!\datapath|sub3|Add1~5_combout\ & (!\datapath|somador_1|Add0~1\)))) # (!\datapath|sub2|Add1~5_combout\ & 
-- ((\datapath|sub3|Add1~5_combout\ & (!\datapath|somador_1|Add0~1\)) # (!\datapath|sub3|Add1~5_combout\ & ((\datapath|somador_1|Add0~1\) # (GND)))))
-- \datapath|somador_1|Add0~3\ = CARRY((\datapath|sub2|Add1~5_combout\ & (!\datapath|sub3|Add1~5_combout\ & !\datapath|somador_1|Add0~1\)) # (!\datapath|sub2|Add1~5_combout\ & ((!\datapath|somador_1|Add0~1\) # (!\datapath|sub3|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~5_combout\,
	datab => \datapath|sub3|Add1~5_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~1\,
	combout => \datapath|somador_1|Add0~2_combout\,
	cout => \datapath|somador_1|Add0~3\);

-- Location: LCCOMB_X20_Y12_N4
\datapath|sub0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~2_combout\ = (\datapath|reg_pB0|q\(1) & ((\datapath|reg_pA0|q\(1) & (!\datapath|sub0|Add0~1\)) # (!\datapath|reg_pA0|q\(1) & ((\datapath|sub0|Add0~1\) # (GND))))) # (!\datapath|reg_pB0|q\(1) & ((\datapath|reg_pA0|q\(1) & 
-- (\datapath|sub0|Add0~1\ & VCC)) # (!\datapath|reg_pA0|q\(1) & (!\datapath|sub0|Add0~1\))))
-- \datapath|sub0|Add0~3\ = CARRY((\datapath|reg_pB0|q\(1) & ((!\datapath|sub0|Add0~1\) # (!\datapath|reg_pA0|q\(1)))) # (!\datapath|reg_pB0|q\(1) & (!\datapath|reg_pA0|q\(1) & !\datapath|sub0|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(1),
	datab => \datapath|reg_pA0|q\(1),
	datad => VCC,
	cin => \datapath|sub0|Add0~1\,
	combout => \datapath|sub0|Add0~2_combout\,
	cout => \datapath|sub0|Add0~3\);

-- Location: LCCOMB_X21_Y12_N2
\datapath|sub0|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~3_combout\ = (\datapath|reg_pA0|q\(1) & ((\datapath|reg_pB0|q\(1) & (!\datapath|sub0|Add1~1\)) # (!\datapath|reg_pB0|q\(1) & ((\datapath|sub0|Add1~1\) # (GND))))) # (!\datapath|reg_pA0|q\(1) & ((\datapath|reg_pB0|q\(1) & 
-- (\datapath|sub0|Add1~1\ & VCC)) # (!\datapath|reg_pB0|q\(1) & (!\datapath|sub0|Add1~1\))))
-- \datapath|sub0|Add1~4\ = CARRY((\datapath|reg_pA0|q\(1) & ((!\datapath|sub0|Add1~1\) # (!\datapath|reg_pB0|q\(1)))) # (!\datapath|reg_pA0|q\(1) & (!\datapath|reg_pB0|q\(1) & !\datapath|sub0|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(1),
	datab => \datapath|reg_pB0|q\(1),
	datad => VCC,
	cin => \datapath|sub0|Add1~1\,
	combout => \datapath|sub0|Add1~3_combout\,
	cout => \datapath|sub0|Add1~4\);

-- Location: LCCOMB_X13_Y12_N6
\datapath|sub2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~4_combout\ = ((\datapath|reg_pB2|q\(2) $ (\datapath|reg_pA2|q\(2) $ (\datapath|sub2|Add0~3\)))) # (GND)
-- \datapath|sub2|Add0~5\ = CARRY((\datapath|reg_pB2|q\(2) & (\datapath|reg_pA2|q\(2) & !\datapath|sub2|Add0~3\)) # (!\datapath|reg_pB2|q\(2) & ((\datapath|reg_pA2|q\(2)) # (!\datapath|sub2|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(2),
	datab => \datapath|reg_pA2|q\(2),
	datad => VCC,
	cin => \datapath|sub2|Add0~3\,
	combout => \datapath|sub2|Add0~4_combout\,
	cout => \datapath|sub2|Add0~5\);

-- Location: LCCOMB_X14_Y12_N4
\datapath|sub2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~6_combout\ = ((\datapath|reg_pA2|q\(2) $ (\datapath|reg_pB2|q\(2) $ (\datapath|sub2|Add1~4\)))) # (GND)
-- \datapath|sub2|Add1~7\ = CARRY((\datapath|reg_pA2|q\(2) & (\datapath|reg_pB2|q\(2) & !\datapath|sub2|Add1~4\)) # (!\datapath|reg_pA2|q\(2) & ((\datapath|reg_pB2|q\(2)) # (!\datapath|sub2|Add1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(2),
	datab => \datapath|reg_pB2|q\(2),
	datad => VCC,
	cin => \datapath|sub2|Add1~4\,
	combout => \datapath|sub2|Add1~6_combout\,
	cout => \datapath|sub2|Add1~7\);

-- Location: LCCOMB_X20_Y12_N6
\datapath|sub0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~4_combout\ = ((\datapath|reg_pB0|q\(2) $ (\datapath|reg_pA0|q\(2) $ (\datapath|sub0|Add0~3\)))) # (GND)
-- \datapath|sub0|Add0~5\ = CARRY((\datapath|reg_pB0|q\(2) & (\datapath|reg_pA0|q\(2) & !\datapath|sub0|Add0~3\)) # (!\datapath|reg_pB0|q\(2) & ((\datapath|reg_pA0|q\(2)) # (!\datapath|sub0|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(2),
	datab => \datapath|reg_pA0|q\(2),
	datad => VCC,
	cin => \datapath|sub0|Add0~3\,
	combout => \datapath|sub0|Add0~4_combout\,
	cout => \datapath|sub0|Add0~5\);

-- Location: LCCOMB_X19_Y13_N16
\datapath|sub1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~4_combout\ = ((\datapath|reg_pA1|q\(2) $ (\datapath|reg_pB1|q\(2) $ (\datapath|sub1|Add0~3\)))) # (GND)
-- \datapath|sub1|Add0~5\ = CARRY((\datapath|reg_pA1|q\(2) & ((!\datapath|sub1|Add0~3\) # (!\datapath|reg_pB1|q\(2)))) # (!\datapath|reg_pA1|q\(2) & (!\datapath|reg_pB1|q\(2) & !\datapath|sub1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(2),
	datab => \datapath|reg_pB1|q\(2),
	datad => VCC,
	cin => \datapath|sub1|Add0~3\,
	combout => \datapath|sub1|Add0~4_combout\,
	cout => \datapath|sub1|Add0~5\);

-- Location: LCCOMB_X20_Y13_N20
\datapath|sub1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~6_combout\ = ((\datapath|reg_pB1|q\(2) $ (\datapath|reg_pA1|q\(2) $ (\datapath|sub1|Add1~4\)))) # (GND)
-- \datapath|sub1|Add1~7\ = CARRY((\datapath|reg_pB1|q\(2) & ((!\datapath|sub1|Add1~4\) # (!\datapath|reg_pA1|q\(2)))) # (!\datapath|reg_pB1|q\(2) & (!\datapath|reg_pA1|q\(2) & !\datapath|sub1|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(2),
	datab => \datapath|reg_pA1|q\(2),
	datad => VCC,
	cin => \datapath|sub1|Add1~4\,
	combout => \datapath|sub1|Add1~6_combout\,
	cout => \datapath|sub1|Add1~7\);

-- Location: LCCOMB_X19_Y12_N16
\datapath|somador_0|S[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[2]~4_combout\ = ((\datapath|sub1|Add1~8_combout\ $ (\datapath|sub0|Add1~8_combout\ $ (!\datapath|somador_0|S[1]~3\)))) # (GND)
-- \datapath|somador_0|S[2]~5\ = CARRY((\datapath|sub1|Add1~8_combout\ & ((\datapath|sub0|Add1~8_combout\) # (!\datapath|somador_0|S[1]~3\))) # (!\datapath|sub1|Add1~8_combout\ & (\datapath|sub0|Add1~8_combout\ & !\datapath|somador_0|S[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add1~8_combout\,
	datab => \datapath|sub0|Add1~8_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[1]~3\,
	combout => \datapath|somador_0|S[2]~4_combout\,
	cout => \datapath|somador_0|S[2]~5\);

-- Location: LCCOMB_X13_Y12_N8
\datapath|sub2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~6_combout\ = (\datapath|reg_pA2|q\(3) & ((\datapath|reg_pB2|q\(3) & (!\datapath|sub2|Add0~5\)) # (!\datapath|reg_pB2|q\(3) & (\datapath|sub2|Add0~5\ & VCC)))) # (!\datapath|reg_pA2|q\(3) & ((\datapath|reg_pB2|q\(3) & 
-- ((\datapath|sub2|Add0~5\) # (GND))) # (!\datapath|reg_pB2|q\(3) & (!\datapath|sub2|Add0~5\))))
-- \datapath|sub2|Add0~7\ = CARRY((\datapath|reg_pA2|q\(3) & (\datapath|reg_pB2|q\(3) & !\datapath|sub2|Add0~5\)) # (!\datapath|reg_pA2|q\(3) & ((\datapath|reg_pB2|q\(3)) # (!\datapath|sub2|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(3),
	datab => \datapath|reg_pB2|q\(3),
	datad => VCC,
	cin => \datapath|sub2|Add0~5\,
	combout => \datapath|sub2|Add0~6_combout\,
	cout => \datapath|sub2|Add0~7\);

-- Location: LCCOMB_X15_Y13_N10
\datapath|sub3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~6_combout\ = (\datapath|reg_pA3|q\(3) & ((\datapath|reg_pB3|q\(3) & (!\datapath|sub3|Add0~5\)) # (!\datapath|reg_pB3|q\(3) & (\datapath|sub3|Add0~5\ & VCC)))) # (!\datapath|reg_pA3|q\(3) & ((\datapath|reg_pB3|q\(3) & 
-- ((\datapath|sub3|Add0~5\) # (GND))) # (!\datapath|reg_pB3|q\(3) & (!\datapath|sub3|Add0~5\))))
-- \datapath|sub3|Add0~7\ = CARRY((\datapath|reg_pA3|q\(3) & (\datapath|reg_pB3|q\(3) & !\datapath|sub3|Add0~5\)) # (!\datapath|reg_pA3|q\(3) & ((\datapath|reg_pB3|q\(3)) # (!\datapath|sub3|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(3),
	datab => \datapath|reg_pB3|q\(3),
	datad => VCC,
	cin => \datapath|sub3|Add0~5\,
	combout => \datapath|sub3|Add0~6_combout\,
	cout => \datapath|sub3|Add0~7\);

-- Location: LCCOMB_X14_Y13_N22
\datapath|sub3|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~9_combout\ = (\datapath|reg_pA3|q\(3) & ((\datapath|reg_pB3|q\(3) & (!\datapath|sub3|Add1~7\)) # (!\datapath|reg_pB3|q\(3) & ((\datapath|sub3|Add1~7\) # (GND))))) # (!\datapath|reg_pA3|q\(3) & ((\datapath|reg_pB3|q\(3) & 
-- (\datapath|sub3|Add1~7\ & VCC)) # (!\datapath|reg_pB3|q\(3) & (!\datapath|sub3|Add1~7\))))
-- \datapath|sub3|Add1~10\ = CARRY((\datapath|reg_pA3|q\(3) & ((!\datapath|sub3|Add1~7\) # (!\datapath|reg_pB3|q\(3)))) # (!\datapath|reg_pA3|q\(3) & (!\datapath|reg_pB3|q\(3) & !\datapath|sub3|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(3),
	datab => \datapath|reg_pB3|q\(3),
	datad => VCC,
	cin => \datapath|sub3|Add1~7\,
	combout => \datapath|sub3|Add1~9_combout\,
	cout => \datapath|sub3|Add1~10\);

-- Location: LCCOMB_X15_Y12_N8
\datapath|somador_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~6_combout\ = (\datapath|sub3|Add1~11_combout\ & ((\datapath|sub2|Add1~11_combout\ & (\datapath|somador_1|Add0~5\ & VCC)) # (!\datapath|sub2|Add1~11_combout\ & (!\datapath|somador_1|Add0~5\)))) # (!\datapath|sub3|Add1~11_combout\ & 
-- ((\datapath|sub2|Add1~11_combout\ & (!\datapath|somador_1|Add0~5\)) # (!\datapath|sub2|Add1~11_combout\ & ((\datapath|somador_1|Add0~5\) # (GND)))))
-- \datapath|somador_1|Add0~7\ = CARRY((\datapath|sub3|Add1~11_combout\ & (!\datapath|sub2|Add1~11_combout\ & !\datapath|somador_1|Add0~5\)) # (!\datapath|sub3|Add1~11_combout\ & ((!\datapath|somador_1|Add0~5\) # (!\datapath|sub2|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~11_combout\,
	datab => \datapath|sub2|Add1~11_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~5\,
	combout => \datapath|somador_1|Add0~6_combout\,
	cout => \datapath|somador_1|Add0~7\);

-- Location: LCCOMB_X20_Y12_N8
\datapath|sub0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~6_combout\ = (\datapath|reg_pA0|q\(3) & ((\datapath|reg_pB0|q\(3) & (!\datapath|sub0|Add0~5\)) # (!\datapath|reg_pB0|q\(3) & (\datapath|sub0|Add0~5\ & VCC)))) # (!\datapath|reg_pA0|q\(3) & ((\datapath|reg_pB0|q\(3) & 
-- ((\datapath|sub0|Add0~5\) # (GND))) # (!\datapath|reg_pB0|q\(3) & (!\datapath|sub0|Add0~5\))))
-- \datapath|sub0|Add0~7\ = CARRY((\datapath|reg_pA0|q\(3) & (\datapath|reg_pB0|q\(3) & !\datapath|sub0|Add0~5\)) # (!\datapath|reg_pA0|q\(3) & ((\datapath|reg_pB0|q\(3)) # (!\datapath|sub0|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(3),
	datab => \datapath|reg_pB0|q\(3),
	datad => VCC,
	cin => \datapath|sub0|Add0~5\,
	combout => \datapath|sub0|Add0~6_combout\,
	cout => \datapath|sub0|Add0~7\);

-- Location: LCCOMB_X21_Y12_N6
\datapath|sub0|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~9_combout\ = (\datapath|reg_pB0|q\(3) & ((\datapath|reg_pA0|q\(3) & (!\datapath|sub0|Add1~7\)) # (!\datapath|reg_pA0|q\(3) & (\datapath|sub0|Add1~7\ & VCC)))) # (!\datapath|reg_pB0|q\(3) & ((\datapath|reg_pA0|q\(3) & 
-- ((\datapath|sub0|Add1~7\) # (GND))) # (!\datapath|reg_pA0|q\(3) & (!\datapath|sub0|Add1~7\))))
-- \datapath|sub0|Add1~10\ = CARRY((\datapath|reg_pB0|q\(3) & (\datapath|reg_pA0|q\(3) & !\datapath|sub0|Add1~7\)) # (!\datapath|reg_pB0|q\(3) & ((\datapath|reg_pA0|q\(3)) # (!\datapath|sub0|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(3),
	datab => \datapath|reg_pA0|q\(3),
	datad => VCC,
	cin => \datapath|sub0|Add1~7\,
	combout => \datapath|sub0|Add1~9_combout\,
	cout => \datapath|sub0|Add1~10\);

-- Location: LCCOMB_X19_Y13_N18
\datapath|sub1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~6_combout\ = (\datapath|reg_pA1|q\(3) & ((\datapath|reg_pB1|q\(3) & (!\datapath|sub1|Add0~5\)) # (!\datapath|reg_pB1|q\(3) & (\datapath|sub1|Add0~5\ & VCC)))) # (!\datapath|reg_pA1|q\(3) & ((\datapath|reg_pB1|q\(3) & 
-- ((\datapath|sub1|Add0~5\) # (GND))) # (!\datapath|reg_pB1|q\(3) & (!\datapath|sub1|Add0~5\))))
-- \datapath|sub1|Add0~7\ = CARRY((\datapath|reg_pA1|q\(3) & (\datapath|reg_pB1|q\(3) & !\datapath|sub1|Add0~5\)) # (!\datapath|reg_pA1|q\(3) & ((\datapath|reg_pB1|q\(3)) # (!\datapath|sub1|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(3),
	datab => \datapath|reg_pB1|q\(3),
	datad => VCC,
	cin => \datapath|sub1|Add0~5\,
	combout => \datapath|sub1|Add0~6_combout\,
	cout => \datapath|sub1|Add0~7\);

-- Location: LCCOMB_X14_Y12_N8
\datapath|sub2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~12_combout\ = ((\datapath|reg_pA2|q\(4) $ (\datapath|reg_pB2|q\(4) $ (\datapath|sub2|Add1~10\)))) # (GND)
-- \datapath|sub2|Add1~13\ = CARRY((\datapath|reg_pA2|q\(4) & (\datapath|reg_pB2|q\(4) & !\datapath|sub2|Add1~10\)) # (!\datapath|reg_pA2|q\(4) & ((\datapath|reg_pB2|q\(4)) # (!\datapath|sub2|Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(4),
	datab => \datapath|reg_pB2|q\(4),
	datad => VCC,
	cin => \datapath|sub2|Add1~10\,
	combout => \datapath|sub2|Add1~12_combout\,
	cout => \datapath|sub2|Add1~13\);

-- Location: LCCOMB_X15_Y13_N12
\datapath|sub3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~8_combout\ = ((\datapath|reg_pA3|q\(4) $ (\datapath|reg_pB3|q\(4) $ (\datapath|sub3|Add0~7\)))) # (GND)
-- \datapath|sub3|Add0~9\ = CARRY((\datapath|reg_pA3|q\(4) & ((!\datapath|sub3|Add0~7\) # (!\datapath|reg_pB3|q\(4)))) # (!\datapath|reg_pA3|q\(4) & (!\datapath|reg_pB3|q\(4) & !\datapath|sub3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(4),
	datab => \datapath|reg_pB3|q\(4),
	datad => VCC,
	cin => \datapath|sub3|Add0~7\,
	combout => \datapath|sub3|Add0~8_combout\,
	cout => \datapath|sub3|Add0~9\);

-- Location: LCCOMB_X14_Y13_N24
\datapath|sub3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~12_combout\ = ((\datapath|reg_pB3|q\(4) $ (\datapath|reg_pA3|q\(4) $ (\datapath|sub3|Add1~10\)))) # (GND)
-- \datapath|sub3|Add1~13\ = CARRY((\datapath|reg_pB3|q\(4) & ((!\datapath|sub3|Add1~10\) # (!\datapath|reg_pA3|q\(4)))) # (!\datapath|reg_pB3|q\(4) & (!\datapath|reg_pA3|q\(4) & !\datapath|sub3|Add1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(4),
	datab => \datapath|reg_pA3|q\(4),
	datad => VCC,
	cin => \datapath|sub3|Add1~10\,
	combout => \datapath|sub3|Add1~12_combout\,
	cout => \datapath|sub3|Add1~13\);

-- Location: LCCOMB_X20_Y12_N10
\datapath|sub0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~8_combout\ = ((\datapath|reg_pB0|q\(4) $ (\datapath|reg_pA0|q\(4) $ (\datapath|sub0|Add0~7\)))) # (GND)
-- \datapath|sub0|Add0~9\ = CARRY((\datapath|reg_pB0|q\(4) & (\datapath|reg_pA0|q\(4) & !\datapath|sub0|Add0~7\)) # (!\datapath|reg_pB0|q\(4) & ((\datapath|reg_pA0|q\(4)) # (!\datapath|sub0|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(4),
	datab => \datapath|reg_pA0|q\(4),
	datad => VCC,
	cin => \datapath|sub0|Add0~7\,
	combout => \datapath|sub0|Add0~8_combout\,
	cout => \datapath|sub0|Add0~9\);

-- Location: LCCOMB_X19_Y13_N20
\datapath|sub1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~8_combout\ = ((\datapath|reg_pB1|q\(4) $ (\datapath|reg_pA1|q\(4) $ (\datapath|sub1|Add0~7\)))) # (GND)
-- \datapath|sub1|Add0~9\ = CARRY((\datapath|reg_pB1|q\(4) & (\datapath|reg_pA1|q\(4) & !\datapath|sub1|Add0~7\)) # (!\datapath|reg_pB1|q\(4) & ((\datapath|reg_pA1|q\(4)) # (!\datapath|sub1|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(4),
	datab => \datapath|reg_pA1|q\(4),
	datad => VCC,
	cin => \datapath|sub1|Add0~7\,
	combout => \datapath|sub1|Add0~8_combout\,
	cout => \datapath|sub1|Add0~9\);

-- Location: LCCOMB_X20_Y13_N24
\datapath|sub1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~12_combout\ = ((\datapath|reg_pB1|q\(4) $ (\datapath|reg_pA1|q\(4) $ (\datapath|sub1|Add1~10\)))) # (GND)
-- \datapath|sub1|Add1~13\ = CARRY((\datapath|reg_pB1|q\(4) & ((!\datapath|sub1|Add1~10\) # (!\datapath|reg_pA1|q\(4)))) # (!\datapath|reg_pB1|q\(4) & (!\datapath|reg_pA1|q\(4) & !\datapath|sub1|Add1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(4),
	datab => \datapath|reg_pA1|q\(4),
	datad => VCC,
	cin => \datapath|sub1|Add1~10\,
	combout => \datapath|sub1|Add1~12_combout\,
	cout => \datapath|sub1|Add1~13\);

-- Location: LCCOMB_X19_Y12_N20
\datapath|somador_0|S[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[4]~8_combout\ = ((\datapath|sub1|Add1~14_combout\ $ (\datapath|sub0|Add1~14_combout\ $ (!\datapath|somador_0|S[3]~7\)))) # (GND)
-- \datapath|somador_0|S[4]~9\ = CARRY((\datapath|sub1|Add1~14_combout\ & ((\datapath|sub0|Add1~14_combout\) # (!\datapath|somador_0|S[3]~7\))) # (!\datapath|sub1|Add1~14_combout\ & (\datapath|sub0|Add1~14_combout\ & !\datapath|somador_0|S[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add1~14_combout\,
	datab => \datapath|sub0|Add1~14_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[3]~7\,
	combout => \datapath|somador_0|S[4]~8_combout\,
	cout => \datapath|somador_0|S[4]~9\);

-- Location: LCCOMB_X18_Y12_N16
\datapath|somador_2|S[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[4]~8_combout\ = ((\datapath|somador_0|S[4]~8_combout\ $ (\datapath|somador_1|Add0~8_combout\ $ (!\datapath|somador_2|S[3]~7\)))) # (GND)
-- \datapath|somador_2|S[4]~9\ = CARRY((\datapath|somador_0|S[4]~8_combout\ & ((\datapath|somador_1|Add0~8_combout\) # (!\datapath|somador_2|S[3]~7\))) # (!\datapath|somador_0|S[4]~8_combout\ & (\datapath|somador_1|Add0~8_combout\ & 
-- !\datapath|somador_2|S[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_0|S[4]~8_combout\,
	datab => \datapath|somador_1|Add0~8_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[3]~7\,
	combout => \datapath|somador_2|S[4]~8_combout\,
	cout => \datapath|somador_2|S[4]~9\);

-- Location: LCCOMB_X14_Y12_N10
\datapath|sub2|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~15_combout\ = (\datapath|reg_pB2|q\(5) & ((\datapath|reg_pA2|q\(5) & (!\datapath|sub2|Add1~13\)) # (!\datapath|reg_pA2|q\(5) & (\datapath|sub2|Add1~13\ & VCC)))) # (!\datapath|reg_pB2|q\(5) & ((\datapath|reg_pA2|q\(5) & 
-- ((\datapath|sub2|Add1~13\) # (GND))) # (!\datapath|reg_pA2|q\(5) & (!\datapath|sub2|Add1~13\))))
-- \datapath|sub2|Add1~16\ = CARRY((\datapath|reg_pB2|q\(5) & (\datapath|reg_pA2|q\(5) & !\datapath|sub2|Add1~13\)) # (!\datapath|reg_pB2|q\(5) & ((\datapath|reg_pA2|q\(5)) # (!\datapath|sub2|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(5),
	datab => \datapath|reg_pA2|q\(5),
	datad => VCC,
	cin => \datapath|sub2|Add1~13\,
	combout => \datapath|sub2|Add1~15_combout\,
	cout => \datapath|sub2|Add1~16\);

-- Location: LCCOMB_X15_Y13_N14
\datapath|sub3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~10_combout\ = (\datapath|reg_pA3|q\(5) & ((\datapath|reg_pB3|q\(5) & (!\datapath|sub3|Add0~9\)) # (!\datapath|reg_pB3|q\(5) & (\datapath|sub3|Add0~9\ & VCC)))) # (!\datapath|reg_pA3|q\(5) & ((\datapath|reg_pB3|q\(5) & 
-- ((\datapath|sub3|Add0~9\) # (GND))) # (!\datapath|reg_pB3|q\(5) & (!\datapath|sub3|Add0~9\))))
-- \datapath|sub3|Add0~11\ = CARRY((\datapath|reg_pA3|q\(5) & (\datapath|reg_pB3|q\(5) & !\datapath|sub3|Add0~9\)) # (!\datapath|reg_pA3|q\(5) & ((\datapath|reg_pB3|q\(5)) # (!\datapath|sub3|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(5),
	datab => \datapath|reg_pB3|q\(5),
	datad => VCC,
	cin => \datapath|sub3|Add0~9\,
	combout => \datapath|sub3|Add0~10_combout\,
	cout => \datapath|sub3|Add0~11\);

-- Location: LCCOMB_X14_Y13_N26
\datapath|sub3|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~15_combout\ = (\datapath|reg_pA3|q\(5) & ((\datapath|reg_pB3|q\(5) & (!\datapath|sub3|Add1~13\)) # (!\datapath|reg_pB3|q\(5) & ((\datapath|sub3|Add1~13\) # (GND))))) # (!\datapath|reg_pA3|q\(5) & ((\datapath|reg_pB3|q\(5) & 
-- (\datapath|sub3|Add1~13\ & VCC)) # (!\datapath|reg_pB3|q\(5) & (!\datapath|sub3|Add1~13\))))
-- \datapath|sub3|Add1~16\ = CARRY((\datapath|reg_pA3|q\(5) & ((!\datapath|sub3|Add1~13\) # (!\datapath|reg_pB3|q\(5)))) # (!\datapath|reg_pA3|q\(5) & (!\datapath|reg_pB3|q\(5) & !\datapath|sub3|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(5),
	datab => \datapath|reg_pB3|q\(5),
	datad => VCC,
	cin => \datapath|sub3|Add1~13\,
	combout => \datapath|sub3|Add1~15_combout\,
	cout => \datapath|sub3|Add1~16\);

-- Location: LCCOMB_X15_Y12_N12
\datapath|somador_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~10_combout\ = (\datapath|sub3|Add1~17_combout\ & ((\datapath|sub2|Add1~17_combout\ & (\datapath|somador_1|Add0~9\ & VCC)) # (!\datapath|sub2|Add1~17_combout\ & (!\datapath|somador_1|Add0~9\)))) # (!\datapath|sub3|Add1~17_combout\ 
-- & ((\datapath|sub2|Add1~17_combout\ & (!\datapath|somador_1|Add0~9\)) # (!\datapath|sub2|Add1~17_combout\ & ((\datapath|somador_1|Add0~9\) # (GND)))))
-- \datapath|somador_1|Add0~11\ = CARRY((\datapath|sub3|Add1~17_combout\ & (!\datapath|sub2|Add1~17_combout\ & !\datapath|somador_1|Add0~9\)) # (!\datapath|sub3|Add1~17_combout\ & ((!\datapath|somador_1|Add0~9\) # (!\datapath|sub2|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~17_combout\,
	datab => \datapath|sub2|Add1~17_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~9\,
	combout => \datapath|somador_1|Add0~10_combout\,
	cout => \datapath|somador_1|Add0~11\);

-- Location: LCCOMB_X20_Y12_N12
\datapath|sub0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~10_combout\ = (\datapath|reg_pB0|q\(5) & ((\datapath|reg_pA0|q\(5) & (!\datapath|sub0|Add0~9\)) # (!\datapath|reg_pA0|q\(5) & ((\datapath|sub0|Add0~9\) # (GND))))) # (!\datapath|reg_pB0|q\(5) & ((\datapath|reg_pA0|q\(5) & 
-- (\datapath|sub0|Add0~9\ & VCC)) # (!\datapath|reg_pA0|q\(5) & (!\datapath|sub0|Add0~9\))))
-- \datapath|sub0|Add0~11\ = CARRY((\datapath|reg_pB0|q\(5) & ((!\datapath|sub0|Add0~9\) # (!\datapath|reg_pA0|q\(5)))) # (!\datapath|reg_pB0|q\(5) & (!\datapath|reg_pA0|q\(5) & !\datapath|sub0|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(5),
	datab => \datapath|reg_pA0|q\(5),
	datad => VCC,
	cin => \datapath|sub0|Add0~9\,
	combout => \datapath|sub0|Add0~10_combout\,
	cout => \datapath|sub0|Add0~11\);

-- Location: LCCOMB_X21_Y12_N10
\datapath|sub0|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~15_combout\ = (\datapath|reg_pB0|q\(5) & ((\datapath|reg_pA0|q\(5) & (!\datapath|sub0|Add1~13\)) # (!\datapath|reg_pA0|q\(5) & (\datapath|sub0|Add1~13\ & VCC)))) # (!\datapath|reg_pB0|q\(5) & ((\datapath|reg_pA0|q\(5) & 
-- ((\datapath|sub0|Add1~13\) # (GND))) # (!\datapath|reg_pA0|q\(5) & (!\datapath|sub0|Add1~13\))))
-- \datapath|sub0|Add1~16\ = CARRY((\datapath|reg_pB0|q\(5) & (\datapath|reg_pA0|q\(5) & !\datapath|sub0|Add1~13\)) # (!\datapath|reg_pB0|q\(5) & ((\datapath|reg_pA0|q\(5)) # (!\datapath|sub0|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(5),
	datab => \datapath|reg_pA0|q\(5),
	datad => VCC,
	cin => \datapath|sub0|Add1~13\,
	combout => \datapath|sub0|Add1~15_combout\,
	cout => \datapath|sub0|Add1~16\);

-- Location: LCCOMB_X19_Y13_N22
\datapath|sub1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~10_combout\ = (\datapath|reg_pB1|q\(5) & ((\datapath|reg_pA1|q\(5) & (!\datapath|sub1|Add0~9\)) # (!\datapath|reg_pA1|q\(5) & ((\datapath|sub1|Add0~9\) # (GND))))) # (!\datapath|reg_pB1|q\(5) & ((\datapath|reg_pA1|q\(5) & 
-- (\datapath|sub1|Add0~9\ & VCC)) # (!\datapath|reg_pA1|q\(5) & (!\datapath|sub1|Add0~9\))))
-- \datapath|sub1|Add0~11\ = CARRY((\datapath|reg_pB1|q\(5) & ((!\datapath|sub1|Add0~9\) # (!\datapath|reg_pA1|q\(5)))) # (!\datapath|reg_pB1|q\(5) & (!\datapath|reg_pA1|q\(5) & !\datapath|sub1|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(5),
	datab => \datapath|reg_pA1|q\(5),
	datad => VCC,
	cin => \datapath|sub1|Add0~9\,
	combout => \datapath|sub1|Add0~10_combout\,
	cout => \datapath|sub1|Add0~11\);

-- Location: LCCOMB_X20_Y13_N26
\datapath|sub1|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~15_combout\ = (\datapath|reg_pA1|q\(5) & ((\datapath|reg_pB1|q\(5) & (!\datapath|sub1|Add1~13\)) # (!\datapath|reg_pB1|q\(5) & ((\datapath|sub1|Add1~13\) # (GND))))) # (!\datapath|reg_pA1|q\(5) & ((\datapath|reg_pB1|q\(5) & 
-- (\datapath|sub1|Add1~13\ & VCC)) # (!\datapath|reg_pB1|q\(5) & (!\datapath|sub1|Add1~13\))))
-- \datapath|sub1|Add1~16\ = CARRY((\datapath|reg_pA1|q\(5) & ((!\datapath|sub1|Add1~13\) # (!\datapath|reg_pB1|q\(5)))) # (!\datapath|reg_pA1|q\(5) & (!\datapath|reg_pB1|q\(5) & !\datapath|sub1|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(5),
	datab => \datapath|reg_pB1|q\(5),
	datad => VCC,
	cin => \datapath|sub1|Add1~13\,
	combout => \datapath|sub1|Add1~15_combout\,
	cout => \datapath|sub1|Add1~16\);

-- Location: LCCOMB_X13_Y12_N14
\datapath|sub2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~12_combout\ = ((\datapath|reg_pB2|q\(6) $ (\datapath|reg_pA2|q\(6) $ (\datapath|sub2|Add0~11\)))) # (GND)
-- \datapath|sub2|Add0~13\ = CARRY((\datapath|reg_pB2|q\(6) & (\datapath|reg_pA2|q\(6) & !\datapath|sub2|Add0~11\)) # (!\datapath|reg_pB2|q\(6) & ((\datapath|reg_pA2|q\(6)) # (!\datapath|sub2|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(6),
	datab => \datapath|reg_pA2|q\(6),
	datad => VCC,
	cin => \datapath|sub2|Add0~11\,
	combout => \datapath|sub2|Add0~12_combout\,
	cout => \datapath|sub2|Add0~13\);

-- Location: LCCOMB_X14_Y12_N12
\datapath|sub2|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~18_combout\ = ((\datapath|reg_pB2|q\(6) $ (\datapath|reg_pA2|q\(6) $ (\datapath|sub2|Add1~16\)))) # (GND)
-- \datapath|sub2|Add1~19\ = CARRY((\datapath|reg_pB2|q\(6) & ((!\datapath|sub2|Add1~16\) # (!\datapath|reg_pA2|q\(6)))) # (!\datapath|reg_pB2|q\(6) & (!\datapath|reg_pA2|q\(6) & !\datapath|sub2|Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(6),
	datab => \datapath|reg_pA2|q\(6),
	datad => VCC,
	cin => \datapath|sub2|Add1~16\,
	combout => \datapath|sub2|Add1~18_combout\,
	cout => \datapath|sub2|Add1~19\);

-- Location: LCCOMB_X15_Y13_N16
\datapath|sub3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~12_combout\ = ((\datapath|reg_pB3|q\(6) $ (\datapath|reg_pA3|q\(6) $ (\datapath|sub3|Add0~11\)))) # (GND)
-- \datapath|sub3|Add0~13\ = CARRY((\datapath|reg_pB3|q\(6) & (\datapath|reg_pA3|q\(6) & !\datapath|sub3|Add0~11\)) # (!\datapath|reg_pB3|q\(6) & ((\datapath|reg_pA3|q\(6)) # (!\datapath|sub3|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(6),
	datab => \datapath|reg_pA3|q\(6),
	datad => VCC,
	cin => \datapath|sub3|Add0~11\,
	combout => \datapath|sub3|Add0~12_combout\,
	cout => \datapath|sub3|Add0~13\);

-- Location: LCCOMB_X14_Y13_N28
\datapath|sub3|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~18_combout\ = ((\datapath|reg_pA3|q\(6) $ (\datapath|reg_pB3|q\(6) $ (\datapath|sub3|Add1~16\)))) # (GND)
-- \datapath|sub3|Add1~19\ = CARRY((\datapath|reg_pA3|q\(6) & (\datapath|reg_pB3|q\(6) & !\datapath|sub3|Add1~16\)) # (!\datapath|reg_pA3|q\(6) & ((\datapath|reg_pB3|q\(6)) # (!\datapath|sub3|Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(6),
	datab => \datapath|reg_pB3|q\(6),
	datad => VCC,
	cin => \datapath|sub3|Add1~16\,
	combout => \datapath|sub3|Add1~18_combout\,
	cout => \datapath|sub3|Add1~19\);

-- Location: LCCOMB_X15_Y12_N14
\datapath|somador_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~12_combout\ = ((\datapath|sub2|Add1~20_combout\ $ (\datapath|sub3|Add1~20_combout\ $ (!\datapath|somador_1|Add0~11\)))) # (GND)
-- \datapath|somador_1|Add0~13\ = CARRY((\datapath|sub2|Add1~20_combout\ & ((\datapath|sub3|Add1~20_combout\) # (!\datapath|somador_1|Add0~11\))) # (!\datapath|sub2|Add1~20_combout\ & (\datapath|sub3|Add1~20_combout\ & !\datapath|somador_1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~20_combout\,
	datab => \datapath|sub3|Add1~20_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~11\,
	combout => \datapath|somador_1|Add0~12_combout\,
	cout => \datapath|somador_1|Add0~13\);

-- Location: LCCOMB_X20_Y12_N14
\datapath|sub0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~12_combout\ = ((\datapath|reg_pB0|q\(6) $ (\datapath|reg_pA0|q\(6) $ (\datapath|sub0|Add0~11\)))) # (GND)
-- \datapath|sub0|Add0~13\ = CARRY((\datapath|reg_pB0|q\(6) & (\datapath|reg_pA0|q\(6) & !\datapath|sub0|Add0~11\)) # (!\datapath|reg_pB0|q\(6) & ((\datapath|reg_pA0|q\(6)) # (!\datapath|sub0|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(6),
	datab => \datapath|reg_pA0|q\(6),
	datad => VCC,
	cin => \datapath|sub0|Add0~11\,
	combout => \datapath|sub0|Add0~12_combout\,
	cout => \datapath|sub0|Add0~13\);

-- Location: LCCOMB_X21_Y12_N12
\datapath|sub0|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~18_combout\ = ((\datapath|reg_pB0|q\(6) $ (\datapath|reg_pA0|q\(6) $ (\datapath|sub0|Add1~16\)))) # (GND)
-- \datapath|sub0|Add1~19\ = CARRY((\datapath|reg_pB0|q\(6) & ((!\datapath|sub0|Add1~16\) # (!\datapath|reg_pA0|q\(6)))) # (!\datapath|reg_pB0|q\(6) & (!\datapath|reg_pA0|q\(6) & !\datapath|sub0|Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(6),
	datab => \datapath|reg_pA0|q\(6),
	datad => VCC,
	cin => \datapath|sub0|Add1~16\,
	combout => \datapath|sub0|Add1~18_combout\,
	cout => \datapath|sub0|Add1~19\);

-- Location: LCCOMB_X15_Y13_N18
\datapath|sub3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~14_combout\ = \datapath|reg_pB3|q\(7) $ (\datapath|sub3|Add0~13\ $ (!\datapath|reg_pA3|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(7),
	datad => \datapath|reg_pA3|q\(7),
	cin => \datapath|sub3|Add0~13\,
	combout => \datapath|sub3|Add0~14_combout\);

-- Location: LCCOMB_X14_Y13_N30
\datapath|sub3|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~21_combout\ = \datapath|reg_pA3|q\(7) $ (\datapath|sub3|Add1~19\ $ (!\datapath|reg_pB3|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pA3|q\(7),
	datad => \datapath|reg_pB3|q\(7),
	cin => \datapath|sub3|Add1~19\,
	combout => \datapath|sub3|Add1~21_combout\);

-- Location: LCCOMB_X15_Y12_N16
\datapath|somador_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~14_combout\ = (\datapath|sub3|Add1~23_combout\ & ((\datapath|sub2|Add1~23_combout\ & (\datapath|somador_1|Add0~13\ & VCC)) # (!\datapath|sub2|Add1~23_combout\ & (!\datapath|somador_1|Add0~13\)))) # 
-- (!\datapath|sub3|Add1~23_combout\ & ((\datapath|sub2|Add1~23_combout\ & (!\datapath|somador_1|Add0~13\)) # (!\datapath|sub2|Add1~23_combout\ & ((\datapath|somador_1|Add0~13\) # (GND)))))
-- \datapath|somador_1|Add0~15\ = CARRY((\datapath|sub3|Add1~23_combout\ & (!\datapath|sub2|Add1~23_combout\ & !\datapath|somador_1|Add0~13\)) # (!\datapath|sub3|Add1~23_combout\ & ((!\datapath|somador_1|Add0~13\) # (!\datapath|sub2|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~23_combout\,
	datab => \datapath|sub2|Add1~23_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~13\,
	combout => \datapath|somador_1|Add0~14_combout\,
	cout => \datapath|somador_1|Add0~15\);

-- Location: LCCOMB_X20_Y12_N16
\datapath|sub0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~14_combout\ = \datapath|reg_pB0|q\(7) $ (\datapath|sub0|Add0~13\ $ (!\datapath|reg_pA0|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(7),
	datad => \datapath|reg_pA0|q\(7),
	cin => \datapath|sub0|Add0~13\,
	combout => \datapath|sub0|Add0~14_combout\);

-- Location: LCCOMB_X21_Y12_N14
\datapath|sub0|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~21_combout\ = \datapath|reg_pB0|q\(7) $ (\datapath|sub0|Add1~19\ $ (!\datapath|reg_pA0|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pB0|q\(7),
	datad => \datapath|reg_pA0|q\(7),
	cin => \datapath|sub0|Add1~19\,
	combout => \datapath|sub0|Add1~21_combout\);

-- Location: LCCOMB_X19_Y12_N26
\datapath|somador_0|S[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[7]~14_combout\ = (\datapath|sub0|Add1~23_combout\ & ((\datapath|sub1|Add1~23_combout\ & (\datapath|somador_0|S[6]~13\ & VCC)) # (!\datapath|sub1|Add1~23_combout\ & (!\datapath|somador_0|S[6]~13\)))) # 
-- (!\datapath|sub0|Add1~23_combout\ & ((\datapath|sub1|Add1~23_combout\ & (!\datapath|somador_0|S[6]~13\)) # (!\datapath|sub1|Add1~23_combout\ & ((\datapath|somador_0|S[6]~13\) # (GND)))))
-- \datapath|somador_0|S[7]~15\ = CARRY((\datapath|sub0|Add1~23_combout\ & (!\datapath|sub1|Add1~23_combout\ & !\datapath|somador_0|S[6]~13\)) # (!\datapath|sub0|Add1~23_combout\ & ((!\datapath|somador_0|S[6]~13\) # (!\datapath|sub1|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~23_combout\,
	datab => \datapath|sub1|Add1~23_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[6]~13\,
	combout => \datapath|somador_0|S[7]~14_combout\,
	cout => \datapath|somador_0|S[7]~15\);

-- Location: LCCOMB_X15_Y12_N18
\datapath|somador_1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~16_combout\ = !\datapath|somador_1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \datapath|somador_1|Add0~15\,
	combout => \datapath|somador_1|Add0~16_combout\);

-- Location: LCCOMB_X18_Y12_N24
\datapath|somador_2|S[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[8]~16_combout\ = ((\datapath|somador_1|Add0~16_combout\ $ (\datapath|somador_0|S[8]~16_combout\ $ (!\datapath|somador_2|S[7]~15\)))) # (GND)
-- \datapath|somador_2|S[8]~17\ = CARRY((\datapath|somador_1|Add0~16_combout\ & ((\datapath|somador_0|S[8]~16_combout\) # (!\datapath|somador_2|S[7]~15\))) # (!\datapath|somador_1|Add0~16_combout\ & (\datapath|somador_0|S[8]~16_combout\ & 
-- !\datapath|somador_2|S[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~16_combout\,
	datab => \datapath|somador_0|S[8]~16_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[7]~15\,
	combout => \datapath|somador_2|S[8]~16_combout\,
	cout => \datapath|somador_2|S[8]~17\);

-- Location: LCCOMB_X18_Y12_N26
\datapath|somador_2|S[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[9]~18_combout\ = \datapath|somador_2|S[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \datapath|somador_2|S[8]~17\,
	combout => \datapath|somador_2|S[9]~18_combout\);

-- Location: LCFF_X14_Y12_N17
\datapath|reg_pA2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(16),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(0));

-- Location: LCFF_X14_Y12_N13
\datapath|reg_pB2|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(22),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(6));

-- Location: LCFF_X14_Y12_N25
\datapath|reg_pA2|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(20),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(4));

-- Location: LCFF_X14_Y13_N11
\datapath|reg_pA3|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(29),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(5));

-- Location: LCFF_X14_Y13_N7
\datapath|reg_pA3|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(27),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(3));

-- Location: LCFF_X14_Y13_N21
\datapath|reg_pB3|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(26),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(2));

-- Location: LCFF_X14_Y13_N3
\datapath|reg_pA3|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(25),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(1));

-- Location: LCCOMB_X15_Y13_N0
\datapath|sub3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~2_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~0_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add0~0_combout\,
	datac => \datapath|sub3|Add1~0_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~2_combout\);

-- Location: LCFF_X21_Y12_N17
\datapath|reg_pA0|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(0),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(0));

-- Location: LCFF_X21_Y12_N13
\datapath|reg_pB0|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(6),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(6));

-- Location: LCFF_X21_Y12_N11
\datapath|reg_pB0|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(5),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(5));

-- Location: LCFF_X21_Y12_N25
\datapath|reg_pA0|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(4),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(4));

-- Location: LCFF_X21_Y12_N7
\datapath|reg_pB0|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(3),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(3));

-- Location: LCFF_X21_Y12_N21
\datapath|reg_pA0|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(2),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(2));

-- Location: LCFF_X21_Y12_N19
\datapath|reg_pA0|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(1),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(1));

-- Location: LCCOMB_X20_Y12_N20
\datapath|sub0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~2_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~0_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub0|Add0~0_combout\,
	datac => \datapath|sub0|Add1~0_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~2_combout\);

-- Location: LCFF_X20_Y13_N17
\datapath|reg_pB1|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(8),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(0));

-- Location: LCFF_X20_Y13_N13
\datapath|reg_pA1|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(14),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(6));

-- Location: LCFF_X20_Y13_N25
\datapath|reg_pB1|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(12),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(4));

-- Location: LCFF_X20_Y13_N7
\datapath|reg_pA1|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(11),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(3));

-- Location: LCCOMB_X13_Y12_N28
\datapath|sub2|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~5_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~2_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~3_combout\,
	datac => \datapath|sub2|Add0~2_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~5_combout\);

-- Location: LCCOMB_X20_Y12_N18
\datapath|sub0|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~5_combout\ = (\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add0~2_combout\))) # (!\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~3_combout\,
	datac => \datapath|sub0|Add0~2_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~5_combout\);

-- Location: LCCOMB_X15_Y12_N20
\datapath|sub2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~8_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~4_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub2|Add0~4_combout\,
	datac => \datapath|sub2|Add1~6_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~8_combout\);

-- Location: LCCOMB_X19_Y12_N10
\datapath|sub1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~8_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~4_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add0~4_combout\,
	datac => \datapath|sub1|Add1~6_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~8_combout\);

-- Location: LCCOMB_X15_Y13_N26
\datapath|sub3|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~11_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~6_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add0~6_combout\,
	datab => \datapath|sub3|Add1~9_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~11_combout\);

-- Location: LCCOMB_X20_Y12_N30
\datapath|sub0|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~11_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~6_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub0|Add0~6_combout\,
	datac => \datapath|sub0|Add1~9_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~11_combout\);

-- Location: LCCOMB_X15_Y13_N24
\datapath|sub3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~14_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~8_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add0~8_combout\,
	datac => \datapath|sub3|Add1~12_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~14_combout\);

-- Location: LCCOMB_X19_Y12_N6
\datapath|sub1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~14_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~8_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add0~8_combout\,
	datac => \datapath|sub1|Add1~12_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~14_combout\);

-- Location: LCCOMB_X15_Y13_N22
\datapath|sub3|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~17_combout\ = (\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add0~10_combout\))) # (!\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add1~15_combout\,
	datac => \datapath|sub3|Add0~10_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~17_combout\);

-- Location: LCCOMB_X19_Y12_N8
\datapath|sub1|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~17_combout\ = (\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add0~10_combout\))) # (!\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add1~15_combout\,
	datac => \datapath|sub1|Add0~10_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~17_combout\);

-- Location: LCCOMB_X15_Y12_N24
\datapath|sub2|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~20_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~12_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|LessThan0~14_combout\,
	datab => \datapath|sub2|Add1~18_combout\,
	datad => \datapath|sub2|Add0~12_combout\,
	combout => \datapath|sub2|Add1~20_combout\);

-- Location: LCCOMB_X20_Y12_N0
\datapath|sub0|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~20_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~12_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub0|Add0~12_combout\,
	datac => \datapath|sub0|Add1~18_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~20_combout\);

-- Location: LCCOMB_X15_Y13_N30
\datapath|sub3|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~23_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~14_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add0~14_combout\,
	datac => \datapath|sub3|Add1~21_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~23_combout\);

-- Location: LCCOMB_X20_Y12_N26
\datapath|sub0|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~23_combout\ = (\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add0~14_combout\))) # (!\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub0|Add1~21_combout\,
	datac => \datapath|sub0|Add0~14_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~23_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(16),
	combout => \mem_A~combout\(16));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(22),
	combout => \mem_B~combout\(22));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(20),
	combout => \mem_A~combout\(20));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(29),
	combout => \mem_A~combout\(29));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(27),
	combout => \mem_A~combout\(27));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(26),
	combout => \mem_B~combout\(26));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(25),
	combout => \mem_A~combout\(25));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(0),
	combout => \mem_A~combout\(0));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(6),
	combout => \mem_B~combout\(6));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(5),
	combout => \mem_B~combout\(5));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(4),
	combout => \mem_A~combout\(4));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(3),
	combout => \mem_B~combout\(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(2),
	combout => \mem_A~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(1),
	combout => \mem_A~combout\(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(8),
	combout => \mem_B~combout\(8));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(14),
	combout => \mem_A~combout\(14));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(12),
	combout => \mem_B~combout\(12));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(11),
	combout => \mem_A~combout\(11));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ck~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ck,
	combout => \ck~combout\);

-- Location: CLKCTRL_G2
\ck~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~clkctrl_outclk\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iniciar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_iniciar,
	combout => \iniciar~combout\);

-- Location: LCCOMB_X27_Y8_N2
\controle|EstadoAtual~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~12_combout\ = (!\controle|EstadoAtual.S0~regout\ & \iniciar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|EstadoAtual.S0~regout\,
	datad => \iniciar~combout\,
	combout => \controle|EstadoAtual~12_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X27_Y8_N3
\controle|EstadoAtual.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \controle|EstadoAtual~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|EstadoAtual.S1~regout\);

-- Location: LCCOMB_X27_Y8_N18
\datapath|mux_i|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux_i|output[0]~0_combout\ = (!\datapath|reg_i|q\(0) & !\controle|EstadoAtual.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|reg_i|q\(0),
	datad => \controle|EstadoAtual.S1~regout\,
	combout => \datapath|mux_i|output[0]~0_combout\);

-- Location: LCFF_X27_Y8_N19
\datapath|reg_i|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|mux_i|output[0]~0_combout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_i|q\(0));

-- Location: LCCOMB_X27_Y8_N16
\datapath|somador_i|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_i|Add0~0_combout\ = \datapath|reg_i|q\(1) $ (\datapath|reg_i|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|reg_i|q\(1),
	datad => \datapath|reg_i|q\(0),
	combout => \datapath|somador_i|Add0~0_combout\);

-- Location: LCFF_X27_Y8_N17
\datapath|reg_i|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|somador_i|Add0~0_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_i|q\(1));

-- Location: LCCOMB_X27_Y8_N22
\datapath|somador_i|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_i|Add0~1_combout\ = \datapath|reg_i|q\(2) $ (((\datapath|reg_i|q\(1) & \datapath|reg_i|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_i|q\(1),
	datab => \datapath|reg_i|q\(0),
	datac => \datapath|reg_i|q\(2),
	combout => \datapath|somador_i|Add0~1_combout\);

-- Location: LCFF_X27_Y8_N23
\datapath|reg_i|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|somador_i|Add0~1_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_i|q\(2));

-- Location: LCCOMB_X27_Y8_N20
\datapath|mux_i|output[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux_i|output[4]~1_combout\ = (!\controle|EstadoAtual.S1~regout\ & (\datapath|reg_i|q\(0) & (\datapath|reg_i|q\(1) & \datapath|reg_i|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|EstadoAtual.S1~regout\,
	datab => \datapath|reg_i|q\(0),
	datac => \datapath|reg_i|q\(1),
	datad => \datapath|reg_i|q\(2),
	combout => \datapath|mux_i|output[4]~1_combout\);

-- Location: LCCOMB_X27_Y8_N12
\datapath|somador_i|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_i|Add0~2_combout\ = \datapath|reg_i|q\(3) $ (((\datapath|reg_i|q\(1) & (\datapath|reg_i|q\(0) & \datapath|reg_i|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_i|q\(1),
	datab => \datapath|reg_i|q\(0),
	datac => \datapath|reg_i|q\(3),
	datad => \datapath|reg_i|q\(2),
	combout => \datapath|somador_i|Add0~2_combout\);

-- Location: LCFF_X27_Y8_N13
\datapath|reg_i|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|somador_i|Add0~2_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_i|q\(3));

-- Location: LCCOMB_X27_Y8_N26
\datapath|mux_i|output[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux_i|output[4]~2_combout\ = (\datapath|mux_i|output[4]~1_combout\ & \datapath|reg_i|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|mux_i|output[4]~1_combout\,
	datad => \datapath|reg_i|q\(3),
	combout => \datapath|mux_i|output[4]~2_combout\);

-- Location: LCFF_X27_Y8_N27
\datapath|reg_i|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|mux_i|output[4]~2_combout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_i|q\(4));

-- Location: LCCOMB_X27_Y8_N0
\controle|EstadoAtual~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~10_combout\ = (\controle|EstadoAtual.S2~regout\ & !\datapath|reg_i|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|EstadoAtual.S2~regout\,
	datad => \datapath|reg_i|q\(4),
	combout => \controle|EstadoAtual~10_combout\);

-- Location: LCFF_X27_Y8_N1
\controle|EstadoAtual.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \controle|EstadoAtual~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|EstadoAtual.S3~regout\);

-- Location: LCCOMB_X27_Y8_N24
\controle|EstadoAtual.S4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual.S4~feeder_combout\ = \controle|EstadoAtual.S3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controle|EstadoAtual.S3~regout\,
	combout => \controle|EstadoAtual.S4~feeder_combout\);

-- Location: LCFF_X27_Y8_N25
\controle|EstadoAtual.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \controle|EstadoAtual.S4~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|EstadoAtual.S4~regout\);

-- Location: LCCOMB_X27_Y8_N6
\controle|csoma\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|csoma~combout\ = (\controle|EstadoAtual.S4~regout\) # (\controle|EstadoAtual.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|EstadoAtual.S4~regout\,
	datad => \controle|EstadoAtual.S1~regout\,
	combout => \controle|csoma~combout\);

-- Location: LCCOMB_X27_Y8_N4
\controle|EstadoAtual.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual.S2~feeder_combout\ = \controle|csoma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|csoma~combout\,
	combout => \controle|EstadoAtual.S2~feeder_combout\);

-- Location: LCFF_X27_Y8_N5
\controle|EstadoAtual.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \controle|EstadoAtual.S2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|EstadoAtual.S2~regout\);

-- Location: LCCOMB_X27_Y8_N8
\controle|EstadoAtual~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~11_combout\ = (\controle|EstadoAtual.S2~regout\ & \datapath|reg_i|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|EstadoAtual.S2~regout\,
	datad => \datapath|reg_i|q\(4),
	combout => \controle|EstadoAtual~11_combout\);

-- Location: LCFF_X27_Y8_N9
\controle|EstadoAtual.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \controle|EstadoAtual~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|EstadoAtual.S5~regout\);

-- Location: LCCOMB_X27_Y8_N10
\controle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector0~0_combout\ = (!\controle|EstadoAtual.S5~regout\ & ((\controle|EstadoAtual.S0~regout\) # (\iniciar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|EstadoAtual.S5~regout\,
	datac => \controle|EstadoAtual.S0~regout\,
	datad => \iniciar~combout\,
	combout => \controle|Selector0~0_combout\);

-- Location: LCFF_X27_Y8_N11
\controle|EstadoAtual.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \controle|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|EstadoAtual.S0~regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(8),
	combout => \mem_A~combout\(8));

-- Location: LCFF_X20_Y13_N1
\datapath|reg_pA1|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(8),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(0));

-- Location: LCCOMB_X20_Y13_N16
\datapath|sub1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~0_combout\ = (\datapath|reg_pB1|q\(0) & ((GND) # (!\datapath|reg_pA1|q\(0)))) # (!\datapath|reg_pB1|q\(0) & (\datapath|reg_pA1|q\(0) $ (GND)))
-- \datapath|sub1|Add1~1\ = CARRY((\datapath|reg_pB1|q\(0)) # (!\datapath|reg_pA1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(0),
	datab => \datapath|reg_pA1|q\(0),
	datad => VCC,
	combout => \datapath|sub1|Add1~0_combout\,
	cout => \datapath|sub1|Add1~1\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(15),
	combout => \mem_A~combout\(15));

-- Location: LCFF_X20_Y13_N15
\datapath|reg_pA1|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(15),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(15),
	combout => \mem_B~combout\(15));

-- Location: LCFF_X20_Y13_N31
\datapath|reg_pB1|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(15),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(7));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(14),
	combout => \mem_B~combout\(14));

-- Location: LCFF_X20_Y13_N29
\datapath|reg_pB1|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(14),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(13),
	combout => \mem_B~combout\(13));

-- Location: LCFF_X20_Y13_N27
\datapath|reg_pB1|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(13),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(5));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(12),
	combout => \mem_A~combout\(12));

-- Location: LCFF_X20_Y13_N9
\datapath|reg_pA1|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(12),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(11),
	combout => \mem_B~combout\(11));

-- Location: LCFF_X20_Y13_N23
\datapath|reg_pB1|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(11),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(10),
	combout => \mem_A~combout\(10));

-- Location: LCFF_X20_Y13_N5
\datapath|reg_pA1|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(10),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(2));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(9),
	combout => \mem_B~combout\(9));

-- Location: LCFF_X20_Y13_N19
\datapath|reg_pB1|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(9),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(1));

-- Location: LCCOMB_X20_Y13_N0
\datapath|sub1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~1_cout\ = CARRY((!\datapath|reg_pB1|q\(0) & \datapath|reg_pA1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(0),
	datab => \datapath|reg_pA1|q\(0),
	datad => VCC,
	cout => \datapath|sub1|LessThan0~1_cout\);

-- Location: LCCOMB_X20_Y13_N2
\datapath|sub1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~3_cout\ = CARRY((\datapath|reg_pA1|q\(1) & (\datapath|reg_pB1|q\(1) & !\datapath|sub1|LessThan0~1_cout\)) # (!\datapath|reg_pA1|q\(1) & ((\datapath|reg_pB1|q\(1)) # (!\datapath|sub1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(1),
	datab => \datapath|reg_pB1|q\(1),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~1_cout\,
	cout => \datapath|sub1|LessThan0~3_cout\);

-- Location: LCCOMB_X20_Y13_N4
\datapath|sub1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~5_cout\ = CARRY((\datapath|reg_pB1|q\(2) & (\datapath|reg_pA1|q\(2) & !\datapath|sub1|LessThan0~3_cout\)) # (!\datapath|reg_pB1|q\(2) & ((\datapath|reg_pA1|q\(2)) # (!\datapath|sub1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(2),
	datab => \datapath|reg_pA1|q\(2),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~3_cout\,
	cout => \datapath|sub1|LessThan0~5_cout\);

-- Location: LCCOMB_X20_Y13_N6
\datapath|sub1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~7_cout\ = CARRY((\datapath|reg_pA1|q\(3) & (\datapath|reg_pB1|q\(3) & !\datapath|sub1|LessThan0~5_cout\)) # (!\datapath|reg_pA1|q\(3) & ((\datapath|reg_pB1|q\(3)) # (!\datapath|sub1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(3),
	datab => \datapath|reg_pB1|q\(3),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~5_cout\,
	cout => \datapath|sub1|LessThan0~7_cout\);

-- Location: LCCOMB_X20_Y13_N8
\datapath|sub1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~9_cout\ = CARRY((\datapath|reg_pB1|q\(4) & (\datapath|reg_pA1|q\(4) & !\datapath|sub1|LessThan0~7_cout\)) # (!\datapath|reg_pB1|q\(4) & ((\datapath|reg_pA1|q\(4)) # (!\datapath|sub1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(4),
	datab => \datapath|reg_pA1|q\(4),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~7_cout\,
	cout => \datapath|sub1|LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y13_N10
\datapath|sub1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~11_cout\ = CARRY((\datapath|reg_pA1|q\(5) & (\datapath|reg_pB1|q\(5) & !\datapath|sub1|LessThan0~9_cout\)) # (!\datapath|reg_pA1|q\(5) & ((\datapath|reg_pB1|q\(5)) # (!\datapath|sub1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(5),
	datab => \datapath|reg_pB1|q\(5),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~9_cout\,
	cout => \datapath|sub1|LessThan0~11_cout\);

-- Location: LCCOMB_X20_Y13_N12
\datapath|sub1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~13_cout\ = CARRY((\datapath|reg_pA1|q\(6) & ((!\datapath|sub1|LessThan0~11_cout\) # (!\datapath|reg_pB1|q\(6)))) # (!\datapath|reg_pA1|q\(6) & (!\datapath|reg_pB1|q\(6) & !\datapath|sub1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(6),
	datab => \datapath|reg_pB1|q\(6),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~11_cout\,
	cout => \datapath|sub1|LessThan0~13_cout\);

-- Location: LCCOMB_X20_Y13_N14
\datapath|sub1|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~14_combout\ = (\datapath|reg_pA1|q\(7) & ((\datapath|sub1|LessThan0~13_cout\) # (!\datapath|reg_pB1|q\(7)))) # (!\datapath|reg_pA1|q\(7) & (\datapath|sub1|LessThan0~13_cout\ & !\datapath|reg_pB1|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pA1|q\(7),
	datad => \datapath|reg_pB1|q\(7),
	cin => \datapath|sub1|LessThan0~13_cout\,
	combout => \datapath|sub1|LessThan0~14_combout\);

-- Location: LCCOMB_X19_Y12_N0
\datapath|sub1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~2_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~0_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add0~0_combout\,
	datac => \datapath|sub1|Add1~0_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~2_combout\);

-- Location: LCCOMB_X19_Y12_N12
\datapath|somador_0|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[0]~0_combout\ = (\datapath|sub0|Add1~2_combout\ & (\datapath|sub1|Add1~2_combout\ $ (VCC))) # (!\datapath|sub0|Add1~2_combout\ & (\datapath|sub1|Add1~2_combout\ & VCC))
-- \datapath|somador_0|S[0]~1\ = CARRY((\datapath|sub0|Add1~2_combout\ & \datapath|sub1|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~2_combout\,
	datab => \datapath|sub1|Add1~2_combout\,
	datad => VCC,
	combout => \datapath|somador_0|S[0]~0_combout\,
	cout => \datapath|somador_0|S[0]~1\);

-- Location: LCCOMB_X18_Y12_N8
\datapath|somador_2|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[0]~0_combout\ = (\datapath|somador_1|Add0~0_combout\ & (\datapath|somador_0|S[0]~0_combout\ $ (VCC))) # (!\datapath|somador_1|Add0~0_combout\ & (\datapath|somador_0|S[0]~0_combout\ & VCC))
-- \datapath|somador_2|S[0]~1\ = CARRY((\datapath|somador_1|Add0~0_combout\ & \datapath|somador_0|S[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~0_combout\,
	datab => \datapath|somador_0|S[0]~0_combout\,
	datad => VCC,
	combout => \datapath|somador_2|S[0]~0_combout\,
	cout => \datapath|somador_2|S[0]~1\);

-- Location: LCCOMB_X17_Y12_N4
\datapath|reg_soma|q[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[0]~14_combout\ = (\datapath|reg_soma|q\(0) & (\datapath|somador_2|S[0]~0_combout\ $ (VCC))) # (!\datapath|reg_soma|q\(0) & (\datapath|somador_2|S[0]~0_combout\ & VCC))
-- \datapath|reg_soma|q[0]~15\ = CARRY((\datapath|reg_soma|q\(0) & \datapath|somador_2|S[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(0),
	datab => \datapath|somador_2|S[0]~0_combout\,
	datad => VCC,
	combout => \datapath|reg_soma|q[0]~14_combout\,
	cout => \datapath|reg_soma|q[0]~15\);

-- Location: LCFF_X17_Y12_N5
\datapath|reg_soma|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[0]~14_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(0));

-- Location: LCFF_X17_Y8_N17
\datapath|reg_SAD|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \datapath|reg_soma|q\(0),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(9),
	combout => \mem_A~combout\(9));

-- Location: LCFF_X20_Y13_N3
\datapath|reg_pA1|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(9),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(1));

-- Location: LCCOMB_X19_Y13_N14
\datapath|sub1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~2_combout\ = (\datapath|reg_pB1|q\(1) & ((\datapath|reg_pA1|q\(1) & (!\datapath|sub1|Add0~1\)) # (!\datapath|reg_pA1|q\(1) & ((\datapath|sub1|Add0~1\) # (GND))))) # (!\datapath|reg_pB1|q\(1) & ((\datapath|reg_pA1|q\(1) & 
-- (\datapath|sub1|Add0~1\ & VCC)) # (!\datapath|reg_pA1|q\(1) & (!\datapath|sub1|Add0~1\))))
-- \datapath|sub1|Add0~3\ = CARRY((\datapath|reg_pB1|q\(1) & ((!\datapath|sub1|Add0~1\) # (!\datapath|reg_pA1|q\(1)))) # (!\datapath|reg_pB1|q\(1) & (!\datapath|reg_pA1|q\(1) & !\datapath|sub1|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(1),
	datab => \datapath|reg_pA1|q\(1),
	datad => VCC,
	cin => \datapath|sub1|Add0~1\,
	combout => \datapath|sub1|Add0~2_combout\,
	cout => \datapath|sub1|Add0~3\);

-- Location: LCCOMB_X20_Y13_N18
\datapath|sub1|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~3_combout\ = (\datapath|reg_pA1|q\(1) & ((\datapath|reg_pB1|q\(1) & (!\datapath|sub1|Add1~1\)) # (!\datapath|reg_pB1|q\(1) & ((\datapath|sub1|Add1~1\) # (GND))))) # (!\datapath|reg_pA1|q\(1) & ((\datapath|reg_pB1|q\(1) & 
-- (\datapath|sub1|Add1~1\ & VCC)) # (!\datapath|reg_pB1|q\(1) & (!\datapath|sub1|Add1~1\))))
-- \datapath|sub1|Add1~4\ = CARRY((\datapath|reg_pA1|q\(1) & ((!\datapath|sub1|Add1~1\) # (!\datapath|reg_pB1|q\(1)))) # (!\datapath|reg_pA1|q\(1) & (!\datapath|reg_pB1|q\(1) & !\datapath|sub1|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(1),
	datab => \datapath|reg_pB1|q\(1),
	datad => VCC,
	cin => \datapath|sub1|Add1~1\,
	combout => \datapath|sub1|Add1~3_combout\,
	cout => \datapath|sub1|Add1~4\);

-- Location: LCCOMB_X19_Y13_N8
\datapath|sub1|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~5_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~2_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add0~2_combout\,
	datac => \datapath|sub1|LessThan0~14_combout\,
	datad => \datapath|sub1|Add1~3_combout\,
	combout => \datapath|sub1|Add1~5_combout\);

-- Location: LCCOMB_X19_Y12_N14
\datapath|somador_0|S[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[1]~2_combout\ = (\datapath|sub0|Add1~5_combout\ & ((\datapath|sub1|Add1~5_combout\ & (\datapath|somador_0|S[0]~1\ & VCC)) # (!\datapath|sub1|Add1~5_combout\ & (!\datapath|somador_0|S[0]~1\)))) # (!\datapath|sub0|Add1~5_combout\ & 
-- ((\datapath|sub1|Add1~5_combout\ & (!\datapath|somador_0|S[0]~1\)) # (!\datapath|sub1|Add1~5_combout\ & ((\datapath|somador_0|S[0]~1\) # (GND)))))
-- \datapath|somador_0|S[1]~3\ = CARRY((\datapath|sub0|Add1~5_combout\ & (!\datapath|sub1|Add1~5_combout\ & !\datapath|somador_0|S[0]~1\)) # (!\datapath|sub0|Add1~5_combout\ & ((!\datapath|somador_0|S[0]~1\) # (!\datapath|sub1|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~5_combout\,
	datab => \datapath|sub1|Add1~5_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[0]~1\,
	combout => \datapath|somador_0|S[1]~2_combout\,
	cout => \datapath|somador_0|S[1]~3\);

-- Location: LCCOMB_X18_Y12_N10
\datapath|somador_2|S[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[1]~2_combout\ = (\datapath|somador_1|Add0~2_combout\ & ((\datapath|somador_0|S[1]~2_combout\ & (\datapath|somador_2|S[0]~1\ & VCC)) # (!\datapath|somador_0|S[1]~2_combout\ & (!\datapath|somador_2|S[0]~1\)))) # 
-- (!\datapath|somador_1|Add0~2_combout\ & ((\datapath|somador_0|S[1]~2_combout\ & (!\datapath|somador_2|S[0]~1\)) # (!\datapath|somador_0|S[1]~2_combout\ & ((\datapath|somador_2|S[0]~1\) # (GND)))))
-- \datapath|somador_2|S[1]~3\ = CARRY((\datapath|somador_1|Add0~2_combout\ & (!\datapath|somador_0|S[1]~2_combout\ & !\datapath|somador_2|S[0]~1\)) # (!\datapath|somador_1|Add0~2_combout\ & ((!\datapath|somador_2|S[0]~1\) # 
-- (!\datapath|somador_0|S[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~2_combout\,
	datab => \datapath|somador_0|S[1]~2_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[0]~1\,
	combout => \datapath|somador_2|S[1]~2_combout\,
	cout => \datapath|somador_2|S[1]~3\);

-- Location: LCCOMB_X17_Y12_N6
\datapath|reg_soma|q[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[1]~16_combout\ = (\datapath|reg_soma|q\(1) & ((\datapath|somador_2|S[1]~2_combout\ & (\datapath|reg_soma|q[0]~15\ & VCC)) # (!\datapath|somador_2|S[1]~2_combout\ & (!\datapath|reg_soma|q[0]~15\)))) # (!\datapath|reg_soma|q\(1) & 
-- ((\datapath|somador_2|S[1]~2_combout\ & (!\datapath|reg_soma|q[0]~15\)) # (!\datapath|somador_2|S[1]~2_combout\ & ((\datapath|reg_soma|q[0]~15\) # (GND)))))
-- \datapath|reg_soma|q[1]~17\ = CARRY((\datapath|reg_soma|q\(1) & (!\datapath|somador_2|S[1]~2_combout\ & !\datapath|reg_soma|q[0]~15\)) # (!\datapath|reg_soma|q\(1) & ((!\datapath|reg_soma|q[0]~15\) # (!\datapath|somador_2|S[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(1),
	datab => \datapath|somador_2|S[1]~2_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[0]~15\,
	combout => \datapath|reg_soma|q[1]~16_combout\,
	cout => \datapath|reg_soma|q[1]~17\);

-- Location: LCFF_X17_Y12_N7
\datapath|reg_soma|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[1]~16_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(1));

-- Location: LCCOMB_X17_Y8_N22
\datapath|reg_SAD|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[1]~feeder_combout\ = \datapath|reg_soma|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(1),
	combout => \datapath|reg_SAD|q[1]~feeder_combout\);

-- Location: LCFF_X17_Y8_N23
\datapath|reg_SAD|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[1]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(26),
	combout => \mem_A~combout\(26));

-- Location: LCFF_X14_Y13_N5
\datapath|reg_pA3|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(26),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(2));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(25),
	combout => \mem_B~combout\(25));

-- Location: LCFF_X14_Y13_N19
\datapath|reg_pB3|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(25),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(1));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(24),
	combout => \mem_B~combout\(24));

-- Location: LCFF_X14_Y13_N17
\datapath|reg_pB3|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(24),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(0));

-- Location: LCCOMB_X15_Y13_N8
\datapath|sub3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~4_combout\ = ((\datapath|reg_pB3|q\(2) $ (\datapath|reg_pA3|q\(2) $ (\datapath|sub3|Add0~3\)))) # (GND)
-- \datapath|sub3|Add0~5\ = CARRY((\datapath|reg_pB3|q\(2) & (\datapath|reg_pA3|q\(2) & !\datapath|sub3|Add0~3\)) # (!\datapath|reg_pB3|q\(2) & ((\datapath|reg_pA3|q\(2)) # (!\datapath|sub3|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(2),
	datab => \datapath|reg_pA3|q\(2),
	datad => VCC,
	cin => \datapath|sub3|Add0~3\,
	combout => \datapath|sub3|Add0~4_combout\,
	cout => \datapath|sub3|Add0~5\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(24),
	combout => \mem_A~combout\(24));

-- Location: LCFF_X14_Y13_N1
\datapath|reg_pA3|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(24),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(0));

-- Location: LCCOMB_X14_Y13_N18
\datapath|sub3|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~3_combout\ = (\datapath|reg_pA3|q\(1) & ((\datapath|reg_pB3|q\(1) & (!\datapath|sub3|Add1~1\)) # (!\datapath|reg_pB3|q\(1) & ((\datapath|sub3|Add1~1\) # (GND))))) # (!\datapath|reg_pA3|q\(1) & ((\datapath|reg_pB3|q\(1) & 
-- (\datapath|sub3|Add1~1\ & VCC)) # (!\datapath|reg_pB3|q\(1) & (!\datapath|sub3|Add1~1\))))
-- \datapath|sub3|Add1~4\ = CARRY((\datapath|reg_pA3|q\(1) & ((!\datapath|sub3|Add1~1\) # (!\datapath|reg_pB3|q\(1)))) # (!\datapath|reg_pA3|q\(1) & (!\datapath|reg_pB3|q\(1) & !\datapath|sub3|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(1),
	datab => \datapath|reg_pB3|q\(1),
	datad => VCC,
	cin => \datapath|sub3|Add1~1\,
	combout => \datapath|sub3|Add1~3_combout\,
	cout => \datapath|sub3|Add1~4\);

-- Location: LCCOMB_X14_Y13_N20
\datapath|sub3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~6_combout\ = ((\datapath|reg_pB3|q\(2) $ (\datapath|reg_pA3|q\(2) $ (\datapath|sub3|Add1~4\)))) # (GND)
-- \datapath|sub3|Add1~7\ = CARRY((\datapath|reg_pB3|q\(2) & ((!\datapath|sub3|Add1~4\) # (!\datapath|reg_pA3|q\(2)))) # (!\datapath|reg_pB3|q\(2) & (!\datapath|reg_pA3|q\(2) & !\datapath|sub3|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(2),
	datab => \datapath|reg_pA3|q\(2),
	datad => VCC,
	cin => \datapath|sub3|Add1~4\,
	combout => \datapath|sub3|Add1~6_combout\,
	cout => \datapath|sub3|Add1~7\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(31),
	combout => \mem_A~combout\(31));

-- Location: LCFF_X14_Y13_N15
\datapath|reg_pA3|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(31),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(7));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(31),
	combout => \mem_B~combout\(31));

-- Location: LCFF_X14_Y13_N31
\datapath|reg_pB3|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(31),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(7));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(30),
	combout => \mem_B~combout\(30));

-- Location: LCFF_X14_Y13_N29
\datapath|reg_pB3|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(30),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(6));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(29),
	combout => \mem_B~combout\(29));

-- Location: LCFF_X14_Y13_N27
\datapath|reg_pB3|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(29),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(5));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(28),
	combout => \mem_A~combout\(28));

-- Location: LCFF_X14_Y13_N9
\datapath|reg_pA3|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(28),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(4));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(27),
	combout => \mem_B~combout\(27));

-- Location: LCFF_X14_Y13_N23
\datapath|reg_pB3|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(27),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(3));

-- Location: LCCOMB_X14_Y13_N0
\datapath|sub3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~1_cout\ = CARRY((!\datapath|reg_pB3|q\(0) & \datapath|reg_pA3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(0),
	datab => \datapath|reg_pA3|q\(0),
	datad => VCC,
	cout => \datapath|sub3|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y13_N2
\datapath|sub3|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~3_cout\ = CARRY((\datapath|reg_pA3|q\(1) & (\datapath|reg_pB3|q\(1) & !\datapath|sub3|LessThan0~1_cout\)) # (!\datapath|reg_pA3|q\(1) & ((\datapath|reg_pB3|q\(1)) # (!\datapath|sub3|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(1),
	datab => \datapath|reg_pB3|q\(1),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~1_cout\,
	cout => \datapath|sub3|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y13_N4
\datapath|sub3|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~5_cout\ = CARRY((\datapath|reg_pB3|q\(2) & (\datapath|reg_pA3|q\(2) & !\datapath|sub3|LessThan0~3_cout\)) # (!\datapath|reg_pB3|q\(2) & ((\datapath|reg_pA3|q\(2)) # (!\datapath|sub3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(2),
	datab => \datapath|reg_pA3|q\(2),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~3_cout\,
	cout => \datapath|sub3|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y13_N6
\datapath|sub3|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~7_cout\ = CARRY((\datapath|reg_pA3|q\(3) & (\datapath|reg_pB3|q\(3) & !\datapath|sub3|LessThan0~5_cout\)) # (!\datapath|reg_pA3|q\(3) & ((\datapath|reg_pB3|q\(3)) # (!\datapath|sub3|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(3),
	datab => \datapath|reg_pB3|q\(3),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~5_cout\,
	cout => \datapath|sub3|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y13_N8
\datapath|sub3|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~9_cout\ = CARRY((\datapath|reg_pB3|q\(4) & (\datapath|reg_pA3|q\(4) & !\datapath|sub3|LessThan0~7_cout\)) # (!\datapath|reg_pB3|q\(4) & ((\datapath|reg_pA3|q\(4)) # (!\datapath|sub3|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(4),
	datab => \datapath|reg_pA3|q\(4),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~7_cout\,
	cout => \datapath|sub3|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y13_N10
\datapath|sub3|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~11_cout\ = CARRY((\datapath|reg_pA3|q\(5) & (\datapath|reg_pB3|q\(5) & !\datapath|sub3|LessThan0~9_cout\)) # (!\datapath|reg_pA3|q\(5) & ((\datapath|reg_pB3|q\(5)) # (!\datapath|sub3|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(5),
	datab => \datapath|reg_pB3|q\(5),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~9_cout\,
	cout => \datapath|sub3|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y13_N12
\datapath|sub3|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~13_cout\ = CARRY((\datapath|reg_pA3|q\(6) & ((!\datapath|sub3|LessThan0~11_cout\) # (!\datapath|reg_pB3|q\(6)))) # (!\datapath|reg_pA3|q\(6) & (!\datapath|reg_pB3|q\(6) & !\datapath|sub3|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(6),
	datab => \datapath|reg_pB3|q\(6),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~11_cout\,
	cout => \datapath|sub3|LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y13_N14
\datapath|sub3|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~14_combout\ = (\datapath|reg_pA3|q\(7) & ((\datapath|sub3|LessThan0~13_cout\) # (!\datapath|reg_pB3|q\(7)))) # (!\datapath|reg_pA3|q\(7) & (\datapath|sub3|LessThan0~13_cout\ & !\datapath|reg_pB3|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pA3|q\(7),
	datad => \datapath|reg_pB3|q\(7),
	cin => \datapath|sub3|LessThan0~13_cout\,
	combout => \datapath|sub3|LessThan0~14_combout\);

-- Location: LCCOMB_X15_Y13_N28
\datapath|sub3|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~8_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~4_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add0~4_combout\,
	datac => \datapath|sub3|Add1~6_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~8_combout\);

-- Location: LCCOMB_X15_Y13_N2
\datapath|sub3|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~5_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~2_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add0~2_combout\,
	datab => \datapath|sub3|Add1~3_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~5_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(16),
	combout => \mem_B~combout\(16));

-- Location: LCFF_X14_Y12_N1
\datapath|reg_pB2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(16),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(0));

-- Location: LCCOMB_X14_Y12_N0
\datapath|sub2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~0_combout\ = (\datapath|reg_pA2|q\(0) & (\datapath|reg_pB2|q\(0) $ (VCC))) # (!\datapath|reg_pA2|q\(0) & ((\datapath|reg_pB2|q\(0)) # (GND)))
-- \datapath|sub2|Add1~1\ = CARRY((\datapath|reg_pB2|q\(0)) # (!\datapath|reg_pA2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(0),
	datab => \datapath|reg_pB2|q\(0),
	datad => VCC,
	combout => \datapath|sub2|Add1~0_combout\,
	cout => \datapath|sub2|Add1~1\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(23),
	combout => \mem_B~combout\(23));

-- Location: LCFF_X14_Y12_N15
\datapath|reg_pB2|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(23),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(7));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(23),
	combout => \mem_A~combout\(23));

-- Location: LCFF_X14_Y12_N31
\datapath|reg_pA2|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(23),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(7));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(22),
	combout => \mem_A~combout\(22));

-- Location: LCFF_X14_Y12_N29
\datapath|reg_pA2|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(22),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(6));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(21),
	combout => \mem_A~combout\(21));

-- Location: LCFF_X14_Y12_N27
\datapath|reg_pA2|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(21),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(20),
	combout => \mem_B~combout\(20));

-- Location: LCFF_X14_Y12_N9
\datapath|reg_pB2|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(20),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(19),
	combout => \mem_A~combout\(19));

-- Location: LCFF_X14_Y12_N23
\datapath|reg_pA2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(19),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(18),
	combout => \mem_B~combout\(18));

-- Location: LCFF_X14_Y12_N5
\datapath|reg_pB2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(18),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(2));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(17),
	combout => \mem_B~combout\(17));

-- Location: LCFF_X14_Y12_N3
\datapath|reg_pB2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(17),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(1));

-- Location: LCCOMB_X14_Y12_N16
\datapath|sub2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~1_cout\ = CARRY((\datapath|reg_pA2|q\(0) & !\datapath|reg_pB2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(0),
	datab => \datapath|reg_pB2|q\(0),
	datad => VCC,
	cout => \datapath|sub2|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y12_N18
\datapath|sub2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~3_cout\ = CARRY((\datapath|reg_pA2|q\(1) & (\datapath|reg_pB2|q\(1) & !\datapath|sub2|LessThan0~1_cout\)) # (!\datapath|reg_pA2|q\(1) & ((\datapath|reg_pB2|q\(1)) # (!\datapath|sub2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(1),
	datab => \datapath|reg_pB2|q\(1),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~1_cout\,
	cout => \datapath|sub2|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y12_N20
\datapath|sub2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~5_cout\ = CARRY((\datapath|reg_pA2|q\(2) & ((!\datapath|sub2|LessThan0~3_cout\) # (!\datapath|reg_pB2|q\(2)))) # (!\datapath|reg_pA2|q\(2) & (!\datapath|reg_pB2|q\(2) & !\datapath|sub2|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(2),
	datab => \datapath|reg_pB2|q\(2),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~3_cout\,
	cout => \datapath|sub2|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y12_N22
\datapath|sub2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~7_cout\ = CARRY((\datapath|reg_pB2|q\(3) & ((!\datapath|sub2|LessThan0~5_cout\) # (!\datapath|reg_pA2|q\(3)))) # (!\datapath|reg_pB2|q\(3) & (!\datapath|reg_pA2|q\(3) & !\datapath|sub2|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(3),
	datab => \datapath|reg_pA2|q\(3),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~5_cout\,
	cout => \datapath|sub2|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y12_N24
\datapath|sub2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~9_cout\ = CARRY((\datapath|reg_pA2|q\(4) & ((!\datapath|sub2|LessThan0~7_cout\) # (!\datapath|reg_pB2|q\(4)))) # (!\datapath|reg_pA2|q\(4) & (!\datapath|reg_pB2|q\(4) & !\datapath|sub2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(4),
	datab => \datapath|reg_pB2|q\(4),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~7_cout\,
	cout => \datapath|sub2|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y12_N26
\datapath|sub2|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~11_cout\ = CARRY((\datapath|reg_pB2|q\(5) & ((!\datapath|sub2|LessThan0~9_cout\) # (!\datapath|reg_pA2|q\(5)))) # (!\datapath|reg_pB2|q\(5) & (!\datapath|reg_pA2|q\(5) & !\datapath|sub2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(5),
	datab => \datapath|reg_pA2|q\(5),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~9_cout\,
	cout => \datapath|sub2|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y12_N28
\datapath|sub2|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~13_cout\ = CARRY((\datapath|reg_pB2|q\(6) & (\datapath|reg_pA2|q\(6) & !\datapath|sub2|LessThan0~11_cout\)) # (!\datapath|reg_pB2|q\(6) & ((\datapath|reg_pA2|q\(6)) # (!\datapath|sub2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(6),
	datab => \datapath|reg_pA2|q\(6),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~11_cout\,
	cout => \datapath|sub2|LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y12_N30
\datapath|sub2|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~14_combout\ = (\datapath|reg_pB2|q\(7) & (\datapath|sub2|LessThan0~13_cout\ & \datapath|reg_pA2|q\(7))) # (!\datapath|reg_pB2|q\(7) & ((\datapath|sub2|LessThan0~13_cout\) # (\datapath|reg_pA2|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pB2|q\(7),
	datad => \datapath|reg_pA2|q\(7),
	cin => \datapath|sub2|LessThan0~13_cout\,
	combout => \datapath|sub2|LessThan0~14_combout\);

-- Location: LCCOMB_X15_Y12_N0
\datapath|sub2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~2_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~0_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add0~0_combout\,
	datac => \datapath|sub2|Add1~0_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~2_combout\);

-- Location: LCCOMB_X15_Y12_N6
\datapath|somador_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~4_combout\ = ((\datapath|sub2|Add1~8_combout\ $ (\datapath|sub3|Add1~8_combout\ $ (!\datapath|somador_1|Add0~3\)))) # (GND)
-- \datapath|somador_1|Add0~5\ = CARRY((\datapath|sub2|Add1~8_combout\ & ((\datapath|sub3|Add1~8_combout\) # (!\datapath|somador_1|Add0~3\))) # (!\datapath|sub2|Add1~8_combout\ & (\datapath|sub3|Add1~8_combout\ & !\datapath|somador_1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~8_combout\,
	datab => \datapath|sub3|Add1~8_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~3\,
	combout => \datapath|somador_1|Add0~4_combout\,
	cout => \datapath|somador_1|Add0~5\);

-- Location: LCCOMB_X18_Y12_N12
\datapath|somador_2|S[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[2]~4_combout\ = ((\datapath|somador_0|S[2]~4_combout\ $ (\datapath|somador_1|Add0~4_combout\ $ (!\datapath|somador_2|S[1]~3\)))) # (GND)
-- \datapath|somador_2|S[2]~5\ = CARRY((\datapath|somador_0|S[2]~4_combout\ & ((\datapath|somador_1|Add0~4_combout\) # (!\datapath|somador_2|S[1]~3\))) # (!\datapath|somador_0|S[2]~4_combout\ & (\datapath|somador_1|Add0~4_combout\ & 
-- !\datapath|somador_2|S[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_0|S[2]~4_combout\,
	datab => \datapath|somador_1|Add0~4_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[1]~3\,
	combout => \datapath|somador_2|S[2]~4_combout\,
	cout => \datapath|somador_2|S[2]~5\);

-- Location: LCCOMB_X17_Y12_N8
\datapath|reg_soma|q[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[2]~18_combout\ = ((\datapath|reg_soma|q\(2) $ (\datapath|somador_2|S[2]~4_combout\ $ (!\datapath|reg_soma|q[1]~17\)))) # (GND)
-- \datapath|reg_soma|q[2]~19\ = CARRY((\datapath|reg_soma|q\(2) & ((\datapath|somador_2|S[2]~4_combout\) # (!\datapath|reg_soma|q[1]~17\))) # (!\datapath|reg_soma|q\(2) & (\datapath|somador_2|S[2]~4_combout\ & !\datapath|reg_soma|q[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(2),
	datab => \datapath|somador_2|S[2]~4_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[1]~17\,
	combout => \datapath|reg_soma|q[2]~18_combout\,
	cout => \datapath|reg_soma|q[2]~19\);

-- Location: LCFF_X17_Y12_N9
\datapath|reg_soma|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[2]~18_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(2));

-- Location: LCCOMB_X17_Y13_N0
\datapath|reg_SAD|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[2]~feeder_combout\ = \datapath|reg_soma|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(2),
	combout => \datapath|reg_SAD|q[2]~feeder_combout\);

-- Location: LCFF_X17_Y13_N1
\datapath|reg_SAD|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[2]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(2));

-- Location: LCCOMB_X20_Y13_N22
\datapath|sub1|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~9_combout\ = (\datapath|reg_pA1|q\(3) & ((\datapath|reg_pB1|q\(3) & (!\datapath|sub1|Add1~7\)) # (!\datapath|reg_pB1|q\(3) & ((\datapath|sub1|Add1~7\) # (GND))))) # (!\datapath|reg_pA1|q\(3) & ((\datapath|reg_pB1|q\(3) & 
-- (\datapath|sub1|Add1~7\ & VCC)) # (!\datapath|reg_pB1|q\(3) & (!\datapath|sub1|Add1~7\))))
-- \datapath|sub1|Add1~10\ = CARRY((\datapath|reg_pA1|q\(3) & ((!\datapath|sub1|Add1~7\) # (!\datapath|reg_pB1|q\(3)))) # (!\datapath|reg_pA1|q\(3) & (!\datapath|reg_pB1|q\(3) & !\datapath|sub1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(3),
	datab => \datapath|reg_pB1|q\(3),
	datad => VCC,
	cin => \datapath|sub1|Add1~7\,
	combout => \datapath|sub1|Add1~9_combout\,
	cout => \datapath|sub1|Add1~10\);

-- Location: LCCOMB_X19_Y12_N4
\datapath|sub1|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~11_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~6_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add0~6_combout\,
	datab => \datapath|sub1|Add1~9_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~11_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(2),
	combout => \mem_B~combout\(2));

-- Location: LCFF_X21_Y12_N5
\datapath|reg_pB0|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(2),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(1),
	combout => \mem_B~combout\(1));

-- Location: LCFF_X21_Y12_N3
\datapath|reg_pB0|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(1),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(1));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(0),
	combout => \mem_B~combout\(0));

-- Location: LCFF_X21_Y12_N1
\datapath|reg_pB0|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(0),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(0));

-- Location: LCCOMB_X21_Y12_N4
\datapath|sub0|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~6_combout\ = ((\datapath|reg_pA0|q\(2) $ (\datapath|reg_pB0|q\(2) $ (\datapath|sub0|Add1~4\)))) # (GND)
-- \datapath|sub0|Add1~7\ = CARRY((\datapath|reg_pA0|q\(2) & (\datapath|reg_pB0|q\(2) & !\datapath|sub0|Add1~4\)) # (!\datapath|reg_pA0|q\(2) & ((\datapath|reg_pB0|q\(2)) # (!\datapath|sub0|Add1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(2),
	datab => \datapath|reg_pB0|q\(2),
	datad => VCC,
	cin => \datapath|sub0|Add1~4\,
	combout => \datapath|sub0|Add1~6_combout\,
	cout => \datapath|sub0|Add1~7\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(7),
	combout => \mem_B~combout\(7));

-- Location: LCFF_X21_Y12_N15
\datapath|reg_pB0|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(7),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(7));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(7),
	combout => \mem_A~combout\(7));

-- Location: LCFF_X21_Y12_N31
\datapath|reg_pA0|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(7),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(7));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(6),
	combout => \mem_A~combout\(6));

-- Location: LCFF_X21_Y12_N29
\datapath|reg_pA0|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(6),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(6));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(5),
	combout => \mem_A~combout\(5));

-- Location: LCFF_X21_Y12_N27
\datapath|reg_pA0|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(5),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(5));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(4),
	combout => \mem_B~combout\(4));

-- Location: LCFF_X21_Y12_N9
\datapath|reg_pB0|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(4),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB0|q\(4));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(3),
	combout => \mem_A~combout\(3));

-- Location: LCFF_X21_Y12_N23
\datapath|reg_pA0|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(3),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA0|q\(3));

-- Location: LCCOMB_X21_Y12_N16
\datapath|sub0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~1_cout\ = CARRY((\datapath|reg_pA0|q\(0) & !\datapath|reg_pB0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(0),
	datab => \datapath|reg_pB0|q\(0),
	datad => VCC,
	cout => \datapath|sub0|LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y12_N18
\datapath|sub0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~3_cout\ = CARRY((\datapath|reg_pA0|q\(1) & (\datapath|reg_pB0|q\(1) & !\datapath|sub0|LessThan0~1_cout\)) # (!\datapath|reg_pA0|q\(1) & ((\datapath|reg_pB0|q\(1)) # (!\datapath|sub0|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(1),
	datab => \datapath|reg_pB0|q\(1),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~1_cout\,
	cout => \datapath|sub0|LessThan0~3_cout\);

-- Location: LCCOMB_X21_Y12_N20
\datapath|sub0|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~5_cout\ = CARRY((\datapath|reg_pA0|q\(2) & ((!\datapath|sub0|LessThan0~3_cout\) # (!\datapath|reg_pB0|q\(2)))) # (!\datapath|reg_pA0|q\(2) & (!\datapath|reg_pB0|q\(2) & !\datapath|sub0|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(2),
	datab => \datapath|reg_pB0|q\(2),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~3_cout\,
	cout => \datapath|sub0|LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y12_N22
\datapath|sub0|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~7_cout\ = CARRY((\datapath|reg_pB0|q\(3) & ((!\datapath|sub0|LessThan0~5_cout\) # (!\datapath|reg_pA0|q\(3)))) # (!\datapath|reg_pB0|q\(3) & (!\datapath|reg_pA0|q\(3) & !\datapath|sub0|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(3),
	datab => \datapath|reg_pA0|q\(3),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~5_cout\,
	cout => \datapath|sub0|LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y12_N24
\datapath|sub0|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~9_cout\ = CARRY((\datapath|reg_pA0|q\(4) & ((!\datapath|sub0|LessThan0~7_cout\) # (!\datapath|reg_pB0|q\(4)))) # (!\datapath|reg_pA0|q\(4) & (!\datapath|reg_pB0|q\(4) & !\datapath|sub0|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(4),
	datab => \datapath|reg_pB0|q\(4),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~7_cout\,
	cout => \datapath|sub0|LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y12_N26
\datapath|sub0|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~11_cout\ = CARRY((\datapath|reg_pB0|q\(5) & ((!\datapath|sub0|LessThan0~9_cout\) # (!\datapath|reg_pA0|q\(5)))) # (!\datapath|reg_pB0|q\(5) & (!\datapath|reg_pA0|q\(5) & !\datapath|sub0|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(5),
	datab => \datapath|reg_pA0|q\(5),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~9_cout\,
	cout => \datapath|sub0|LessThan0~11_cout\);

-- Location: LCCOMB_X21_Y12_N28
\datapath|sub0|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~13_cout\ = CARRY((\datapath|reg_pB0|q\(6) & (\datapath|reg_pA0|q\(6) & !\datapath|sub0|LessThan0~11_cout\)) # (!\datapath|reg_pB0|q\(6) & ((\datapath|reg_pA0|q\(6)) # (!\datapath|sub0|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(6),
	datab => \datapath|reg_pA0|q\(6),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~11_cout\,
	cout => \datapath|sub0|LessThan0~13_cout\);

-- Location: LCCOMB_X21_Y12_N30
\datapath|sub0|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~14_combout\ = (\datapath|reg_pB0|q\(7) & (\datapath|sub0|LessThan0~13_cout\ & \datapath|reg_pA0|q\(7))) # (!\datapath|reg_pB0|q\(7) & ((\datapath|sub0|LessThan0~13_cout\) # (\datapath|reg_pA0|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pB0|q\(7),
	datad => \datapath|reg_pA0|q\(7),
	cin => \datapath|sub0|LessThan0~13_cout\,
	combout => \datapath|sub0|LessThan0~14_combout\);

-- Location: LCCOMB_X20_Y12_N24
\datapath|sub0|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~8_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~4_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add0~4_combout\,
	datac => \datapath|sub0|Add1~6_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~8_combout\);

-- Location: LCCOMB_X19_Y12_N18
\datapath|somador_0|S[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[3]~6_combout\ = (\datapath|sub0|Add1~11_combout\ & ((\datapath|sub1|Add1~11_combout\ & (\datapath|somador_0|S[2]~5\ & VCC)) # (!\datapath|sub1|Add1~11_combout\ & (!\datapath|somador_0|S[2]~5\)))) # (!\datapath|sub0|Add1~11_combout\ & 
-- ((\datapath|sub1|Add1~11_combout\ & (!\datapath|somador_0|S[2]~5\)) # (!\datapath|sub1|Add1~11_combout\ & ((\datapath|somador_0|S[2]~5\) # (GND)))))
-- \datapath|somador_0|S[3]~7\ = CARRY((\datapath|sub0|Add1~11_combout\ & (!\datapath|sub1|Add1~11_combout\ & !\datapath|somador_0|S[2]~5\)) # (!\datapath|sub0|Add1~11_combout\ & ((!\datapath|somador_0|S[2]~5\) # (!\datapath|sub1|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~11_combout\,
	datab => \datapath|sub1|Add1~11_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[2]~5\,
	combout => \datapath|somador_0|S[3]~6_combout\,
	cout => \datapath|somador_0|S[3]~7\);

-- Location: LCCOMB_X18_Y12_N14
\datapath|somador_2|S[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[3]~6_combout\ = (\datapath|somador_1|Add0~6_combout\ & ((\datapath|somador_0|S[3]~6_combout\ & (\datapath|somador_2|S[2]~5\ & VCC)) # (!\datapath|somador_0|S[3]~6_combout\ & (!\datapath|somador_2|S[2]~5\)))) # 
-- (!\datapath|somador_1|Add0~6_combout\ & ((\datapath|somador_0|S[3]~6_combout\ & (!\datapath|somador_2|S[2]~5\)) # (!\datapath|somador_0|S[3]~6_combout\ & ((\datapath|somador_2|S[2]~5\) # (GND)))))
-- \datapath|somador_2|S[3]~7\ = CARRY((\datapath|somador_1|Add0~6_combout\ & (!\datapath|somador_0|S[3]~6_combout\ & !\datapath|somador_2|S[2]~5\)) # (!\datapath|somador_1|Add0~6_combout\ & ((!\datapath|somador_2|S[2]~5\) # 
-- (!\datapath|somador_0|S[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~6_combout\,
	datab => \datapath|somador_0|S[3]~6_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[2]~5\,
	combout => \datapath|somador_2|S[3]~6_combout\,
	cout => \datapath|somador_2|S[3]~7\);

-- Location: LCCOMB_X17_Y12_N10
\datapath|reg_soma|q[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[3]~20_combout\ = (\datapath|reg_soma|q\(3) & ((\datapath|somador_2|S[3]~6_combout\ & (\datapath|reg_soma|q[2]~19\ & VCC)) # (!\datapath|somador_2|S[3]~6_combout\ & (!\datapath|reg_soma|q[2]~19\)))) # (!\datapath|reg_soma|q\(3) & 
-- ((\datapath|somador_2|S[3]~6_combout\ & (!\datapath|reg_soma|q[2]~19\)) # (!\datapath|somador_2|S[3]~6_combout\ & ((\datapath|reg_soma|q[2]~19\) # (GND)))))
-- \datapath|reg_soma|q[3]~21\ = CARRY((\datapath|reg_soma|q\(3) & (!\datapath|somador_2|S[3]~6_combout\ & !\datapath|reg_soma|q[2]~19\)) # (!\datapath|reg_soma|q\(3) & ((!\datapath|reg_soma|q[2]~19\) # (!\datapath|somador_2|S[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(3),
	datab => \datapath|somador_2|S[3]~6_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[2]~19\,
	combout => \datapath|reg_soma|q[3]~20_combout\,
	cout => \datapath|reg_soma|q[3]~21\);

-- Location: LCFF_X17_Y12_N11
\datapath|reg_soma|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[3]~20_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(3));

-- Location: LCCOMB_X17_Y12_N0
\datapath|reg_SAD|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[3]~feeder_combout\ = \datapath|reg_soma|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(3),
	combout => \datapath|reg_SAD|q[3]~feeder_combout\);

-- Location: LCFF_X17_Y12_N1
\datapath|reg_SAD|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[3]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(3));

-- Location: LCCOMB_X17_Y12_N12
\datapath|reg_soma|q[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[4]~22_combout\ = ((\datapath|somador_2|S[4]~8_combout\ $ (\datapath|reg_soma|q\(4) $ (!\datapath|reg_soma|q[3]~21\)))) # (GND)
-- \datapath|reg_soma|q[4]~23\ = CARRY((\datapath|somador_2|S[4]~8_combout\ & ((\datapath|reg_soma|q\(4)) # (!\datapath|reg_soma|q[3]~21\))) # (!\datapath|somador_2|S[4]~8_combout\ & (\datapath|reg_soma|q\(4) & !\datapath|reg_soma|q[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_2|S[4]~8_combout\,
	datab => \datapath|reg_soma|q\(4),
	datad => VCC,
	cin => \datapath|reg_soma|q[3]~21\,
	combout => \datapath|reg_soma|q[4]~22_combout\,
	cout => \datapath|reg_soma|q[4]~23\);

-- Location: LCFF_X17_Y12_N13
\datapath|reg_soma|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[4]~22_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(4));

-- Location: LCFF_X17_Y13_N11
\datapath|reg_SAD|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \datapath|reg_soma|q\(4),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(4));

-- Location: LCCOMB_X21_Y12_N8
\datapath|sub0|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~12_combout\ = ((\datapath|reg_pA0|q\(4) $ (\datapath|reg_pB0|q\(4) $ (\datapath|sub0|Add1~10\)))) # (GND)
-- \datapath|sub0|Add1~13\ = CARRY((\datapath|reg_pA0|q\(4) & (\datapath|reg_pB0|q\(4) & !\datapath|sub0|Add1~10\)) # (!\datapath|reg_pA0|q\(4) & ((\datapath|reg_pB0|q\(4)) # (!\datapath|sub0|Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(4),
	datab => \datapath|reg_pB0|q\(4),
	datad => VCC,
	cin => \datapath|sub0|Add1~10\,
	combout => \datapath|sub0|Add1~12_combout\,
	cout => \datapath|sub0|Add1~13\);

-- Location: LCCOMB_X20_Y12_N22
\datapath|sub0|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~17_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~10_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add0~10_combout\,
	datac => \datapath|sub0|Add1~15_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~17_combout\);

-- Location: LCCOMB_X20_Y12_N28
\datapath|sub0|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~14_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~8_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add0~8_combout\,
	datac => \datapath|sub0|Add1~12_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~14_combout\);

-- Location: LCCOMB_X19_Y12_N22
\datapath|somador_0|S[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[5]~10_combout\ = (\datapath|sub1|Add1~17_combout\ & ((\datapath|sub0|Add1~17_combout\ & (\datapath|somador_0|S[4]~9\ & VCC)) # (!\datapath|sub0|Add1~17_combout\ & (!\datapath|somador_0|S[4]~9\)))) # (!\datapath|sub1|Add1~17_combout\ 
-- & ((\datapath|sub0|Add1~17_combout\ & (!\datapath|somador_0|S[4]~9\)) # (!\datapath|sub0|Add1~17_combout\ & ((\datapath|somador_0|S[4]~9\) # (GND)))))
-- \datapath|somador_0|S[5]~11\ = CARRY((\datapath|sub1|Add1~17_combout\ & (!\datapath|sub0|Add1~17_combout\ & !\datapath|somador_0|S[4]~9\)) # (!\datapath|sub1|Add1~17_combout\ & ((!\datapath|somador_0|S[4]~9\) # (!\datapath|sub0|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add1~17_combout\,
	datab => \datapath|sub0|Add1~17_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[4]~9\,
	combout => \datapath|somador_0|S[5]~10_combout\,
	cout => \datapath|somador_0|S[5]~11\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(19),
	combout => \mem_B~combout\(19));

-- Location: LCFF_X14_Y12_N7
\datapath|reg_pB2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(19),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(3));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(18),
	combout => \mem_A~combout\(18));

-- Location: LCFF_X14_Y12_N21
\datapath|reg_pA2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(18),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(2));

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(17),
	combout => \mem_A~combout\(17));

-- Location: LCFF_X14_Y12_N19
\datapath|reg_pA2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(17),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA2|q\(1));

-- Location: LCCOMB_X13_Y12_N10
\datapath|sub2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~8_combout\ = ((\datapath|reg_pA2|q\(4) $ (\datapath|reg_pB2|q\(4) $ (\datapath|sub2|Add0~7\)))) # (GND)
-- \datapath|sub2|Add0~9\ = CARRY((\datapath|reg_pA2|q\(4) & ((!\datapath|sub2|Add0~7\) # (!\datapath|reg_pB2|q\(4)))) # (!\datapath|reg_pA2|q\(4) & (!\datapath|reg_pB2|q\(4) & !\datapath|sub2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(4),
	datab => \datapath|reg_pB2|q\(4),
	datad => VCC,
	cin => \datapath|sub2|Add0~7\,
	combout => \datapath|sub2|Add0~8_combout\,
	cout => \datapath|sub2|Add0~9\);

-- Location: LCCOMB_X15_Y12_N28
\datapath|sub2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~14_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~8_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~12_combout\,
	datac => \datapath|sub2|LessThan0~14_combout\,
	datad => \datapath|sub2|Add0~8_combout\,
	combout => \datapath|sub2|Add1~14_combout\);

-- Location: LCCOMB_X14_Y12_N6
\datapath|sub2|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~9_combout\ = (\datapath|reg_pB2|q\(3) & ((\datapath|reg_pA2|q\(3) & (!\datapath|sub2|Add1~7\)) # (!\datapath|reg_pA2|q\(3) & (\datapath|sub2|Add1~7\ & VCC)))) # (!\datapath|reg_pB2|q\(3) & ((\datapath|reg_pA2|q\(3) & 
-- ((\datapath|sub2|Add1~7\) # (GND))) # (!\datapath|reg_pA2|q\(3) & (!\datapath|sub2|Add1~7\))))
-- \datapath|sub2|Add1~10\ = CARRY((\datapath|reg_pB2|q\(3) & (\datapath|reg_pA2|q\(3) & !\datapath|sub2|Add1~7\)) # (!\datapath|reg_pB2|q\(3) & ((\datapath|reg_pA2|q\(3)) # (!\datapath|sub2|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(3),
	datab => \datapath|reg_pA2|q\(3),
	datad => VCC,
	cin => \datapath|sub2|Add1~7\,
	combout => \datapath|sub2|Add1~9_combout\,
	cout => \datapath|sub2|Add1~10\);

-- Location: LCCOMB_X15_Y12_N22
\datapath|sub2|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~11_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~6_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add0~6_combout\,
	datab => \datapath|sub2|Add1~9_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~11_combout\);

-- Location: LCCOMB_X15_Y12_N10
\datapath|somador_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~8_combout\ = ((\datapath|sub3|Add1~14_combout\ $ (\datapath|sub2|Add1~14_combout\ $ (!\datapath|somador_1|Add0~7\)))) # (GND)
-- \datapath|somador_1|Add0~9\ = CARRY((\datapath|sub3|Add1~14_combout\ & ((\datapath|sub2|Add1~14_combout\) # (!\datapath|somador_1|Add0~7\))) # (!\datapath|sub3|Add1~14_combout\ & (\datapath|sub2|Add1~14_combout\ & !\datapath|somador_1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~14_combout\,
	datab => \datapath|sub2|Add1~14_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~7\,
	combout => \datapath|somador_1|Add0~8_combout\,
	cout => \datapath|somador_1|Add0~9\);

-- Location: LCCOMB_X18_Y12_N18
\datapath|somador_2|S[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[5]~10_combout\ = (\datapath|somador_1|Add0~10_combout\ & ((\datapath|somador_0|S[5]~10_combout\ & (\datapath|somador_2|S[4]~9\ & VCC)) # (!\datapath|somador_0|S[5]~10_combout\ & (!\datapath|somador_2|S[4]~9\)))) # 
-- (!\datapath|somador_1|Add0~10_combout\ & ((\datapath|somador_0|S[5]~10_combout\ & (!\datapath|somador_2|S[4]~9\)) # (!\datapath|somador_0|S[5]~10_combout\ & ((\datapath|somador_2|S[4]~9\) # (GND)))))
-- \datapath|somador_2|S[5]~11\ = CARRY((\datapath|somador_1|Add0~10_combout\ & (!\datapath|somador_0|S[5]~10_combout\ & !\datapath|somador_2|S[4]~9\)) # (!\datapath|somador_1|Add0~10_combout\ & ((!\datapath|somador_2|S[4]~9\) # 
-- (!\datapath|somador_0|S[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~10_combout\,
	datab => \datapath|somador_0|S[5]~10_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[4]~9\,
	combout => \datapath|somador_2|S[5]~10_combout\,
	cout => \datapath|somador_2|S[5]~11\);

-- Location: LCCOMB_X17_Y12_N14
\datapath|reg_soma|q[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[5]~24_combout\ = (\datapath|reg_soma|q\(5) & ((\datapath|somador_2|S[5]~10_combout\ & (\datapath|reg_soma|q[4]~23\ & VCC)) # (!\datapath|somador_2|S[5]~10_combout\ & (!\datapath|reg_soma|q[4]~23\)))) # (!\datapath|reg_soma|q\(5) & 
-- ((\datapath|somador_2|S[5]~10_combout\ & (!\datapath|reg_soma|q[4]~23\)) # (!\datapath|somador_2|S[5]~10_combout\ & ((\datapath|reg_soma|q[4]~23\) # (GND)))))
-- \datapath|reg_soma|q[5]~25\ = CARRY((\datapath|reg_soma|q\(5) & (!\datapath|somador_2|S[5]~10_combout\ & !\datapath|reg_soma|q[4]~23\)) # (!\datapath|reg_soma|q\(5) & ((!\datapath|reg_soma|q[4]~23\) # (!\datapath|somador_2|S[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(5),
	datab => \datapath|somador_2|S[5]~10_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[4]~23\,
	combout => \datapath|reg_soma|q[5]~24_combout\,
	cout => \datapath|reg_soma|q[5]~25\);

-- Location: LCFF_X17_Y12_N15
\datapath|reg_soma|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[5]~24_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(5));

-- Location: LCFF_X17_Y13_N5
\datapath|reg_SAD|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \datapath|reg_soma|q\(5),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(5));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(13),
	combout => \mem_A~combout\(13));

-- Location: LCFF_X20_Y13_N11
\datapath|reg_pA1|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(13),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA1|q\(5));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(10),
	combout => \mem_B~combout\(10));

-- Location: LCFF_X20_Y13_N21
\datapath|reg_pB1|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(10),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB1|q\(2));

-- Location: LCCOMB_X19_Y13_N24
\datapath|sub1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~12_combout\ = ((\datapath|reg_pA1|q\(6) $ (\datapath|reg_pB1|q\(6) $ (\datapath|sub1|Add0~11\)))) # (GND)
-- \datapath|sub1|Add0~13\ = CARRY((\datapath|reg_pA1|q\(6) & ((!\datapath|sub1|Add0~11\) # (!\datapath|reg_pB1|q\(6)))) # (!\datapath|reg_pA1|q\(6) & (!\datapath|reg_pB1|q\(6) & !\datapath|sub1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(6),
	datab => \datapath|reg_pB1|q\(6),
	datad => VCC,
	cin => \datapath|sub1|Add0~11\,
	combout => \datapath|sub1|Add0~12_combout\,
	cout => \datapath|sub1|Add0~13\);

-- Location: LCCOMB_X20_Y13_N28
\datapath|sub1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~18_combout\ = ((\datapath|reg_pA1|q\(6) $ (\datapath|reg_pB1|q\(6) $ (\datapath|sub1|Add1~16\)))) # (GND)
-- \datapath|sub1|Add1~19\ = CARRY((\datapath|reg_pA1|q\(6) & (\datapath|reg_pB1|q\(6) & !\datapath|sub1|Add1~16\)) # (!\datapath|reg_pA1|q\(6) & ((\datapath|reg_pB1|q\(6)) # (!\datapath|sub1|Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(6),
	datab => \datapath|reg_pB1|q\(6),
	datad => VCC,
	cin => \datapath|sub1|Add1~16\,
	combout => \datapath|sub1|Add1~18_combout\,
	cout => \datapath|sub1|Add1~19\);

-- Location: LCCOMB_X19_Y12_N30
\datapath|sub1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~20_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~12_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add0~12_combout\,
	datac => \datapath|sub1|Add1~18_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~20_combout\);

-- Location: LCCOMB_X19_Y12_N24
\datapath|somador_0|S[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[6]~12_combout\ = ((\datapath|sub0|Add1~20_combout\ $ (\datapath|sub1|Add1~20_combout\ $ (!\datapath|somador_0|S[5]~11\)))) # (GND)
-- \datapath|somador_0|S[6]~13\ = CARRY((\datapath|sub0|Add1~20_combout\ & ((\datapath|sub1|Add1~20_combout\) # (!\datapath|somador_0|S[5]~11\))) # (!\datapath|sub0|Add1~20_combout\ & (\datapath|sub1|Add1~20_combout\ & !\datapath|somador_0|S[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~20_combout\,
	datab => \datapath|sub1|Add1~20_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[5]~11\,
	combout => \datapath|somador_0|S[6]~12_combout\,
	cout => \datapath|somador_0|S[6]~13\);

-- Location: LCCOMB_X18_Y12_N20
\datapath|somador_2|S[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[6]~12_combout\ = ((\datapath|somador_1|Add0~12_combout\ $ (\datapath|somador_0|S[6]~12_combout\ $ (!\datapath|somador_2|S[5]~11\)))) # (GND)
-- \datapath|somador_2|S[6]~13\ = CARRY((\datapath|somador_1|Add0~12_combout\ & ((\datapath|somador_0|S[6]~12_combout\) # (!\datapath|somador_2|S[5]~11\))) # (!\datapath|somador_1|Add0~12_combout\ & (\datapath|somador_0|S[6]~12_combout\ & 
-- !\datapath|somador_2|S[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~12_combout\,
	datab => \datapath|somador_0|S[6]~12_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[5]~11\,
	combout => \datapath|somador_2|S[6]~12_combout\,
	cout => \datapath|somador_2|S[6]~13\);

-- Location: LCCOMB_X17_Y12_N16
\datapath|reg_soma|q[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[6]~26_combout\ = ((\datapath|reg_soma|q\(6) $ (\datapath|somador_2|S[6]~12_combout\ $ (!\datapath|reg_soma|q[5]~25\)))) # (GND)
-- \datapath|reg_soma|q[6]~27\ = CARRY((\datapath|reg_soma|q\(6) & ((\datapath|somador_2|S[6]~12_combout\) # (!\datapath|reg_soma|q[5]~25\))) # (!\datapath|reg_soma|q\(6) & (\datapath|somador_2|S[6]~12_combout\ & !\datapath|reg_soma|q[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(6),
	datab => \datapath|somador_2|S[6]~12_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[5]~25\,
	combout => \datapath|reg_soma|q[6]~26_combout\,
	cout => \datapath|reg_soma|q[6]~27\);

-- Location: LCFF_X17_Y12_N17
\datapath|reg_soma|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[6]~26_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(6));

-- Location: LCCOMB_X17_Y13_N26
\datapath|reg_SAD|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[6]~feeder_combout\ = \datapath|reg_soma|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(6),
	combout => \datapath|reg_SAD|q[6]~feeder_combout\);

-- Location: LCFF_X17_Y13_N27
\datapath|reg_SAD|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[6]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(6));

-- Location: LCCOMB_X14_Y12_N14
\datapath|sub2|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~21_combout\ = \datapath|reg_pB2|q\(7) $ (\datapath|sub2|Add1~19\ $ (!\datapath|reg_pA2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pB2|q\(7),
	datad => \datapath|reg_pA2|q\(7),
	cin => \datapath|sub2|Add1~19\,
	combout => \datapath|sub2|Add1~21_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(21),
	combout => \mem_B~combout\(21));

-- Location: LCFF_X14_Y12_N11
\datapath|reg_pB2|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(21),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB2|q\(5));

-- Location: LCCOMB_X13_Y12_N12
\datapath|sub2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~10_combout\ = (\datapath|reg_pA2|q\(5) & ((\datapath|reg_pB2|q\(5) & (!\datapath|sub2|Add0~9\)) # (!\datapath|reg_pB2|q\(5) & (\datapath|sub2|Add0~9\ & VCC)))) # (!\datapath|reg_pA2|q\(5) & ((\datapath|reg_pB2|q\(5) & 
-- ((\datapath|sub2|Add0~9\) # (GND))) # (!\datapath|reg_pB2|q\(5) & (!\datapath|sub2|Add0~9\))))
-- \datapath|sub2|Add0~11\ = CARRY((\datapath|reg_pA2|q\(5) & (\datapath|reg_pB2|q\(5) & !\datapath|sub2|Add0~9\)) # (!\datapath|reg_pA2|q\(5) & ((\datapath|reg_pB2|q\(5)) # (!\datapath|sub2|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(5),
	datab => \datapath|reg_pB2|q\(5),
	datad => VCC,
	cin => \datapath|sub2|Add0~9\,
	combout => \datapath|sub2|Add0~10_combout\,
	cout => \datapath|sub2|Add0~11\);

-- Location: LCCOMB_X13_Y12_N16
\datapath|sub2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~14_combout\ = \datapath|reg_pB2|q\(7) $ (\datapath|sub2|Add0~13\ $ (!\datapath|reg_pA2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pB2|q\(7),
	datad => \datapath|reg_pA2|q\(7),
	cin => \datapath|sub2|Add0~13\,
	combout => \datapath|sub2|Add0~14_combout\);

-- Location: LCCOMB_X15_Y12_N26
\datapath|sub2|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~23_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~14_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|LessThan0~14_combout\,
	datac => \datapath|sub2|Add1~21_combout\,
	datad => \datapath|sub2|Add0~14_combout\,
	combout => \datapath|sub2|Add1~23_combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_A[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_A(30),
	combout => \mem_A~combout\(30));

-- Location: LCFF_X14_Y13_N13
\datapath|reg_pA3|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_A~combout\(30),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pA3|q\(6));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_B[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_B(28),
	combout => \mem_B~combout\(28));

-- Location: LCFF_X14_Y13_N25
\datapath|reg_pB3|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \mem_B~combout\(28),
	sload => VCC,
	ena => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_pB3|q\(4));

-- Location: LCCOMB_X15_Y13_N20
\datapath|sub3|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~20_combout\ = (\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add0~12_combout\))) # (!\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add1~18_combout\,
	datac => \datapath|sub3|Add0~12_combout\,
	datad => \datapath|sub3|LessThan0~14_combout\,
	combout => \datapath|sub3|Add1~20_combout\);

-- Location: LCCOMB_X15_Y12_N30
\datapath|sub2|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~17_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~10_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~15_combout\,
	datac => \datapath|sub2|Add0~10_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~17_combout\);

-- Location: LCCOMB_X18_Y12_N22
\datapath|somador_2|S[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[7]~14_combout\ = (\datapath|somador_0|S[7]~14_combout\ & ((\datapath|somador_1|Add0~14_combout\ & (\datapath|somador_2|S[6]~13\ & VCC)) # (!\datapath|somador_1|Add0~14_combout\ & (!\datapath|somador_2|S[6]~13\)))) # 
-- (!\datapath|somador_0|S[7]~14_combout\ & ((\datapath|somador_1|Add0~14_combout\ & (!\datapath|somador_2|S[6]~13\)) # (!\datapath|somador_1|Add0~14_combout\ & ((\datapath|somador_2|S[6]~13\) # (GND)))))
-- \datapath|somador_2|S[7]~15\ = CARRY((\datapath|somador_0|S[7]~14_combout\ & (!\datapath|somador_1|Add0~14_combout\ & !\datapath|somador_2|S[6]~13\)) # (!\datapath|somador_0|S[7]~14_combout\ & ((!\datapath|somador_2|S[6]~13\) # 
-- (!\datapath|somador_1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_0|S[7]~14_combout\,
	datab => \datapath|somador_1|Add0~14_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[6]~13\,
	combout => \datapath|somador_2|S[7]~14_combout\,
	cout => \datapath|somador_2|S[7]~15\);

-- Location: LCCOMB_X17_Y12_N18
\datapath|reg_soma|q[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[7]~28_combout\ = (\datapath|reg_soma|q\(7) & ((\datapath|somador_2|S[7]~14_combout\ & (\datapath|reg_soma|q[6]~27\ & VCC)) # (!\datapath|somador_2|S[7]~14_combout\ & (!\datapath|reg_soma|q[6]~27\)))) # (!\datapath|reg_soma|q\(7) & 
-- ((\datapath|somador_2|S[7]~14_combout\ & (!\datapath|reg_soma|q[6]~27\)) # (!\datapath|somador_2|S[7]~14_combout\ & ((\datapath|reg_soma|q[6]~27\) # (GND)))))
-- \datapath|reg_soma|q[7]~29\ = CARRY((\datapath|reg_soma|q\(7) & (!\datapath|somador_2|S[7]~14_combout\ & !\datapath|reg_soma|q[6]~27\)) # (!\datapath|reg_soma|q\(7) & ((!\datapath|reg_soma|q[6]~27\) # (!\datapath|somador_2|S[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(7),
	datab => \datapath|somador_2|S[7]~14_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[6]~27\,
	combout => \datapath|reg_soma|q[7]~28_combout\,
	cout => \datapath|reg_soma|q[7]~29\);

-- Location: LCFF_X17_Y12_N19
\datapath|reg_soma|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[7]~28_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(7));

-- Location: LCCOMB_X17_Y13_N12
\datapath|reg_SAD|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[7]~feeder_combout\ = \datapath|reg_soma|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(7),
	combout => \datapath|reg_SAD|q[7]~feeder_combout\);

-- Location: LCFF_X17_Y13_N13
\datapath|reg_SAD|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[7]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(7));

-- Location: LCCOMB_X20_Y13_N30
\datapath|sub1|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~21_combout\ = \datapath|reg_pA1|q\(7) $ (\datapath|sub1|Add1~19\ $ (!\datapath|reg_pB1|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pA1|q\(7),
	datad => \datapath|reg_pB1|q\(7),
	cin => \datapath|sub1|Add1~19\,
	combout => \datapath|sub1|Add1~21_combout\);

-- Location: LCCOMB_X19_Y13_N26
\datapath|sub1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~14_combout\ = \datapath|reg_pA1|q\(7) $ (\datapath|sub1|Add0~13\ $ (!\datapath|reg_pB1|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(7),
	datad => \datapath|reg_pB1|q\(7),
	cin => \datapath|sub1|Add0~13\,
	combout => \datapath|sub1|Add0~14_combout\);

-- Location: LCCOMB_X19_Y12_N2
\datapath|sub1|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~23_combout\ = (\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add0~14_combout\))) # (!\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|LessThan0~14_combout\,
	datac => \datapath|sub1|Add1~21_combout\,
	datad => \datapath|sub1|Add0~14_combout\,
	combout => \datapath|sub1|Add1~23_combout\);

-- Location: LCCOMB_X19_Y12_N28
\datapath|somador_0|S[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[8]~16_combout\ = !\datapath|somador_0|S[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \datapath|somador_0|S[7]~15\,
	combout => \datapath|somador_0|S[8]~16_combout\);

-- Location: LCCOMB_X17_Y12_N20
\datapath|reg_soma|q[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[8]~30_combout\ = ((\datapath|reg_soma|q\(8) $ (\datapath|somador_2|S[8]~16_combout\ $ (!\datapath|reg_soma|q[7]~29\)))) # (GND)
-- \datapath|reg_soma|q[8]~31\ = CARRY((\datapath|reg_soma|q\(8) & ((\datapath|somador_2|S[8]~16_combout\) # (!\datapath|reg_soma|q[7]~29\))) # (!\datapath|reg_soma|q\(8) & (\datapath|somador_2|S[8]~16_combout\ & !\datapath|reg_soma|q[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(8),
	datab => \datapath|somador_2|S[8]~16_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[7]~29\,
	combout => \datapath|reg_soma|q[8]~30_combout\,
	cout => \datapath|reg_soma|q[8]~31\);

-- Location: LCFF_X17_Y12_N21
\datapath|reg_soma|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[8]~30_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(8));

-- Location: LCFF_X17_Y13_N23
\datapath|reg_SAD|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \datapath|reg_soma|q\(8),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(8));

-- Location: LCCOMB_X17_Y12_N22
\datapath|reg_soma|q[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[9]~32_combout\ = (\datapath|somador_2|S[9]~18_combout\ & ((\datapath|reg_soma|q\(9) & (\datapath|reg_soma|q[8]~31\ & VCC)) # (!\datapath|reg_soma|q\(9) & (!\datapath|reg_soma|q[8]~31\)))) # (!\datapath|somador_2|S[9]~18_combout\ & 
-- ((\datapath|reg_soma|q\(9) & (!\datapath|reg_soma|q[8]~31\)) # (!\datapath|reg_soma|q\(9) & ((\datapath|reg_soma|q[8]~31\) # (GND)))))
-- \datapath|reg_soma|q[9]~33\ = CARRY((\datapath|somador_2|S[9]~18_combout\ & (!\datapath|reg_soma|q\(9) & !\datapath|reg_soma|q[8]~31\)) # (!\datapath|somador_2|S[9]~18_combout\ & ((!\datapath|reg_soma|q[8]~31\) # (!\datapath|reg_soma|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_2|S[9]~18_combout\,
	datab => \datapath|reg_soma|q\(9),
	datad => VCC,
	cin => \datapath|reg_soma|q[8]~31\,
	combout => \datapath|reg_soma|q[9]~32_combout\,
	cout => \datapath|reg_soma|q[9]~33\);

-- Location: LCFF_X17_Y12_N23
\datapath|reg_soma|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[9]~32_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(9));

-- Location: LCCOMB_X18_Y12_N28
\datapath|reg_SAD|q[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[9]~feeder_combout\ = \datapath|reg_soma|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(9),
	combout => \datapath|reg_SAD|q[9]~feeder_combout\);

-- Location: LCFF_X18_Y12_N29
\datapath|reg_SAD|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[9]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(9));

-- Location: LCCOMB_X17_Y12_N24
\datapath|reg_soma|q[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[10]~34_combout\ = (\datapath|reg_soma|q\(10) & (\datapath|reg_soma|q[9]~33\ $ (GND))) # (!\datapath|reg_soma|q\(10) & (!\datapath|reg_soma|q[9]~33\ & VCC))
-- \datapath|reg_soma|q[10]~35\ = CARRY((\datapath|reg_soma|q\(10) & !\datapath|reg_soma|q[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(10),
	datad => VCC,
	cin => \datapath|reg_soma|q[9]~33\,
	combout => \datapath|reg_soma|q[10]~34_combout\,
	cout => \datapath|reg_soma|q[10]~35\);

-- Location: LCFF_X17_Y12_N25
\datapath|reg_soma|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[10]~34_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(10));

-- Location: LCCOMB_X24_Y12_N20
\datapath|reg_SAD|q[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[10]~feeder_combout\ = \datapath|reg_soma|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(10),
	combout => \datapath|reg_SAD|q[10]~feeder_combout\);

-- Location: LCFF_X24_Y12_N21
\datapath|reg_SAD|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[10]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(10));

-- Location: LCCOMB_X17_Y12_N26
\datapath|reg_soma|q[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[11]~36_combout\ = (\datapath|reg_soma|q\(11) & (!\datapath|reg_soma|q[10]~35\)) # (!\datapath|reg_soma|q\(11) & ((\datapath|reg_soma|q[10]~35\) # (GND)))
-- \datapath|reg_soma|q[11]~37\ = CARRY((!\datapath|reg_soma|q[10]~35\) # (!\datapath|reg_soma|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_soma|q\(11),
	datad => VCC,
	cin => \datapath|reg_soma|q[10]~35\,
	combout => \datapath|reg_soma|q[11]~36_combout\,
	cout => \datapath|reg_soma|q[11]~37\);

-- Location: LCFF_X17_Y12_N27
\datapath|reg_soma|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[11]~36_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(11));

-- Location: LCCOMB_X17_Y13_N28
\datapath|reg_SAD|q[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[11]~feeder_combout\ = \datapath|reg_soma|q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(11),
	combout => \datapath|reg_SAD|q[11]~feeder_combout\);

-- Location: LCFF_X17_Y13_N29
\datapath|reg_SAD|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[11]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(11));

-- Location: LCCOMB_X17_Y12_N28
\datapath|reg_soma|q[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[12]~38_combout\ = (\datapath|reg_soma|q\(12) & (\datapath|reg_soma|q[11]~37\ $ (GND))) # (!\datapath|reg_soma|q\(12) & (!\datapath|reg_soma|q[11]~37\ & VCC))
-- \datapath|reg_soma|q[12]~39\ = CARRY((\datapath|reg_soma|q\(12) & !\datapath|reg_soma|q[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_soma|q\(12),
	datad => VCC,
	cin => \datapath|reg_soma|q[11]~37\,
	combout => \datapath|reg_soma|q[12]~38_combout\,
	cout => \datapath|reg_soma|q[12]~39\);

-- Location: LCFF_X17_Y12_N29
\datapath|reg_soma|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[12]~38_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(12));

-- Location: LCCOMB_X18_Y12_N2
\datapath|reg_SAD|q[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[12]~feeder_combout\ = \datapath|reg_soma|q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(12),
	combout => \datapath|reg_SAD|q[12]~feeder_combout\);

-- Location: LCFF_X18_Y12_N3
\datapath|reg_SAD|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[12]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(12));

-- Location: LCCOMB_X17_Y12_N30
\datapath|reg_soma|q[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[13]~40_combout\ = \datapath|reg_soma|q[12]~39\ $ (\datapath|reg_soma|q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(13),
	cin => \datapath|reg_soma|q[12]~39\,
	combout => \datapath|reg_soma|q[13]~40_combout\);

-- Location: LCFF_X17_Y12_N31
\datapath|reg_soma|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_soma|q[13]~40_combout\,
	sclr => \controle|EstadoAtual.S1~regout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_soma|q\(13));

-- Location: LCCOMB_X17_Y13_N18
\datapath|reg_SAD|q[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[13]~feeder_combout\ = \datapath|reg_soma|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(13),
	combout => \datapath|reg_SAD|q[13]~feeder_combout\);

-- Location: LCFF_X17_Y13_N19
\datapath|reg_SAD|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \datapath|reg_SAD|q[13]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_SAD|q\(13));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|ALT_INV_EstadoAtual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ler~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|EstadoAtual.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ler);

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\end_mem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_i|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_end_mem(0));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\end_mem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_i|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_end_mem(1));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\end_mem[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_i|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_end_mem(2));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\end_mem[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_i|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_end_mem(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(0));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(4));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(5));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(7));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(8));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(9));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(10));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(11));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(12));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAD[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|reg_SAD|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAD(13));
END structure;


