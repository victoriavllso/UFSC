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

-- DATE "11/08/2023 19:16:45"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
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
-- pronto	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[8]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[9]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[10]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[11]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[12]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[13]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[16]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[16]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[23]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[23]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[22]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[22]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[21]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[21]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[20]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[20]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[19]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[19]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[18]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[18]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[17]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[17]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[24]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[24]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[31]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[31]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[30]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[30]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[29]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[29]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[28]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[28]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[27]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[27]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[26]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[26]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[25]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[25]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[2]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[8]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[8]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[15]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[15]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[14]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[14]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[13]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[13]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[12]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[12]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[11]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[11]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[10]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[10]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_B[9]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_A[9]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|sub2|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~0_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[0]~0_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~3\ : std_logic;
SIGNAL \datapath|sub2|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~3_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[1]~2_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[1]~2_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~5\ : std_logic;
SIGNAL \datapath|sub2|Add1~6_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~6_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~6_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[2]~4_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~7\ : std_logic;
SIGNAL \datapath|sub2|Add1~10\ : std_logic;
SIGNAL \datapath|sub3|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~9_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~9_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~9_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[3]~6_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~9\ : std_logic;
SIGNAL \datapath|sub2|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~13\ : std_logic;
SIGNAL \datapath|sub3|Add0~9\ : std_logic;
SIGNAL \datapath|sub3|Add1~13\ : std_logic;
SIGNAL \datapath|somador_1|Add0~9\ : std_logic;
SIGNAL \datapath|sub0|Add1~13\ : std_logic;
SIGNAL \datapath|sub1|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~12_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[4]~8_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~11\ : std_logic;
SIGNAL \datapath|sub2|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~16\ : std_logic;
SIGNAL \datapath|sub3|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~11\ : std_logic;
SIGNAL \datapath|sub3|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~16\ : std_logic;
SIGNAL \datapath|somador_1|Add0~10_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~11\ : std_logic;
SIGNAL \datapath|sub0|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~16\ : std_logic;
SIGNAL \datapath|sub1|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub2|Add0~13\ : std_logic;
SIGNAL \datapath|sub2|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~19\ : std_logic;
SIGNAL \datapath|sub3|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~13\ : std_logic;
SIGNAL \datapath|sub3|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~19\ : std_logic;
SIGNAL \datapath|somador_1|Add0~12_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~13\ : std_logic;
SIGNAL \datapath|sub0|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~19\ : std_logic;
SIGNAL \datapath|sub1|Add0~13\ : std_logic;
SIGNAL \datapath|sub1|Add1~19\ : std_logic;
SIGNAL \datapath|sub2|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~21_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~21_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~14_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~15\ : std_logic;
SIGNAL \datapath|sub0|Add1~21_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~21_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~16_combout\ : std_logic;
SIGNAL \datapath|mux_i|output[4]~1_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~2_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~2_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~8_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~8_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~11_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~11_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~14_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~23_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~23_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~23_combout\ : std_logic;
SIGNAL \mem_B[23]~input_o\ : std_logic;
SIGNAL \mem_A[22]~input_o\ : std_logic;
SIGNAL \mem_B[21]~input_o\ : std_logic;
SIGNAL \mem_A[20]~input_o\ : std_logic;
SIGNAL \mem_B[19]~input_o\ : std_logic;
SIGNAL \mem_B[18]~input_o\ : std_logic;
SIGNAL \mem_A[31]~input_o\ : std_logic;
SIGNAL \mem_B[30]~input_o\ : std_logic;
SIGNAL \mem_A[29]~input_o\ : std_logic;
SIGNAL \mem_A[27]~input_o\ : std_logic;
SIGNAL \mem_A[25]~input_o\ : std_logic;
SIGNAL \mem_B[7]~input_o\ : std_logic;
SIGNAL \mem_A[6]~input_o\ : std_logic;
SIGNAL \mem_A[4]~input_o\ : std_logic;
SIGNAL \mem_B[2]~input_o\ : std_logic;
SIGNAL \mem_B[15]~input_o\ : std_logic;
SIGNAL \mem_A[14]~input_o\ : std_logic;
SIGNAL \mem_A[12]~input_o\ : std_logic;
SIGNAL \mem_B[11]~input_o\ : std_logic;
SIGNAL \mem_B[10]~input_o\ : std_logic;
SIGNAL \mem_A[9]~input_o\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \ler~output_o\ : std_logic;
SIGNAL \end_mem[0]~output_o\ : std_logic;
SIGNAL \end_mem[1]~output_o\ : std_logic;
SIGNAL \end_mem[2]~output_o\ : std_logic;
SIGNAL \end_mem[3]~output_o\ : std_logic;
SIGNAL \SAD[0]~output_o\ : std_logic;
SIGNAL \SAD[1]~output_o\ : std_logic;
SIGNAL \SAD[2]~output_o\ : std_logic;
SIGNAL \SAD[3]~output_o\ : std_logic;
SIGNAL \SAD[4]~output_o\ : std_logic;
SIGNAL \SAD[5]~output_o\ : std_logic;
SIGNAL \SAD[6]~output_o\ : std_logic;
SIGNAL \SAD[7]~output_o\ : std_logic;
SIGNAL \SAD[8]~output_o\ : std_logic;
SIGNAL \SAD[9]~output_o\ : std_logic;
SIGNAL \SAD[10]~output_o\ : std_logic;
SIGNAL \SAD[11]~output_o\ : std_logic;
SIGNAL \SAD[12]~output_o\ : std_logic;
SIGNAL \SAD[13]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \datapath|mux_i|output[0]~0_combout\ : std_logic;
SIGNAL \datapath|somador_i|Add0~0_combout\ : std_logic;
SIGNAL \controle|EstadoAtual~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controle|EstadoAtual.S1~q\ : std_logic;
SIGNAL \datapath|somador_i|Add0~1_combout\ : std_logic;
SIGNAL \datapath|somador_i|Add0~2_combout\ : std_logic;
SIGNAL \datapath|mux_i|output[4]~2_combout\ : std_logic;
SIGNAL \controle|EstadoAtual~10_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S3~q\ : std_logic;
SIGNAL \controle|EstadoAtual.S4~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S4~q\ : std_logic;
SIGNAL \controle|csoma~combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S2~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S2~q\ : std_logic;
SIGNAL \controle|EstadoAtual~11_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S5~q\ : std_logic;
SIGNAL \controle|Selector0~0_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S0~q\ : std_logic;
SIGNAL \mem_A[24]~input_o\ : std_logic;
SIGNAL \datapath|sub3|Add0~0_combout\ : std_logic;
SIGNAL \mem_B[31]~input_o\ : std_logic;
SIGNAL \mem_A[30]~input_o\ : std_logic;
SIGNAL \mem_B[29]~input_o\ : std_logic;
SIGNAL \mem_A[28]~input_o\ : std_logic;
SIGNAL \mem_B[27]~input_o\ : std_logic;
SIGNAL \mem_A[26]~input_o\ : std_logic;
SIGNAL \mem_B[25]~input_o\ : std_logic;
SIGNAL \mem_B[24]~input_o\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub3|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~2_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[0]~0_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[0]~14_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[0]~15\ : std_logic;
SIGNAL \datapath|reg_soma|q[1]~16_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[1]~17\ : std_logic;
SIGNAL \datapath|reg_soma|q[2]~18_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[2]~19\ : std_logic;
SIGNAL \datapath|reg_soma|q[3]~20_combout\ : std_logic;
SIGNAL \mem_B[28]~input_o\ : std_logic;
SIGNAL \mem_B[26]~input_o\ : std_logic;
SIGNAL \datapath|sub3|Add0~1\ : std_logic;
SIGNAL \datapath|sub3|Add0~3\ : std_logic;
SIGNAL \datapath|sub3|Add0~5\ : std_logic;
SIGNAL \datapath|sub3|Add0~7\ : std_logic;
SIGNAL \datapath|sub3|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~1\ : std_logic;
SIGNAL \datapath|sub3|Add1~4\ : std_logic;
SIGNAL \datapath|sub3|Add1~7\ : std_logic;
SIGNAL \datapath|sub3|Add1~10\ : std_logic;
SIGNAL \datapath|sub3|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~14_combout\ : std_logic;
SIGNAL \mem_A[19]~input_o\ : std_logic;
SIGNAL \mem_A[18]~input_o\ : std_logic;
SIGNAL \mem_B[17]~input_o\ : std_logic;
SIGNAL \mem_B[16]~input_o\ : std_logic;
SIGNAL \datapath|sub2|Add1~1\ : std_logic;
SIGNAL \datapath|sub2|Add1~4\ : std_logic;
SIGNAL \datapath|sub2|Add1~7\ : std_logic;
SIGNAL \datapath|sub2|Add1~9_combout\ : std_logic;
SIGNAL \mem_A[23]~input_o\ : std_logic;
SIGNAL \mem_B[22]~input_o\ : std_logic;
SIGNAL \mem_A[21]~input_o\ : std_logic;
SIGNAL \mem_B[20]~input_o\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub2|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~11_combout\ : std_logic;
SIGNAL \datapath|sub3|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub3|Add1~8_combout\ : std_logic;
SIGNAL \mem_A[17]~input_o\ : std_logic;
SIGNAL \mem_A[16]~input_o\ : std_logic;
SIGNAL \datapath|sub2|Add0~1\ : std_logic;
SIGNAL \datapath|sub2|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub2|Add1~5_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~1\ : std_logic;
SIGNAL \datapath|somador_1|Add0~3\ : std_logic;
SIGNAL \datapath|somador_1|Add0~5\ : std_logic;
SIGNAL \datapath|somador_1|Add0~7\ : std_logic;
SIGNAL \datapath|somador_1|Add0~8_combout\ : std_logic;
SIGNAL \mem_B[3]~input_o\ : std_logic;
SIGNAL \mem_A[2]~input_o\ : std_logic;
SIGNAL \mem_A[1]~input_o\ : std_logic;
SIGNAL \mem_B[0]~input_o\ : std_logic;
SIGNAL \datapath|sub0|Add0~1\ : std_logic;
SIGNAL \datapath|sub0|Add0~3\ : std_logic;
SIGNAL \datapath|sub0|Add0~5\ : std_logic;
SIGNAL \datapath|sub0|Add0~6_combout\ : std_logic;
SIGNAL \mem_A[7]~input_o\ : std_logic;
SIGNAL \mem_B[6]~input_o\ : std_logic;
SIGNAL \mem_A[5]~input_o\ : std_logic;
SIGNAL \mem_B[4]~input_o\ : std_logic;
SIGNAL \mem_A[3]~input_o\ : std_logic;
SIGNAL \mem_B[1]~input_o\ : std_logic;
SIGNAL \mem_A[0]~input_o\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub0|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~11_combout\ : std_logic;
SIGNAL \mem_A[10]~input_o\ : std_logic;
SIGNAL \mem_B[9]~input_o\ : std_logic;
SIGNAL \mem_A[8]~input_o\ : std_logic;
SIGNAL \datapath|sub1|Add0~1\ : std_logic;
SIGNAL \datapath|sub1|Add0~3\ : std_logic;
SIGNAL \datapath|sub1|Add0~4_combout\ : std_logic;
SIGNAL \mem_B[8]~input_o\ : std_logic;
SIGNAL \datapath|sub1|Add1~1\ : std_logic;
SIGNAL \datapath|sub1|Add1~4\ : std_logic;
SIGNAL \datapath|sub1|Add1~6_combout\ : std_logic;
SIGNAL \mem_A[15]~input_o\ : std_logic;
SIGNAL \mem_B[14]~input_o\ : std_logic;
SIGNAL \mem_A[13]~input_o\ : std_logic;
SIGNAL \mem_B[12]~input_o\ : std_logic;
SIGNAL \mem_A[11]~input_o\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub1|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~8_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~2_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[0]~1\ : std_logic;
SIGNAL \datapath|somador_0|S[1]~3\ : std_logic;
SIGNAL \datapath|somador_0|S[2]~5\ : std_logic;
SIGNAL \datapath|somador_0|S[3]~6_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[2]~4_combout\ : std_logic;
SIGNAL \datapath|somador_1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[0]~1\ : std_logic;
SIGNAL \datapath|somador_2|S[1]~3\ : std_logic;
SIGNAL \datapath|somador_2|S[2]~5\ : std_logic;
SIGNAL \datapath|somador_2|S[3]~7\ : std_logic;
SIGNAL \datapath|somador_2|S[4]~8_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[3]~21\ : std_logic;
SIGNAL \datapath|reg_soma|q[4]~22_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~7\ : std_logic;
SIGNAL \datapath|sub1|Add1~10\ : std_logic;
SIGNAL \datapath|sub1|Add1~13\ : std_logic;
SIGNAL \datapath|sub1|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~17_combout\ : std_logic;
SIGNAL \datapath|sub0|Add0~7\ : std_logic;
SIGNAL \datapath|sub0|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~1\ : std_logic;
SIGNAL \datapath|sub0|Add1~4\ : std_logic;
SIGNAL \datapath|sub0|Add1~7\ : std_logic;
SIGNAL \datapath|sub0|Add1~10\ : std_logic;
SIGNAL \datapath|sub0|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~14_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[3]~7\ : std_logic;
SIGNAL \datapath|somador_0|S[4]~9\ : std_logic;
SIGNAL \datapath|somador_0|S[5]~10_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[4]~9\ : std_logic;
SIGNAL \datapath|somador_2|S[5]~10_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[4]~23\ : std_logic;
SIGNAL \datapath|reg_soma|q[5]~24_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~16\ : std_logic;
SIGNAL \datapath|sub1|Add1~18_combout\ : std_logic;
SIGNAL \mem_B[13]~input_o\ : std_logic;
SIGNAL \datapath|sub1|Add0~5\ : std_logic;
SIGNAL \datapath|sub1|Add0~7\ : std_logic;
SIGNAL \datapath|sub1|Add0~9\ : std_logic;
SIGNAL \datapath|sub1|Add0~11\ : std_logic;
SIGNAL \datapath|sub1|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub1|Add1~20_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[5]~11\ : std_logic;
SIGNAL \datapath|somador_0|S[6]~12_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[5]~11\ : std_logic;
SIGNAL \datapath|somador_2|S[6]~12_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[5]~25\ : std_logic;
SIGNAL \datapath|reg_soma|q[6]~26_combout\ : std_logic;
SIGNAL \mem_B[5]~input_o\ : std_logic;
SIGNAL \datapath|sub0|Add0~9\ : std_logic;
SIGNAL \datapath|sub0|Add0~11\ : std_logic;
SIGNAL \datapath|sub0|Add0~13\ : std_logic;
SIGNAL \datapath|sub0|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub0|Add1~23_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[6]~13\ : std_logic;
SIGNAL \datapath|somador_0|S[7]~14_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[6]~13\ : std_logic;
SIGNAL \datapath|somador_2|S[7]~14_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[6]~27\ : std_logic;
SIGNAL \datapath|reg_soma|q[7]~28_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[7]~feeder_combout\ : std_logic;
SIGNAL \datapath|somador_0|S[7]~15\ : std_logic;
SIGNAL \datapath|somador_0|S[8]~16_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[7]~15\ : std_logic;
SIGNAL \datapath|somador_2|S[8]~16_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[7]~29\ : std_logic;
SIGNAL \datapath|reg_soma|q[8]~30_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[8]~feeder_combout\ : std_logic;
SIGNAL \datapath|somador_2|S[8]~17\ : std_logic;
SIGNAL \datapath|somador_2|S[9]~18_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[8]~31\ : std_logic;
SIGNAL \datapath|reg_soma|q[9]~32_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[9]~33\ : std_logic;
SIGNAL \datapath|reg_soma|q[10]~34_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[10]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[10]~35\ : std_logic;
SIGNAL \datapath|reg_soma|q[11]~36_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[11]~37\ : std_logic;
SIGNAL \datapath|reg_soma|q[12]~38_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[12]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[12]~39\ : std_logic;
SIGNAL \datapath|reg_soma|q[13]~40_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[13]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_i|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \datapath|reg_pA0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_soma|q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \datapath|reg_pA1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pA2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pB3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_SAD|q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \datapath|reg_pB1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pB2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pA3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_pB0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controle|ALT_INV_EstadoAtual.S0~q\ : std_logic;

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

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\controle|ALT_INV_EstadoAtual.S0~q\ <= NOT \controle|EstadoAtual.S0~q\;

-- Location: LCCOMB_X23_Y21_N0
\datapath|sub2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~0_combout\ = (\datapath|reg_pB2|q\(0) & (\datapath|reg_pA2|q\(0) $ (VCC))) # (!\datapath|reg_pB2|q\(0) & ((\datapath|reg_pA2|q\(0)) # (GND)))
-- \datapath|sub2|Add0~1\ = CARRY((\datapath|reg_pA2|q\(0)) # (!\datapath|reg_pB2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(0),
	datab => \datapath|reg_pA2|q\(0),
	datad => VCC,
	combout => \datapath|sub2|Add0~0_combout\,
	cout => \datapath|sub2|Add0~1\);

-- Location: LCCOMB_X22_Y21_N0
\datapath|sub2|Add1~0\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y20_N12
\datapath|sub0|Add0~0\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N0
\datapath|sub0|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~0_combout\ = (\datapath|reg_pB0|q\(0) & ((GND) # (!\datapath|reg_pA0|q\(0)))) # (!\datapath|reg_pB0|q\(0) & (\datapath|reg_pA0|q\(0) $ (GND)))
-- \datapath|sub0|Add1~1\ = CARRY((\datapath|reg_pB0|q\(0)) # (!\datapath|reg_pA0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(0),
	datab => \datapath|reg_pA0|q\(0),
	datad => VCC,
	combout => \datapath|sub0|Add1~0_combout\,
	cout => \datapath|sub0|Add1~1\);

-- Location: LCCOMB_X29_Y20_N0
\datapath|sub1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~0_combout\ = (\datapath|reg_pA1|q\(0) & (\datapath|reg_pB1|q\(0) $ (VCC))) # (!\datapath|reg_pA1|q\(0) & ((\datapath|reg_pB1|q\(0)) # (GND)))
-- \datapath|sub1|Add1~1\ = CARRY((\datapath|reg_pB1|q\(0)) # (!\datapath|reg_pA1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(0),
	datab => \datapath|reg_pB1|q\(0),
	datad => VCC,
	combout => \datapath|sub1|Add1~0_combout\,
	cout => \datapath|sub1|Add1~1\);

-- Location: LCCOMB_X24_Y20_N4
\datapath|somador_0|S[0]~0\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y21_N2
\datapath|sub2|Add0~2\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N2
\datapath|sub2|Add1~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y21_N2
\datapath|sub3|Add0~2\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N18
\datapath|sub3|Add1~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y20_N14
\datapath|sub0|Add0~2\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N2
\datapath|sub0|Add1~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X24_Y20_N6
\datapath|somador_0|S[1]~2\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y20_N2
\datapath|somador_2|S[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[1]~2_combout\ = (\datapath|somador_0|S[1]~2_combout\ & ((\datapath|somador_1|Add0~2_combout\ & (\datapath|somador_2|S[0]~1\ & VCC)) # (!\datapath|somador_1|Add0~2_combout\ & (!\datapath|somador_2|S[0]~1\)))) # 
-- (!\datapath|somador_0|S[1]~2_combout\ & ((\datapath|somador_1|Add0~2_combout\ & (!\datapath|somador_2|S[0]~1\)) # (!\datapath|somador_1|Add0~2_combout\ & ((\datapath|somador_2|S[0]~1\) # (GND)))))
-- \datapath|somador_2|S[1]~3\ = CARRY((\datapath|somador_0|S[1]~2_combout\ & (!\datapath|somador_1|Add0~2_combout\ & !\datapath|somador_2|S[0]~1\)) # (!\datapath|somador_0|S[1]~2_combout\ & ((!\datapath|somador_2|S[0]~1\) # 
-- (!\datapath|somador_1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_0|S[1]~2_combout\,
	datab => \datapath|somador_1|Add0~2_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[0]~1\,
	combout => \datapath|somador_2|S[1]~2_combout\,
	cout => \datapath|somador_2|S[1]~3\);

-- Location: LCCOMB_X23_Y21_N4
\datapath|sub2|Add0~4\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N4
\datapath|sub2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~6_combout\ = ((\datapath|reg_pB2|q\(2) $ (\datapath|reg_pA2|q\(2) $ (\datapath|sub2|Add1~4\)))) # (GND)
-- \datapath|sub2|Add1~7\ = CARRY((\datapath|reg_pB2|q\(2) & ((!\datapath|sub2|Add1~4\) # (!\datapath|reg_pA2|q\(2)))) # (!\datapath|reg_pB2|q\(2) & (!\datapath|reg_pA2|q\(2) & !\datapath|sub2|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(2),
	datab => \datapath|reg_pA2|q\(2),
	datad => VCC,
	cin => \datapath|sub2|Add1~4\,
	combout => \datapath|sub2|Add1~6_combout\,
	cout => \datapath|sub2|Add1~7\);

-- Location: LCCOMB_X26_Y21_N20
\datapath|sub3|Add1~6\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X24_Y21_N4
\datapath|somador_1|Add0~4\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y20_N16
\datapath|sub0|Add0~4\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N4
\datapath|sub0|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~6_combout\ = ((\datapath|reg_pB0|q\(2) $ (\datapath|reg_pA0|q\(2) $ (\datapath|sub0|Add1~4\)))) # (GND)
-- \datapath|sub0|Add1~7\ = CARRY((\datapath|reg_pB0|q\(2) & ((!\datapath|sub0|Add1~4\) # (!\datapath|reg_pA0|q\(2)))) # (!\datapath|reg_pB0|q\(2) & (!\datapath|reg_pA0|q\(2) & !\datapath|sub0|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(2),
	datab => \datapath|reg_pA0|q\(2),
	datad => VCC,
	cin => \datapath|sub0|Add1~4\,
	combout => \datapath|sub0|Add1~6_combout\,
	cout => \datapath|sub0|Add1~7\);

-- Location: LCCOMB_X23_Y20_N4
\datapath|somador_2|S[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[2]~4_combout\ = ((\datapath|somador_1|Add0~4_combout\ $ (\datapath|somador_0|S[2]~4_combout\ $ (!\datapath|somador_2|S[1]~3\)))) # (GND)
-- \datapath|somador_2|S[2]~5\ = CARRY((\datapath|somador_1|Add0~4_combout\ & ((\datapath|somador_0|S[2]~4_combout\) # (!\datapath|somador_2|S[1]~3\))) # (!\datapath|somador_1|Add0~4_combout\ & (\datapath|somador_0|S[2]~4_combout\ & 
-- !\datapath|somador_2|S[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~4_combout\,
	datab => \datapath|somador_0|S[2]~4_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[1]~3\,
	combout => \datapath|somador_2|S[2]~4_combout\,
	cout => \datapath|somador_2|S[2]~5\);

-- Location: LCCOMB_X23_Y21_N6
\datapath|sub2|Add0~6\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N6
\datapath|sub2|Add1~9\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y21_N6
\datapath|sub3|Add0~6\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N22
\datapath|sub3|Add1~9\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X24_Y21_N6
\datapath|somador_1|Add0~6\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N6
\datapath|sub0|Add1~9\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X28_Y20_N18
\datapath|sub1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~6_combout\ = (\datapath|reg_pB1|q\(3) & ((\datapath|reg_pA1|q\(3) & (!\datapath|sub1|Add0~5\)) # (!\datapath|reg_pA1|q\(3) & ((\datapath|sub1|Add0~5\) # (GND))))) # (!\datapath|reg_pB1|q\(3) & ((\datapath|reg_pA1|q\(3) & 
-- (\datapath|sub1|Add0~5\ & VCC)) # (!\datapath|reg_pA1|q\(3) & (!\datapath|sub1|Add0~5\))))
-- \datapath|sub1|Add0~7\ = CARRY((\datapath|reg_pB1|q\(3) & ((!\datapath|sub1|Add0~5\) # (!\datapath|reg_pA1|q\(3)))) # (!\datapath|reg_pB1|q\(3) & (!\datapath|reg_pA1|q\(3) & !\datapath|sub1|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(3),
	datab => \datapath|reg_pA1|q\(3),
	datad => VCC,
	cin => \datapath|sub1|Add0~5\,
	combout => \datapath|sub1|Add0~6_combout\,
	cout => \datapath|sub1|Add0~7\);

-- Location: LCCOMB_X29_Y20_N6
\datapath|sub1|Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~9_combout\ = (\datapath|reg_pB1|q\(3) & ((\datapath|reg_pA1|q\(3) & (!\datapath|sub1|Add1~7\)) # (!\datapath|reg_pA1|q\(3) & (\datapath|sub1|Add1~7\ & VCC)))) # (!\datapath|reg_pB1|q\(3) & ((\datapath|reg_pA1|q\(3) & 
-- ((\datapath|sub1|Add1~7\) # (GND))) # (!\datapath|reg_pA1|q\(3) & (!\datapath|sub1|Add1~7\))))
-- \datapath|sub1|Add1~10\ = CARRY((\datapath|reg_pB1|q\(3) & (\datapath|reg_pA1|q\(3) & !\datapath|sub1|Add1~7\)) # (!\datapath|reg_pB1|q\(3) & ((\datapath|reg_pA1|q\(3)) # (!\datapath|sub1|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(3),
	datab => \datapath|reg_pA1|q\(3),
	datad => VCC,
	cin => \datapath|sub1|Add1~7\,
	combout => \datapath|sub1|Add1~9_combout\,
	cout => \datapath|sub1|Add1~10\);

-- Location: LCCOMB_X23_Y20_N6
\datapath|somador_2|S[3]~6\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y21_N8
\datapath|sub2|Add0~8\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N8
\datapath|sub2|Add1~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y21_N8
\datapath|sub3|Add0~8\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N24
\datapath|sub3|Add1~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X24_Y21_N8
\datapath|somador_1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~8_combout\ = ((\datapath|sub2|Add1~14_combout\ $ (\datapath|sub3|Add1~14_combout\ $ (!\datapath|somador_1|Add0~7\)))) # (GND)
-- \datapath|somador_1|Add0~9\ = CARRY((\datapath|sub2|Add1~14_combout\ & ((\datapath|sub3|Add1~14_combout\) # (!\datapath|somador_1|Add0~7\))) # (!\datapath|sub2|Add1~14_combout\ & (\datapath|sub3|Add1~14_combout\ & !\datapath|somador_1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~14_combout\,
	datab => \datapath|sub3|Add1~14_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~7\,
	combout => \datapath|somador_1|Add0~8_combout\,
	cout => \datapath|somador_1|Add0~9\);

-- Location: LCCOMB_X25_Y20_N8
\datapath|sub0|Add1~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X28_Y20_N20
\datapath|sub1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~8_combout\ = ((\datapath|reg_pA1|q\(4) $ (\datapath|reg_pB1|q\(4) $ (\datapath|sub1|Add0~7\)))) # (GND)
-- \datapath|sub1|Add0~9\ = CARRY((\datapath|reg_pA1|q\(4) & ((!\datapath|sub1|Add0~7\) # (!\datapath|reg_pB1|q\(4)))) # (!\datapath|reg_pA1|q\(4) & (!\datapath|reg_pB1|q\(4) & !\datapath|sub1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(4),
	datab => \datapath|reg_pB1|q\(4),
	datad => VCC,
	cin => \datapath|sub1|Add0~7\,
	combout => \datapath|sub1|Add0~8_combout\,
	cout => \datapath|sub1|Add0~9\);

-- Location: LCCOMB_X29_Y20_N8
\datapath|sub1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~12_combout\ = ((\datapath|reg_pA1|q\(4) $ (\datapath|reg_pB1|q\(4) $ (\datapath|sub1|Add1~10\)))) # (GND)
-- \datapath|sub1|Add1~13\ = CARRY((\datapath|reg_pA1|q\(4) & (\datapath|reg_pB1|q\(4) & !\datapath|sub1|Add1~10\)) # (!\datapath|reg_pA1|q\(4) & ((\datapath|reg_pB1|q\(4)) # (!\datapath|sub1|Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(4),
	datab => \datapath|reg_pB1|q\(4),
	datad => VCC,
	cin => \datapath|sub1|Add1~10\,
	combout => \datapath|sub1|Add1~12_combout\,
	cout => \datapath|sub1|Add1~13\);

-- Location: LCCOMB_X24_Y20_N12
\datapath|somador_0|S[4]~8\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y21_N10
\datapath|sub2|Add0~10\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N10
\datapath|sub2|Add1~15\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y21_N10
\datapath|sub3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~10_combout\ = (\datapath|reg_pB3|q\(5) & ((\datapath|reg_pA3|q\(5) & (!\datapath|sub3|Add0~9\)) # (!\datapath|reg_pA3|q\(5) & ((\datapath|sub3|Add0~9\) # (GND))))) # (!\datapath|reg_pB3|q\(5) & ((\datapath|reg_pA3|q\(5) & 
-- (\datapath|sub3|Add0~9\ & VCC)) # (!\datapath|reg_pA3|q\(5) & (!\datapath|sub3|Add0~9\))))
-- \datapath|sub3|Add0~11\ = CARRY((\datapath|reg_pB3|q\(5) & ((!\datapath|sub3|Add0~9\) # (!\datapath|reg_pA3|q\(5)))) # (!\datapath|reg_pB3|q\(5) & (!\datapath|reg_pA3|q\(5) & !\datapath|sub3|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(5),
	datab => \datapath|reg_pA3|q\(5),
	datad => VCC,
	cin => \datapath|sub3|Add0~9\,
	combout => \datapath|sub3|Add0~10_combout\,
	cout => \datapath|sub3|Add0~11\);

-- Location: LCCOMB_X26_Y21_N26
\datapath|sub3|Add1~15\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X24_Y21_N10
\datapath|somador_1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~10_combout\ = (\datapath|sub2|Add1~17_combout\ & ((\datapath|sub3|Add1~17_combout\ & (\datapath|somador_1|Add0~9\ & VCC)) # (!\datapath|sub3|Add1~17_combout\ & (!\datapath|somador_1|Add0~9\)))) # (!\datapath|sub2|Add1~17_combout\ 
-- & ((\datapath|sub3|Add1~17_combout\ & (!\datapath|somador_1|Add0~9\)) # (!\datapath|sub3|Add1~17_combout\ & ((\datapath|somador_1|Add0~9\) # (GND)))))
-- \datapath|somador_1|Add0~11\ = CARRY((\datapath|sub2|Add1~17_combout\ & (!\datapath|sub3|Add1~17_combout\ & !\datapath|somador_1|Add0~9\)) # (!\datapath|sub2|Add1~17_combout\ & ((!\datapath|somador_1|Add0~9\) # (!\datapath|sub3|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~17_combout\,
	datab => \datapath|sub3|Add1~17_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~9\,
	combout => \datapath|somador_1|Add0~10_combout\,
	cout => \datapath|somador_1|Add0~11\);

-- Location: LCCOMB_X26_Y20_N22
\datapath|sub0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~10_combout\ = (\datapath|reg_pA0|q\(5) & ((\datapath|reg_pB0|q\(5) & (!\datapath|sub0|Add0~9\)) # (!\datapath|reg_pB0|q\(5) & (\datapath|sub0|Add0~9\ & VCC)))) # (!\datapath|reg_pA0|q\(5) & ((\datapath|reg_pB0|q\(5) & 
-- ((\datapath|sub0|Add0~9\) # (GND))) # (!\datapath|reg_pB0|q\(5) & (!\datapath|sub0|Add0~9\))))
-- \datapath|sub0|Add0~11\ = CARRY((\datapath|reg_pA0|q\(5) & (\datapath|reg_pB0|q\(5) & !\datapath|sub0|Add0~9\)) # (!\datapath|reg_pA0|q\(5) & ((\datapath|reg_pB0|q\(5)) # (!\datapath|sub0|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(5),
	datab => \datapath|reg_pB0|q\(5),
	datad => VCC,
	cin => \datapath|sub0|Add0~9\,
	combout => \datapath|sub0|Add0~10_combout\,
	cout => \datapath|sub0|Add0~11\);

-- Location: LCCOMB_X25_Y20_N10
\datapath|sub0|Add1~15\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X28_Y20_N22
\datapath|sub1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~10_combout\ = (\datapath|reg_pA1|q\(5) & ((\datapath|reg_pB1|q\(5) & (!\datapath|sub1|Add0~9\)) # (!\datapath|reg_pB1|q\(5) & (\datapath|sub1|Add0~9\ & VCC)))) # (!\datapath|reg_pA1|q\(5) & ((\datapath|reg_pB1|q\(5) & 
-- ((\datapath|sub1|Add0~9\) # (GND))) # (!\datapath|reg_pB1|q\(5) & (!\datapath|sub1|Add0~9\))))
-- \datapath|sub1|Add0~11\ = CARRY((\datapath|reg_pA1|q\(5) & (\datapath|reg_pB1|q\(5) & !\datapath|sub1|Add0~9\)) # (!\datapath|reg_pA1|q\(5) & ((\datapath|reg_pB1|q\(5)) # (!\datapath|sub1|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(5),
	datab => \datapath|reg_pB1|q\(5),
	datad => VCC,
	cin => \datapath|sub1|Add0~9\,
	combout => \datapath|sub1|Add0~10_combout\,
	cout => \datapath|sub1|Add0~11\);

-- Location: LCCOMB_X23_Y21_N12
\datapath|sub2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~12_combout\ = ((\datapath|reg_pA2|q\(6) $ (\datapath|reg_pB2|q\(6) $ (\datapath|sub2|Add0~11\)))) # (GND)
-- \datapath|sub2|Add0~13\ = CARRY((\datapath|reg_pA2|q\(6) & ((!\datapath|sub2|Add0~11\) # (!\datapath|reg_pB2|q\(6)))) # (!\datapath|reg_pA2|q\(6) & (!\datapath|reg_pB2|q\(6) & !\datapath|sub2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(6),
	datab => \datapath|reg_pB2|q\(6),
	datad => VCC,
	cin => \datapath|sub2|Add0~11\,
	combout => \datapath|sub2|Add0~12_combout\,
	cout => \datapath|sub2|Add0~13\);

-- Location: LCCOMB_X22_Y21_N12
\datapath|sub2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~18_combout\ = ((\datapath|reg_pA2|q\(6) $ (\datapath|reg_pB2|q\(6) $ (\datapath|sub2|Add1~16\)))) # (GND)
-- \datapath|sub2|Add1~19\ = CARRY((\datapath|reg_pA2|q\(6) & (\datapath|reg_pB2|q\(6) & !\datapath|sub2|Add1~16\)) # (!\datapath|reg_pA2|q\(6) & ((\datapath|reg_pB2|q\(6)) # (!\datapath|sub2|Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(6),
	datab => \datapath|reg_pB2|q\(6),
	datad => VCC,
	cin => \datapath|sub2|Add1~16\,
	combout => \datapath|sub2|Add1~18_combout\,
	cout => \datapath|sub2|Add1~19\);

-- Location: LCCOMB_X25_Y21_N12
\datapath|sub3|Add0~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N28
\datapath|sub3|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~18_combout\ = ((\datapath|reg_pB3|q\(6) $ (\datapath|reg_pA3|q\(6) $ (\datapath|sub3|Add1~16\)))) # (GND)
-- \datapath|sub3|Add1~19\ = CARRY((\datapath|reg_pB3|q\(6) & ((!\datapath|sub3|Add1~16\) # (!\datapath|reg_pA3|q\(6)))) # (!\datapath|reg_pB3|q\(6) & (!\datapath|reg_pA3|q\(6) & !\datapath|sub3|Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(6),
	datab => \datapath|reg_pA3|q\(6),
	datad => VCC,
	cin => \datapath|sub3|Add1~16\,
	combout => \datapath|sub3|Add1~18_combout\,
	cout => \datapath|sub3|Add1~19\);

-- Location: LCCOMB_X24_Y21_N12
\datapath|somador_1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~12_combout\ = ((\datapath|sub3|Add1~20_combout\ $ (\datapath|sub2|Add1~20_combout\ $ (!\datapath|somador_1|Add0~11\)))) # (GND)
-- \datapath|somador_1|Add0~13\ = CARRY((\datapath|sub3|Add1~20_combout\ & ((\datapath|sub2|Add1~20_combout\) # (!\datapath|somador_1|Add0~11\))) # (!\datapath|sub3|Add1~20_combout\ & (\datapath|sub2|Add1~20_combout\ & !\datapath|somador_1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~20_combout\,
	datab => \datapath|sub2|Add1~20_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~11\,
	combout => \datapath|somador_1|Add0~12_combout\,
	cout => \datapath|somador_1|Add0~13\);

-- Location: LCCOMB_X26_Y20_N24
\datapath|sub0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~12_combout\ = ((\datapath|reg_pA0|q\(6) $ (\datapath|reg_pB0|q\(6) $ (\datapath|sub0|Add0~11\)))) # (GND)
-- \datapath|sub0|Add0~13\ = CARRY((\datapath|reg_pA0|q\(6) & ((!\datapath|sub0|Add0~11\) # (!\datapath|reg_pB0|q\(6)))) # (!\datapath|reg_pA0|q\(6) & (!\datapath|reg_pB0|q\(6) & !\datapath|sub0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(6),
	datab => \datapath|reg_pB0|q\(6),
	datad => VCC,
	cin => \datapath|sub0|Add0~11\,
	combout => \datapath|sub0|Add0~12_combout\,
	cout => \datapath|sub0|Add0~13\);

-- Location: LCCOMB_X25_Y20_N12
\datapath|sub0|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~18_combout\ = ((\datapath|reg_pA0|q\(6) $ (\datapath|reg_pB0|q\(6) $ (\datapath|sub0|Add1~16\)))) # (GND)
-- \datapath|sub0|Add1~19\ = CARRY((\datapath|reg_pA0|q\(6) & (\datapath|reg_pB0|q\(6) & !\datapath|sub0|Add1~16\)) # (!\datapath|reg_pA0|q\(6) & ((\datapath|reg_pB0|q\(6)) # (!\datapath|sub0|Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(6),
	datab => \datapath|reg_pB0|q\(6),
	datad => VCC,
	cin => \datapath|sub0|Add1~16\,
	combout => \datapath|sub0|Add1~18_combout\,
	cout => \datapath|sub0|Add1~19\);

-- Location: LCCOMB_X28_Y20_N24
\datapath|sub1|Add0~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X29_Y20_N12
\datapath|sub1|Add1~18\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y21_N14
\datapath|sub2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add0~14_combout\ = \datapath|reg_pB2|q\(7) $ (\datapath|sub2|Add0~13\ $ (!\datapath|reg_pA2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(7),
	datad => \datapath|reg_pA2|q\(7),
	cin => \datapath|sub2|Add0~13\,
	combout => \datapath|sub2|Add0~14_combout\);

-- Location: LCCOMB_X22_Y21_N14
\datapath|sub2|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~21_combout\ = \datapath|reg_pB2|q\(7) $ (\datapath|reg_pA2|q\(7) $ (!\datapath|sub2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(7),
	datab => \datapath|reg_pA2|q\(7),
	cin => \datapath|sub2|Add1~19\,
	combout => \datapath|sub2|Add1~21_combout\);

-- Location: LCCOMB_X25_Y21_N14
\datapath|sub3|Add0~14\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N30
\datapath|sub3|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~21_combout\ = \datapath|reg_pA3|q\(7) $ (\datapath|reg_pB3|q\(7) $ (!\datapath|sub3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(7),
	datab => \datapath|reg_pB3|q\(7),
	cin => \datapath|sub3|Add1~19\,
	combout => \datapath|sub3|Add1~21_combout\);

-- Location: LCCOMB_X24_Y21_N14
\datapath|somador_1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~14_combout\ = (\datapath|sub2|Add1~23_combout\ & ((\datapath|sub3|Add1~23_combout\ & (\datapath|somador_1|Add0~13\ & VCC)) # (!\datapath|sub3|Add1~23_combout\ & (!\datapath|somador_1|Add0~13\)))) # 
-- (!\datapath|sub2|Add1~23_combout\ & ((\datapath|sub3|Add1~23_combout\ & (!\datapath|somador_1|Add0~13\)) # (!\datapath|sub3|Add1~23_combout\ & ((\datapath|somador_1|Add0~13\) # (GND)))))
-- \datapath|somador_1|Add0~15\ = CARRY((\datapath|sub2|Add1~23_combout\ & (!\datapath|sub3|Add1~23_combout\ & !\datapath|somador_1|Add0~13\)) # (!\datapath|sub2|Add1~23_combout\ & ((!\datapath|somador_1|Add0~13\) # (!\datapath|sub3|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~23_combout\,
	datab => \datapath|sub3|Add1~23_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~13\,
	combout => \datapath|somador_1|Add0~14_combout\,
	cout => \datapath|somador_1|Add0~15\);

-- Location: LCCOMB_X25_Y20_N14
\datapath|sub0|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~21_combout\ = \datapath|reg_pB0|q\(7) $ (\datapath|reg_pA0|q\(7) $ (!\datapath|sub0|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(7),
	datab => \datapath|reg_pA0|q\(7),
	cin => \datapath|sub0|Add1~19\,
	combout => \datapath|sub0|Add1~21_combout\);

-- Location: LCCOMB_X28_Y20_N26
\datapath|sub1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~14_combout\ = \datapath|reg_pA1|q\(7) $ (\datapath|sub1|Add0~13\ $ (!\datapath|reg_pB1|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pA1|q\(7),
	datad => \datapath|reg_pB1|q\(7),
	cin => \datapath|sub1|Add0~13\,
	combout => \datapath|sub1|Add0~14_combout\);

-- Location: LCCOMB_X29_Y20_N14
\datapath|sub1|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~21_combout\ = \datapath|reg_pB1|q\(7) $ (\datapath|reg_pA1|q\(7) $ (!\datapath|sub1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(7),
	datab => \datapath|reg_pA1|q\(7),
	cin => \datapath|sub1|Add1~19\,
	combout => \datapath|sub1|Add1~21_combout\);

-- Location: LCCOMB_X24_Y21_N16
\datapath|somador_1|Add0~16\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X18_Y20_N12
\datapath|mux_i|output[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mux_i|output[4]~1_combout\ = (\datapath|reg_i|q\(0) & (\datapath|reg_i|q\(1) & (!\controle|EstadoAtual.S1~q\ & \datapath|reg_i|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_i|q\(0),
	datab => \datapath|reg_i|q\(1),
	datac => \controle|EstadoAtual.S1~q\,
	datad => \datapath|reg_i|q\(2),
	combout => \datapath|mux_i|output[4]~1_combout\);

-- Location: FF_X22_Y21_N31
\datapath|reg_pB2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[23]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(7));

-- Location: FF_X22_Y21_N13
\datapath|reg_pA2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[22]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(6));

-- Location: FF_X22_Y21_N11
\datapath|reg_pB2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[21]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(5));

-- Location: FF_X22_Y21_N9
\datapath|reg_pA2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[20]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(4));

-- Location: FF_X22_Y21_N7
\datapath|reg_pB2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[19]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(3));

-- Location: FF_X22_Y21_N21
\datapath|reg_pB2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[18]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(2));

-- Location: LCCOMB_X24_Y21_N26
\datapath|sub2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~2_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~0_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~0_combout\,
	datac => \datapath|sub2|Add0~0_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~2_combout\);

-- Location: FF_X26_Y21_N31
\datapath|reg_pA3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[31]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(7));

-- Location: FF_X26_Y21_N13
\datapath|reg_pB3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[30]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(6));

-- Location: FF_X26_Y21_N11
\datapath|reg_pA3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[29]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(5));

-- Location: FF_X26_Y21_N7
\datapath|reg_pA3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[27]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(3));

-- Location: FF_X26_Y21_N3
\datapath|reg_pA3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[25]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(1));

-- Location: FF_X25_Y20_N31
\datapath|reg_pB0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[7]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(7));

-- Location: FF_X25_Y20_N13
\datapath|reg_pA0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[6]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(6));

-- Location: FF_X25_Y20_N9
\datapath|reg_pA0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[4]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(4));

-- Location: FF_X25_Y20_N21
\datapath|reg_pB0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[2]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(2));

-- Location: LCCOMB_X24_Y20_N24
\datapath|sub0|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~2_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~0_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add0~0_combout\,
	datab => \datapath|sub0|Add1~0_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~2_combout\);

-- Location: FF_X29_Y20_N31
\datapath|reg_pB1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[15]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(7));

-- Location: FF_X29_Y20_N13
\datapath|reg_pA1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[14]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(6));

-- Location: FF_X29_Y20_N9
\datapath|reg_pA1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[12]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(4));

-- Location: FF_X29_Y20_N7
\datapath|reg_pB1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[11]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(3));

-- Location: FF_X29_Y20_N21
\datapath|reg_pB1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[10]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(2));

-- Location: FF_X29_Y20_N19
\datapath|reg_pA1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[9]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(1));

-- Location: LCCOMB_X25_Y21_N20
\datapath|sub3|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~5_combout\ = (\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add0~2_combout\))) # (!\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~3_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add0~2_combout\,
	combout => \datapath|sub3|Add1~5_combout\);

-- Location: LCCOMB_X24_Y20_N26
\datapath|sub0|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~5_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~2_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add0~2_combout\,
	datac => \datapath|sub0|Add1~3_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~5_combout\);

-- Location: LCCOMB_X24_Y21_N30
\datapath|sub2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~8_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~4_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub2|Add1~6_combout\,
	datac => \datapath|sub2|Add0~4_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~8_combout\);

-- Location: LCCOMB_X24_Y20_N22
\datapath|sub0|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~8_combout\ = (\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add0~4_combout\))) # (!\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~6_combout\,
	datac => \datapath|sub0|Add0~4_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~8_combout\);

-- Location: LCCOMB_X24_Y21_N22
\datapath|sub3|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~11_combout\ = (\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add0~6_combout\))) # (!\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~9_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add0~6_combout\,
	combout => \datapath|sub3|Add1~11_combout\);

-- Location: LCCOMB_X28_Y20_N28
\datapath|sub1|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~11_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~6_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add0~6_combout\,
	datac => \datapath|sub1|LessThan0~14_combout\,
	datad => \datapath|sub1|Add1~9_combout\,
	combout => \datapath|sub1|Add1~11_combout\);

-- Location: LCCOMB_X23_Y21_N16
\datapath|sub2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~14_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~8_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~12_combout\,
	datac => \datapath|sub2|Add0~8_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~14_combout\);

-- Location: LCCOMB_X28_Y20_N30
\datapath|sub1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~14_combout\ = (\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add0~8_combout\))) # (!\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add1~12_combout\,
	datac => \datapath|sub1|LessThan0~14_combout\,
	datad => \datapath|sub1|Add0~8_combout\,
	combout => \datapath|sub1|Add1~14_combout\);

-- Location: LCCOMB_X24_Y21_N28
\datapath|sub2|Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~17_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~10_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add0~10_combout\,
	datac => \datapath|sub2|Add1~15_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~17_combout\);

-- Location: LCCOMB_X25_Y21_N16
\datapath|sub3|Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~17_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~10_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add0~10_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add1~15_combout\,
	combout => \datapath|sub3|Add1~17_combout\);

-- Location: LCCOMB_X24_Y20_N30
\datapath|sub0|Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~17_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~10_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub0|Add0~10_combout\,
	datac => \datapath|sub0|Add1~15_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~17_combout\);

-- Location: LCCOMB_X24_Y21_N18
\datapath|sub2|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~20_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~12_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add0~12_combout\,
	datac => \datapath|sub2|Add1~18_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~20_combout\);

-- Location: LCCOMB_X25_Y21_N30
\datapath|sub3|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~20_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~12_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add0~12_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add1~18_combout\,
	combout => \datapath|sub3|Add1~20_combout\);

-- Location: LCCOMB_X26_Y20_N4
\datapath|sub0|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~20_combout\ = (\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add0~12_combout\))) # (!\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~18_combout\,
	datab => \datapath|sub0|Add0~12_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~20_combout\);

-- Location: LCCOMB_X23_Y21_N26
\datapath|sub2|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~23_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~14_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub2|LessThan0~14_combout\,
	datac => \datapath|sub2|Add0~14_combout\,
	datad => \datapath|sub2|Add1~21_combout\,
	combout => \datapath|sub2|Add1~23_combout\);

-- Location: LCCOMB_X25_Y21_N24
\datapath|sub3|Add1~23\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X28_Y20_N4
\datapath|sub1|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~23_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~14_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|LessThan0~14_combout\,
	datac => \datapath|sub1|Add0~14_combout\,
	datad => \datapath|sub1|Add1~21_combout\,
	combout => \datapath|sub1|Add1~23_combout\);

-- Location: IOIBUF_X5_Y0_N15
\mem_B[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(23),
	o => \mem_B[23]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\mem_A[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(22),
	o => \mem_A[22]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\mem_B[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(21),
	o => \mem_B[21]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\mem_A[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(20),
	o => \mem_A[20]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\mem_B[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(19),
	o => \mem_B[19]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\mem_B[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(18),
	o => \mem_B[18]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\mem_A[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(31),
	o => \mem_A[31]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\mem_B[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(30),
	o => \mem_B[30]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\mem_A[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(29),
	o => \mem_A[29]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\mem_A[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(27),
	o => \mem_A[27]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\mem_A[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(25),
	o => \mem_A[25]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\mem_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(7),
	o => \mem_B[7]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\mem_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(6),
	o => \mem_A[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\mem_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(4),
	o => \mem_A[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\mem_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(2),
	o => \mem_B[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\mem_B[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(15),
	o => \mem_B[15]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\mem_A[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(14),
	o => \mem_A[14]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\mem_A[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(12),
	o => \mem_A[12]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\mem_B[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(11),
	o => \mem_B[11]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\mem_B[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(10),
	o => \mem_B[10]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\mem_A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(9),
	o => \mem_A[9]~input_o\);

-- Location: IOOBUF_X16_Y24_N9
\pronto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controle|ALT_INV_EstadoAtual.S0~q\,
	devoe => ww_devoe,
	o => \pronto~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\ler~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controle|EstadoAtual.S3~q\,
	devoe => ww_devoe,
	o => \ler~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\end_mem[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_i|q\(0),
	devoe => ww_devoe,
	o => \end_mem[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\end_mem[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_i|q\(1),
	devoe => ww_devoe,
	o => \end_mem[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\end_mem[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_i|q\(2),
	devoe => ww_devoe,
	o => \end_mem[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\end_mem[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_i|q\(3),
	devoe => ww_devoe,
	o => \end_mem[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SAD[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(0),
	devoe => ww_devoe,
	o => \SAD[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\SAD[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(1),
	devoe => ww_devoe,
	o => \SAD[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SAD[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(2),
	devoe => ww_devoe,
	o => \SAD[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\SAD[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(3),
	devoe => ww_devoe,
	o => \SAD[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SAD[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(4),
	devoe => ww_devoe,
	o => \SAD[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\SAD[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(5),
	devoe => ww_devoe,
	o => \SAD[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\SAD[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(6),
	devoe => ww_devoe,
	o => \SAD[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\SAD[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(7),
	devoe => ww_devoe,
	o => \SAD[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SAD[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(8),
	devoe => ww_devoe,
	o => \SAD[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SAD[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(9),
	devoe => ww_devoe,
	o => \SAD[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\SAD[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(10),
	devoe => ww_devoe,
	o => \SAD[10]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\SAD[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(11),
	devoe => ww_devoe,
	o => \SAD[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\SAD[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(12),
	devoe => ww_devoe,
	o => \SAD[12]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\SAD[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_SAD|q\(13),
	devoe => ww_devoe,
	o => \SAD[13]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\ck~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G4
\ck~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X18_Y20_N10
\datapath|mux_i|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mux_i|output[0]~0_combout\ = (!\controle|EstadoAtual.S1~q\ & !\datapath|reg_i|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|EstadoAtual.S1~q\,
	datac => \datapath|reg_i|q\(0),
	combout => \datapath|mux_i|output[0]~0_combout\);

-- Location: FF_X18_Y20_N11
\datapath|reg_i|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|mux_i|output[0]~0_combout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(0));

-- Location: LCCOMB_X18_Y20_N24
\datapath|somador_i|Add0~0\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X18_Y20_N22
\controle|EstadoAtual~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~12_combout\ = (\iniciar~input_o\ & !\controle|EstadoAtual.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iniciar~input_o\,
	datad => \controle|EstadoAtual.S0~q\,
	combout => \controle|EstadoAtual~12_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X18_Y20_N23
\controle|EstadoAtual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \controle|EstadoAtual~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|EstadoAtual.S1~q\);

-- Location: FF_X18_Y20_N25
\datapath|reg_i|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|somador_i|Add0~0_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(1));

-- Location: LCCOMB_X18_Y20_N2
\datapath|somador_i|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_i|Add0~1_combout\ = \datapath|reg_i|q\(2) $ (((\datapath|reg_i|q\(1) & \datapath|reg_i|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_i|q\(1),
	datac => \datapath|reg_i|q\(2),
	datad => \datapath|reg_i|q\(0),
	combout => \datapath|somador_i|Add0~1_combout\);

-- Location: FF_X18_Y20_N3
\datapath|reg_i|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|somador_i|Add0~1_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(2));

-- Location: LCCOMB_X18_Y20_N0
\datapath|somador_i|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_i|Add0~2_combout\ = \datapath|reg_i|q\(3) $ (((\datapath|reg_i|q\(0) & (\datapath|reg_i|q\(1) & \datapath|reg_i|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_i|q\(0),
	datab => \datapath|reg_i|q\(1),
	datac => \datapath|reg_i|q\(3),
	datad => \datapath|reg_i|q\(2),
	combout => \datapath|somador_i|Add0~2_combout\);

-- Location: FF_X18_Y20_N1
\datapath|reg_i|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|somador_i|Add0~2_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(3));

-- Location: LCCOMB_X18_Y20_N18
\datapath|mux_i|output[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mux_i|output[4]~2_combout\ = (\datapath|mux_i|output[4]~1_combout\ & \datapath|reg_i|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux_i|output[4]~1_combout\,
	datad => \datapath|reg_i|q\(3),
	combout => \datapath|mux_i|output[4]~2_combout\);

-- Location: FF_X18_Y20_N19
\datapath|reg_i|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|mux_i|output[4]~2_combout\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(4));

-- Location: LCCOMB_X18_Y20_N28
\controle|EstadoAtual~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~10_combout\ = (\controle|EstadoAtual.S2~q\ & !\datapath|reg_i|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|EstadoAtual.S2~q\,
	datad => \datapath|reg_i|q\(4),
	combout => \controle|EstadoAtual~10_combout\);

-- Location: FF_X18_Y20_N29
\controle|EstadoAtual.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \controle|EstadoAtual~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|EstadoAtual.S3~q\);

-- Location: LCCOMB_X18_Y20_N20
\controle|EstadoAtual.S4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual.S4~feeder_combout\ = \controle|EstadoAtual.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controle|EstadoAtual.S3~q\,
	combout => \controle|EstadoAtual.S4~feeder_combout\);

-- Location: FF_X18_Y20_N21
\controle|EstadoAtual.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \controle|EstadoAtual.S4~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|EstadoAtual.S4~q\);

-- Location: LCCOMB_X18_Y20_N26
\controle|csoma\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|csoma~combout\ = (\controle|EstadoAtual.S4~q\) # (\controle|EstadoAtual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|EstadoAtual.S4~q\,
	datac => \controle|EstadoAtual.S1~q\,
	combout => \controle|csoma~combout\);

-- Location: LCCOMB_X18_Y20_N4
\controle|EstadoAtual.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual.S2~feeder_combout\ = \controle|csoma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controle|csoma~combout\,
	combout => \controle|EstadoAtual.S2~feeder_combout\);

-- Location: FF_X18_Y20_N5
\controle|EstadoAtual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \controle|EstadoAtual.S2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|EstadoAtual.S2~q\);

-- Location: LCCOMB_X18_Y20_N16
\controle|EstadoAtual~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~11_combout\ = (\controle|EstadoAtual.S2~q\ & \datapath|reg_i|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|EstadoAtual.S2~q\,
	datad => \datapath|reg_i|q\(4),
	combout => \controle|EstadoAtual~11_combout\);

-- Location: FF_X18_Y20_N17
\controle|EstadoAtual.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \controle|EstadoAtual~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|EstadoAtual.S5~q\);

-- Location: LCCOMB_X18_Y20_N6
\controle|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|Selector0~0_combout\ = (!\controle|EstadoAtual.S5~q\ & ((\iniciar~input_o\) # (\controle|EstadoAtual.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iniciar~input_o\,
	datac => \controle|EstadoAtual.S0~q\,
	datad => \controle|EstadoAtual.S5~q\,
	combout => \controle|Selector0~0_combout\);

-- Location: FF_X18_Y20_N7
\controle|EstadoAtual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \controle|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|EstadoAtual.S0~q\);

-- Location: IOIBUF_X5_Y0_N22
\mem_A[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(24),
	o => \mem_A[24]~input_o\);

-- Location: FF_X26_Y21_N17
\datapath|reg_pA3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[24]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(0));

-- Location: LCCOMB_X25_Y21_N0
\datapath|sub3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~0_combout\ = (\datapath|reg_pB3|q\(0) & (\datapath|reg_pA3|q\(0) $ (VCC))) # (!\datapath|reg_pB3|q\(0) & ((\datapath|reg_pA3|q\(0)) # (GND)))
-- \datapath|sub3|Add0~1\ = CARRY((\datapath|reg_pA3|q\(0)) # (!\datapath|reg_pB3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(0),
	datab => \datapath|reg_pA3|q\(0),
	datad => VCC,
	combout => \datapath|sub3|Add0~0_combout\,
	cout => \datapath|sub3|Add0~1\);

-- Location: IOIBUF_X0_Y5_N15
\mem_B[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(31),
	o => \mem_B[31]~input_o\);

-- Location: FF_X26_Y21_N15
\datapath|reg_pB3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[31]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(7));

-- Location: IOIBUF_X23_Y24_N8
\mem_A[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(30),
	o => \mem_A[30]~input_o\);

-- Location: FF_X26_Y21_N29
\datapath|reg_pA3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[30]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(6));

-- Location: IOIBUF_X3_Y0_N1
\mem_B[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(29),
	o => \mem_B[29]~input_o\);

-- Location: FF_X26_Y21_N27
\datapath|reg_pB3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[29]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(5));

-- Location: IOIBUF_X34_Y12_N15
\mem_A[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(28),
	o => \mem_A[28]~input_o\);

-- Location: FF_X26_Y21_N25
\datapath|reg_pA3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[28]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(4));

-- Location: IOIBUF_X34_Y18_N1
\mem_B[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(27),
	o => \mem_B[27]~input_o\);

-- Location: FF_X26_Y21_N23
\datapath|reg_pB3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[27]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(3));

-- Location: IOIBUF_X28_Y24_N8
\mem_A[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(26),
	o => \mem_A[26]~input_o\);

-- Location: FF_X26_Y21_N21
\datapath|reg_pA3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[26]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA3|q\(2));

-- Location: IOIBUF_X34_Y18_N15
\mem_B[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(25),
	o => \mem_B[25]~input_o\);

-- Location: FF_X26_Y21_N19
\datapath|reg_pB3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[25]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(1));

-- Location: IOIBUF_X34_Y7_N22
\mem_B[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(24),
	o => \mem_B[24]~input_o\);

-- Location: FF_X26_Y21_N1
\datapath|reg_pB3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[24]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(0));

-- Location: LCCOMB_X26_Y21_N0
\datapath|sub3|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~1_cout\ = CARRY((\datapath|reg_pA3|q\(0) & !\datapath|reg_pB3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(0),
	datab => \datapath|reg_pB3|q\(0),
	datad => VCC,
	cout => \datapath|sub3|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y21_N2
\datapath|sub3|LessThan0~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N4
\datapath|sub3|LessThan0~5\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N6
\datapath|sub3|LessThan0~7\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N8
\datapath|sub3|LessThan0~9\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N10
\datapath|sub3|LessThan0~11\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X26_Y21_N12
\datapath|sub3|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~13_cout\ = CARRY((\datapath|reg_pB3|q\(6) & (\datapath|reg_pA3|q\(6) & !\datapath|sub3|LessThan0~11_cout\)) # (!\datapath|reg_pB3|q\(6) & ((\datapath|reg_pA3|q\(6)) # (!\datapath|sub3|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB3|q\(6),
	datab => \datapath|reg_pA3|q\(6),
	datad => VCC,
	cin => \datapath|sub3|LessThan0~11_cout\,
	cout => \datapath|sub3|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y21_N14
\datapath|sub3|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|LessThan0~14_combout\ = (\datapath|reg_pA3|q\(7) & ((\datapath|sub3|LessThan0~13_cout\) # (!\datapath|reg_pB3|q\(7)))) # (!\datapath|reg_pA3|q\(7) & (!\datapath|reg_pB3|q\(7) & \datapath|sub3|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(7),
	datab => \datapath|reg_pB3|q\(7),
	cin => \datapath|sub3|LessThan0~13_cout\,
	combout => \datapath|sub3|LessThan0~14_combout\);

-- Location: LCCOMB_X26_Y21_N16
\datapath|sub3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~0_combout\ = (\datapath|reg_pA3|q\(0) & (\datapath|reg_pB3|q\(0) $ (VCC))) # (!\datapath|reg_pA3|q\(0) & ((\datapath|reg_pB3|q\(0)) # (GND)))
-- \datapath|sub3|Add1~1\ = CARRY((\datapath|reg_pB3|q\(0)) # (!\datapath|reg_pA3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(0),
	datab => \datapath|reg_pB3|q\(0),
	datad => VCC,
	combout => \datapath|sub3|Add1~0_combout\,
	cout => \datapath|sub3|Add1~1\);

-- Location: LCCOMB_X24_Y21_N24
\datapath|sub3|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~2_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~0_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add0~0_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add1~0_combout\,
	combout => \datapath|sub3|Add1~2_combout\);

-- Location: LCCOMB_X24_Y21_N0
\datapath|somador_1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~0_combout\ = (\datapath|sub2|Add1~2_combout\ & (\datapath|sub3|Add1~2_combout\ $ (VCC))) # (!\datapath|sub2|Add1~2_combout\ & (\datapath|sub3|Add1~2_combout\ & VCC))
-- \datapath|somador_1|Add0~1\ = CARRY((\datapath|sub2|Add1~2_combout\ & \datapath|sub3|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~2_combout\,
	datab => \datapath|sub3|Add1~2_combout\,
	datad => VCC,
	combout => \datapath|somador_1|Add0~0_combout\,
	cout => \datapath|somador_1|Add0~1\);

-- Location: LCCOMB_X23_Y20_N0
\datapath|somador_2|S[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[0]~0_combout\ = (\datapath|somador_0|S[0]~0_combout\ & (\datapath|somador_1|Add0~0_combout\ $ (VCC))) # (!\datapath|somador_0|S[0]~0_combout\ & (\datapath|somador_1|Add0~0_combout\ & VCC))
-- \datapath|somador_2|S[0]~1\ = CARRY((\datapath|somador_0|S[0]~0_combout\ & \datapath|somador_1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_0|S[0]~0_combout\,
	datab => \datapath|somador_1|Add0~0_combout\,
	datad => VCC,
	combout => \datapath|somador_2|S[0]~0_combout\,
	cout => \datapath|somador_2|S[0]~1\);

-- Location: LCCOMB_X22_Y20_N2
\datapath|reg_soma|q[0]~14\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N3
\datapath|reg_soma|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[0]~14_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(0));

-- Location: LCCOMB_X19_Y20_N8
\datapath|reg_SAD|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[0]~feeder_combout\ = \datapath|reg_soma|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(0),
	combout => \datapath|reg_SAD|q[0]~feeder_combout\);

-- Location: FF_X19_Y20_N9
\datapath|reg_SAD|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[0]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(0));

-- Location: LCCOMB_X22_Y20_N4
\datapath|reg_soma|q[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[1]~16_combout\ = (\datapath|somador_2|S[1]~2_combout\ & ((\datapath|reg_soma|q\(1) & (\datapath|reg_soma|q[0]~15\ & VCC)) # (!\datapath|reg_soma|q\(1) & (!\datapath|reg_soma|q[0]~15\)))) # (!\datapath|somador_2|S[1]~2_combout\ & 
-- ((\datapath|reg_soma|q\(1) & (!\datapath|reg_soma|q[0]~15\)) # (!\datapath|reg_soma|q\(1) & ((\datapath|reg_soma|q[0]~15\) # (GND)))))
-- \datapath|reg_soma|q[1]~17\ = CARRY((\datapath|somador_2|S[1]~2_combout\ & (!\datapath|reg_soma|q\(1) & !\datapath|reg_soma|q[0]~15\)) # (!\datapath|somador_2|S[1]~2_combout\ & ((!\datapath|reg_soma|q[0]~15\) # (!\datapath|reg_soma|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_2|S[1]~2_combout\,
	datab => \datapath|reg_soma|q\(1),
	datad => VCC,
	cin => \datapath|reg_soma|q[0]~15\,
	combout => \datapath|reg_soma|q[1]~16_combout\,
	cout => \datapath|reg_soma|q[1]~17\);

-- Location: FF_X22_Y20_N5
\datapath|reg_soma|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[1]~16_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(1));

-- Location: FF_X23_Y20_N25
\datapath|reg_SAD|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(1),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(1));

-- Location: LCCOMB_X22_Y20_N6
\datapath|reg_soma|q[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[2]~18_combout\ = ((\datapath|somador_2|S[2]~4_combout\ $ (\datapath|reg_soma|q\(2) $ (!\datapath|reg_soma|q[1]~17\)))) # (GND)
-- \datapath|reg_soma|q[2]~19\ = CARRY((\datapath|somador_2|S[2]~4_combout\ & ((\datapath|reg_soma|q\(2)) # (!\datapath|reg_soma|q[1]~17\))) # (!\datapath|somador_2|S[2]~4_combout\ & (\datapath|reg_soma|q\(2) & !\datapath|reg_soma|q[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_2|S[2]~4_combout\,
	datab => \datapath|reg_soma|q\(2),
	datad => VCC,
	cin => \datapath|reg_soma|q[1]~17\,
	combout => \datapath|reg_soma|q[2]~18_combout\,
	cout => \datapath|reg_soma|q[2]~19\);

-- Location: FF_X22_Y20_N7
\datapath|reg_soma|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[2]~18_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(2));

-- Location: LCCOMB_X21_Y20_N28
\datapath|reg_SAD|q[2]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X21_Y20_N29
\datapath|reg_SAD|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[2]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(2));

-- Location: LCCOMB_X22_Y20_N8
\datapath|reg_soma|q[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[3]~20_combout\ = (\datapath|somador_2|S[3]~6_combout\ & ((\datapath|reg_soma|q\(3) & (\datapath|reg_soma|q[2]~19\ & VCC)) # (!\datapath|reg_soma|q\(3) & (!\datapath|reg_soma|q[2]~19\)))) # (!\datapath|somador_2|S[3]~6_combout\ & 
-- ((\datapath|reg_soma|q\(3) & (!\datapath|reg_soma|q[2]~19\)) # (!\datapath|reg_soma|q\(3) & ((\datapath|reg_soma|q[2]~19\) # (GND)))))
-- \datapath|reg_soma|q[3]~21\ = CARRY((\datapath|somador_2|S[3]~6_combout\ & (!\datapath|reg_soma|q\(3) & !\datapath|reg_soma|q[2]~19\)) # (!\datapath|somador_2|S[3]~6_combout\ & ((!\datapath|reg_soma|q[2]~19\) # (!\datapath|reg_soma|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_2|S[3]~6_combout\,
	datab => \datapath|reg_soma|q\(3),
	datad => VCC,
	cin => \datapath|reg_soma|q[2]~19\,
	combout => \datapath|reg_soma|q[3]~20_combout\,
	cout => \datapath|reg_soma|q[3]~21\);

-- Location: FF_X22_Y20_N9
\datapath|reg_soma|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[3]~20_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(3));

-- Location: FF_X21_Y20_N7
\datapath|reg_SAD|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(3),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(3));

-- Location: IOIBUF_X34_Y12_N22
\mem_B[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(28),
	o => \mem_B[28]~input_o\);

-- Location: FF_X26_Y21_N9
\datapath|reg_pB3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[28]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(4));

-- Location: IOIBUF_X34_Y17_N22
\mem_B[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(26),
	o => \mem_B[26]~input_o\);

-- Location: FF_X26_Y21_N5
\datapath|reg_pB3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[26]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB3|q\(2));

-- Location: LCCOMB_X25_Y21_N4
\datapath|sub3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add0~4_combout\ = ((\datapath|reg_pA3|q\(2) $ (\datapath|reg_pB3|q\(2) $ (\datapath|sub3|Add0~3\)))) # (GND)
-- \datapath|sub3|Add0~5\ = CARRY((\datapath|reg_pA3|q\(2) & ((!\datapath|sub3|Add0~3\) # (!\datapath|reg_pB3|q\(2)))) # (!\datapath|reg_pA3|q\(2) & (!\datapath|reg_pB3|q\(2) & !\datapath|sub3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA3|q\(2),
	datab => \datapath|reg_pB3|q\(2),
	datad => VCC,
	cin => \datapath|sub3|Add0~3\,
	combout => \datapath|sub3|Add0~4_combout\,
	cout => \datapath|sub3|Add0~5\);

-- Location: LCCOMB_X25_Y21_N18
\datapath|sub3|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~14_combout\ = (\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add0~8_combout\)) # (!\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub3|Add0~8_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add1~12_combout\,
	combout => \datapath|sub3|Add1~14_combout\);

-- Location: IOIBUF_X3_Y24_N22
\mem_A[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(19),
	o => \mem_A[19]~input_o\);

-- Location: FF_X22_Y21_N23
\datapath|reg_pA2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[19]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(3));

-- Location: IOIBUF_X0_Y21_N8
\mem_A[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(18),
	o => \mem_A[18]~input_o\);

-- Location: FF_X22_Y21_N5
\datapath|reg_pA2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[18]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(2));

-- Location: IOIBUF_X0_Y18_N22
\mem_B[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(17),
	o => \mem_B[17]~input_o\);

-- Location: FF_X22_Y21_N3
\datapath|reg_pB2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[17]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(1));

-- Location: IOIBUF_X0_Y22_N1
\mem_B[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(16),
	o => \mem_B[16]~input_o\);

-- Location: FF_X22_Y21_N17
\datapath|reg_pB2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[16]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(0));

-- Location: IOIBUF_X18_Y0_N22
\mem_A[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(23),
	o => \mem_A[23]~input_o\);

-- Location: FF_X22_Y21_N15
\datapath|reg_pA2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[23]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(7));

-- Location: IOIBUF_X0_Y18_N15
\mem_B[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(22),
	o => \mem_B[22]~input_o\);

-- Location: FF_X22_Y21_N29
\datapath|reg_pB2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[22]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(6));

-- Location: IOIBUF_X7_Y24_N8
\mem_A[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(21),
	o => \mem_A[21]~input_o\);

-- Location: FF_X22_Y21_N27
\datapath|reg_pA2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[21]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(5));

-- Location: IOIBUF_X18_Y24_N15
\mem_B[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(20),
	o => \mem_B[20]~input_o\);

-- Location: FF_X22_Y21_N25
\datapath|reg_pB2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[20]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB2|q\(4));

-- Location: LCCOMB_X22_Y21_N16
\datapath|sub2|LessThan0~1\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N18
\datapath|sub2|LessThan0~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N20
\datapath|sub2|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~5_cout\ = CARRY((\datapath|reg_pB2|q\(2) & (\datapath|reg_pA2|q\(2) & !\datapath|sub2|LessThan0~3_cout\)) # (!\datapath|reg_pB2|q\(2) & ((\datapath|reg_pA2|q\(2)) # (!\datapath|sub2|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(2),
	datab => \datapath|reg_pA2|q\(2),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~3_cout\,
	cout => \datapath|sub2|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y21_N22
\datapath|sub2|LessThan0~7\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N24
\datapath|sub2|LessThan0~9\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N26
\datapath|sub2|LessThan0~11\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y21_N28
\datapath|sub2|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~13_cout\ = CARRY((\datapath|reg_pA2|q\(6) & ((!\datapath|sub2|LessThan0~11_cout\) # (!\datapath|reg_pB2|q\(6)))) # (!\datapath|reg_pA2|q\(6) & (!\datapath|reg_pB2|q\(6) & !\datapath|sub2|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA2|q\(6),
	datab => \datapath|reg_pB2|q\(6),
	datad => VCC,
	cin => \datapath|sub2|LessThan0~11_cout\,
	cout => \datapath|sub2|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y21_N30
\datapath|sub2|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|LessThan0~14_combout\ = (\datapath|reg_pB2|q\(7) & (\datapath|reg_pA2|q\(7) & \datapath|sub2|LessThan0~13_cout\)) # (!\datapath|reg_pB2|q\(7) & ((\datapath|reg_pA2|q\(7)) # (\datapath|sub2|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB2|q\(7),
	datab => \datapath|reg_pA2|q\(7),
	cin => \datapath|sub2|LessThan0~13_cout\,
	combout => \datapath|sub2|LessThan0~14_combout\);

-- Location: LCCOMB_X23_Y21_N22
\datapath|sub2|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~11_combout\ = (\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add0~6_combout\)) # (!\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add0~6_combout\,
	datac => \datapath|sub2|Add1~9_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~11_combout\);

-- Location: LCCOMB_X24_Y21_N20
\datapath|sub3|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub3|Add1~8_combout\ = (\datapath|sub3|LessThan0~14_combout\ & ((\datapath|sub3|Add0~4_combout\))) # (!\datapath|sub3|LessThan0~14_combout\ & (\datapath|sub3|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~6_combout\,
	datac => \datapath|sub3|LessThan0~14_combout\,
	datad => \datapath|sub3|Add0~4_combout\,
	combout => \datapath|sub3|Add1~8_combout\);

-- Location: IOIBUF_X0_Y23_N1
\mem_A[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(17),
	o => \mem_A[17]~input_o\);

-- Location: FF_X22_Y21_N19
\datapath|reg_pA2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[17]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(1));

-- Location: IOIBUF_X34_Y17_N15
\mem_A[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(16),
	o => \mem_A[16]~input_o\);

-- Location: FF_X22_Y21_N1
\datapath|reg_pA2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[16]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA2|q\(0));

-- Location: LCCOMB_X23_Y21_N24
\datapath|sub2|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub2|Add1~5_combout\ = (\datapath|sub2|LessThan0~14_combout\ & ((\datapath|sub2|Add0~2_combout\))) # (!\datapath|sub2|LessThan0~14_combout\ & (\datapath|sub2|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub2|Add1~3_combout\,
	datab => \datapath|sub2|Add0~2_combout\,
	datad => \datapath|sub2|LessThan0~14_combout\,
	combout => \datapath|sub2|Add1~5_combout\);

-- Location: LCCOMB_X24_Y21_N2
\datapath|somador_1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_1|Add0~2_combout\ = (\datapath|sub3|Add1~5_combout\ & ((\datapath|sub2|Add1~5_combout\ & (\datapath|somador_1|Add0~1\ & VCC)) # (!\datapath|sub2|Add1~5_combout\ & (!\datapath|somador_1|Add0~1\)))) # (!\datapath|sub3|Add1~5_combout\ & 
-- ((\datapath|sub2|Add1~5_combout\ & (!\datapath|somador_1|Add0~1\)) # (!\datapath|sub2|Add1~5_combout\ & ((\datapath|somador_1|Add0~1\) # (GND)))))
-- \datapath|somador_1|Add0~3\ = CARRY((\datapath|sub3|Add1~5_combout\ & (!\datapath|sub2|Add1~5_combout\ & !\datapath|somador_1|Add0~1\)) # (!\datapath|sub3|Add1~5_combout\ & ((!\datapath|somador_1|Add0~1\) # (!\datapath|sub2|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub3|Add1~5_combout\,
	datab => \datapath|sub2|Add1~5_combout\,
	datad => VCC,
	cin => \datapath|somador_1|Add0~1\,
	combout => \datapath|somador_1|Add0~2_combout\,
	cout => \datapath|somador_1|Add0~3\);

-- Location: IOIBUF_X25_Y0_N1
\mem_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(3),
	o => \mem_B[3]~input_o\);

-- Location: FF_X25_Y20_N7
\datapath|reg_pB0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[3]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(3));

-- Location: IOIBUF_X0_Y23_N8
\mem_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(2),
	o => \mem_A[2]~input_o\);

-- Location: FF_X25_Y20_N5
\datapath|reg_pA0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[2]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(2));

-- Location: IOIBUF_X32_Y0_N8
\mem_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(1),
	o => \mem_A[1]~input_o\);

-- Location: FF_X25_Y20_N19
\datapath|reg_pA0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[1]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(1));

-- Location: IOIBUF_X34_Y9_N15
\mem_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(0),
	o => \mem_B[0]~input_o\);

-- Location: FF_X25_Y20_N17
\datapath|reg_pB0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[0]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(0));

-- Location: LCCOMB_X26_Y20_N18
\datapath|sub0|Add0~6\ : cycloneiii_lcell_comb
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

-- Location: IOIBUF_X16_Y0_N8
\mem_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(7),
	o => \mem_A[7]~input_o\);

-- Location: FF_X25_Y20_N15
\datapath|reg_pA0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[7]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(7));

-- Location: IOIBUF_X23_Y24_N1
\mem_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(6),
	o => \mem_B[6]~input_o\);

-- Location: FF_X25_Y20_N29
\datapath|reg_pB0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[6]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(6));

-- Location: IOIBUF_X23_Y0_N8
\mem_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(5),
	o => \mem_A[5]~input_o\);

-- Location: FF_X25_Y20_N27
\datapath|reg_pA0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[5]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(5));

-- Location: IOIBUF_X0_Y6_N22
\mem_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(4),
	o => \mem_B[4]~input_o\);

-- Location: FF_X25_Y20_N25
\datapath|reg_pB0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[4]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(4));

-- Location: IOIBUF_X1_Y24_N8
\mem_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(3),
	o => \mem_A[3]~input_o\);

-- Location: FF_X25_Y20_N23
\datapath|reg_pA0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[3]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(3));

-- Location: IOIBUF_X0_Y9_N8
\mem_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(1),
	o => \mem_B[1]~input_o\);

-- Location: FF_X25_Y20_N3
\datapath|reg_pB0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[1]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(1));

-- Location: IOIBUF_X28_Y0_N1
\mem_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(0),
	o => \mem_A[0]~input_o\);

-- Location: FF_X25_Y20_N1
\datapath|reg_pA0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[0]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA0|q\(0));

-- Location: LCCOMB_X25_Y20_N16
\datapath|sub0|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~1_cout\ = CARRY((!\datapath|reg_pB0|q\(0) & \datapath|reg_pA0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(0),
	datab => \datapath|reg_pA0|q\(0),
	datad => VCC,
	cout => \datapath|sub0|LessThan0~1_cout\);

-- Location: LCCOMB_X25_Y20_N18
\datapath|sub0|LessThan0~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N20
\datapath|sub0|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~5_cout\ = CARRY((\datapath|reg_pB0|q\(2) & (\datapath|reg_pA0|q\(2) & !\datapath|sub0|LessThan0~3_cout\)) # (!\datapath|reg_pB0|q\(2) & ((\datapath|reg_pA0|q\(2)) # (!\datapath|sub0|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(2),
	datab => \datapath|reg_pA0|q\(2),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~3_cout\,
	cout => \datapath|sub0|LessThan0~5_cout\);

-- Location: LCCOMB_X25_Y20_N22
\datapath|sub0|LessThan0~7\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N24
\datapath|sub0|LessThan0~9\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N26
\datapath|sub0|LessThan0~11\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y20_N28
\datapath|sub0|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~13_cout\ = CARRY((\datapath|reg_pA0|q\(6) & ((!\datapath|sub0|LessThan0~11_cout\) # (!\datapath|reg_pB0|q\(6)))) # (!\datapath|reg_pA0|q\(6) & (!\datapath|reg_pB0|q\(6) & !\datapath|sub0|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(6),
	datab => \datapath|reg_pB0|q\(6),
	datad => VCC,
	cin => \datapath|sub0|LessThan0~11_cout\,
	cout => \datapath|sub0|LessThan0~13_cout\);

-- Location: LCCOMB_X25_Y20_N30
\datapath|sub0|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|LessThan0~14_combout\ = (\datapath|reg_pB0|q\(7) & (\datapath|reg_pA0|q\(7) & \datapath|sub0|LessThan0~13_cout\)) # (!\datapath|reg_pB0|q\(7) & ((\datapath|reg_pA0|q\(7)) # (\datapath|sub0|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(7),
	datab => \datapath|reg_pA0|q\(7),
	cin => \datapath|sub0|LessThan0~13_cout\,
	combout => \datapath|sub0|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y20_N2
\datapath|sub0|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~11_combout\ = (\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add0~6_combout\))) # (!\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~9_combout\,
	datac => \datapath|sub0|Add0~6_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~11_combout\);

-- Location: IOIBUF_X34_Y3_N22
\mem_A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(10),
	o => \mem_A[10]~input_o\);

-- Location: FF_X29_Y20_N5
\datapath|reg_pA1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[10]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(2));

-- Location: IOIBUF_X30_Y24_N22
\mem_B[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(9),
	o => \mem_B[9]~input_o\);

-- Location: FF_X29_Y20_N3
\datapath|reg_pB1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[9]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(1));

-- Location: IOIBUF_X34_Y9_N22
\mem_A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(8),
	o => \mem_A[8]~input_o\);

-- Location: FF_X29_Y20_N1
\datapath|reg_pA1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[8]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(0));

-- Location: LCCOMB_X28_Y20_N12
\datapath|sub1|Add0~0\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X28_Y20_N14
\datapath|sub1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~2_combout\ = (\datapath|reg_pA1|q\(1) & ((\datapath|reg_pB1|q\(1) & (!\datapath|sub1|Add0~1\)) # (!\datapath|reg_pB1|q\(1) & (\datapath|sub1|Add0~1\ & VCC)))) # (!\datapath|reg_pA1|q\(1) & ((\datapath|reg_pB1|q\(1) & 
-- ((\datapath|sub1|Add0~1\) # (GND))) # (!\datapath|reg_pB1|q\(1) & (!\datapath|sub1|Add0~1\))))
-- \datapath|sub1|Add0~3\ = CARRY((\datapath|reg_pA1|q\(1) & (\datapath|reg_pB1|q\(1) & !\datapath|sub1|Add0~1\)) # (!\datapath|reg_pA1|q\(1) & ((\datapath|reg_pB1|q\(1)) # (!\datapath|sub1|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(1),
	datab => \datapath|reg_pB1|q\(1),
	datad => VCC,
	cin => \datapath|sub1|Add0~1\,
	combout => \datapath|sub1|Add0~2_combout\,
	cout => \datapath|sub1|Add0~3\);

-- Location: LCCOMB_X28_Y20_N16
\datapath|sub1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add0~4_combout\ = ((\datapath|reg_pB1|q\(2) $ (\datapath|reg_pA1|q\(2) $ (\datapath|sub1|Add0~3\)))) # (GND)
-- \datapath|sub1|Add0~5\ = CARRY((\datapath|reg_pB1|q\(2) & (\datapath|reg_pA1|q\(2) & !\datapath|sub1|Add0~3\)) # (!\datapath|reg_pB1|q\(2) & ((\datapath|reg_pA1|q\(2)) # (!\datapath|sub1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(2),
	datab => \datapath|reg_pA1|q\(2),
	datad => VCC,
	cin => \datapath|sub1|Add0~3\,
	combout => \datapath|sub1|Add0~4_combout\,
	cout => \datapath|sub1|Add0~5\);

-- Location: IOIBUF_X34_Y4_N22
\mem_B[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(8),
	o => \mem_B[8]~input_o\);

-- Location: FF_X29_Y20_N17
\datapath|reg_pB1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[8]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(0));

-- Location: LCCOMB_X29_Y20_N2
\datapath|sub1|Add1~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X29_Y20_N4
\datapath|sub1|Add1~6\ : cycloneiii_lcell_comb
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

-- Location: IOIBUF_X34_Y2_N15
\mem_A[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(15),
	o => \mem_A[15]~input_o\);

-- Location: FF_X29_Y20_N15
\datapath|reg_pA1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[15]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(7));

-- Location: IOIBUF_X30_Y0_N8
\mem_B[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(14),
	o => \mem_B[14]~input_o\);

-- Location: FF_X29_Y20_N29
\datapath|reg_pB1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[14]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(6));

-- Location: IOIBUF_X30_Y0_N1
\mem_A[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(13),
	o => \mem_A[13]~input_o\);

-- Location: FF_X29_Y20_N27
\datapath|reg_pA1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[13]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(5));

-- Location: IOIBUF_X34_Y10_N8
\mem_B[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(12),
	o => \mem_B[12]~input_o\);

-- Location: FF_X29_Y20_N25
\datapath|reg_pB1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[12]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(4));

-- Location: IOIBUF_X30_Y24_N1
\mem_A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_A(11),
	o => \mem_A[11]~input_o\);

-- Location: FF_X29_Y20_N23
\datapath|reg_pA1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_A[11]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA1|q\(3));

-- Location: LCCOMB_X29_Y20_N16
\datapath|sub1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~1_cout\ = CARRY((\datapath|reg_pA1|q\(0) & !\datapath|reg_pB1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(0),
	datab => \datapath|reg_pB1|q\(0),
	datad => VCC,
	cout => \datapath|sub1|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y20_N18
\datapath|sub1|LessThan0~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X29_Y20_N20
\datapath|sub1|LessThan0~5\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X29_Y20_N22
\datapath|sub1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~7_cout\ = CARRY((\datapath|reg_pB1|q\(3) & ((!\datapath|sub1|LessThan0~5_cout\) # (!\datapath|reg_pA1|q\(3)))) # (!\datapath|reg_pB1|q\(3) & (!\datapath|reg_pA1|q\(3) & !\datapath|sub1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(3),
	datab => \datapath|reg_pA1|q\(3),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~5_cout\,
	cout => \datapath|sub1|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y20_N24
\datapath|sub1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~9_cout\ = CARRY((\datapath|reg_pA1|q\(4) & ((!\datapath|sub1|LessThan0~7_cout\) # (!\datapath|reg_pB1|q\(4)))) # (!\datapath|reg_pA1|q\(4) & (!\datapath|reg_pB1|q\(4) & !\datapath|sub1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA1|q\(4),
	datab => \datapath|reg_pB1|q\(4),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~7_cout\,
	cout => \datapath|sub1|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y20_N26
\datapath|sub1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~11_cout\ = CARRY((\datapath|reg_pB1|q\(5) & ((!\datapath|sub1|LessThan0~9_cout\) # (!\datapath|reg_pA1|q\(5)))) # (!\datapath|reg_pB1|q\(5) & (!\datapath|reg_pA1|q\(5) & !\datapath|sub1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(5),
	datab => \datapath|reg_pA1|q\(5),
	datad => VCC,
	cin => \datapath|sub1|LessThan0~9_cout\,
	cout => \datapath|sub1|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y20_N28
\datapath|sub1|LessThan0~13\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X29_Y20_N30
\datapath|sub1|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|LessThan0~14_combout\ = (\datapath|reg_pB1|q\(7) & (\datapath|reg_pA1|q\(7) & \datapath|sub1|LessThan0~13_cout\)) # (!\datapath|reg_pB1|q\(7) & ((\datapath|reg_pA1|q\(7)) # (\datapath|sub1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(7),
	datab => \datapath|reg_pA1|q\(7),
	cin => \datapath|sub1|LessThan0~13_cout\,
	combout => \datapath|sub1|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y20_N28
\datapath|sub1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~8_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~4_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add0~4_combout\,
	datac => \datapath|sub1|Add1~6_combout\,
	datad => \datapath|sub1|LessThan0~14_combout\,
	combout => \datapath|sub1|Add1~8_combout\);

-- Location: LCCOMB_X28_Y20_N10
\datapath|sub1|Add1~5\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X28_Y20_N0
\datapath|sub1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~2_combout\ = (\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add0~0_combout\))) # (!\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add1~0_combout\,
	datac => \datapath|sub1|LessThan0~14_combout\,
	datad => \datapath|sub1|Add0~0_combout\,
	combout => \datapath|sub1|Add1~2_combout\);

-- Location: LCCOMB_X24_Y20_N8
\datapath|somador_0|S[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[2]~4_combout\ = ((\datapath|sub0|Add1~8_combout\ $ (\datapath|sub1|Add1~8_combout\ $ (!\datapath|somador_0|S[1]~3\)))) # (GND)
-- \datapath|somador_0|S[2]~5\ = CARRY((\datapath|sub0|Add1~8_combout\ & ((\datapath|sub1|Add1~8_combout\) # (!\datapath|somador_0|S[1]~3\))) # (!\datapath|sub0|Add1~8_combout\ & (\datapath|sub1|Add1~8_combout\ & !\datapath|somador_0|S[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~8_combout\,
	datab => \datapath|sub1|Add1~8_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[1]~3\,
	combout => \datapath|somador_0|S[2]~4_combout\,
	cout => \datapath|somador_0|S[2]~5\);

-- Location: LCCOMB_X24_Y20_N10
\datapath|somador_0|S[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[3]~6_combout\ = (\datapath|sub1|Add1~11_combout\ & ((\datapath|sub0|Add1~11_combout\ & (\datapath|somador_0|S[2]~5\ & VCC)) # (!\datapath|sub0|Add1~11_combout\ & (!\datapath|somador_0|S[2]~5\)))) # (!\datapath|sub1|Add1~11_combout\ & 
-- ((\datapath|sub0|Add1~11_combout\ & (!\datapath|somador_0|S[2]~5\)) # (!\datapath|sub0|Add1~11_combout\ & ((\datapath|somador_0|S[2]~5\) # (GND)))))
-- \datapath|somador_0|S[3]~7\ = CARRY((\datapath|sub1|Add1~11_combout\ & (!\datapath|sub0|Add1~11_combout\ & !\datapath|somador_0|S[2]~5\)) # (!\datapath|sub1|Add1~11_combout\ & ((!\datapath|somador_0|S[2]~5\) # (!\datapath|sub0|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add1~11_combout\,
	datab => \datapath|sub0|Add1~11_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[2]~5\,
	combout => \datapath|somador_0|S[3]~6_combout\,
	cout => \datapath|somador_0|S[3]~7\);

-- Location: LCCOMB_X23_Y20_N8
\datapath|somador_2|S[4]~8\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y20_N10
\datapath|reg_soma|q[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[4]~22_combout\ = ((\datapath|reg_soma|q\(4) $ (\datapath|somador_2|S[4]~8_combout\ $ (!\datapath|reg_soma|q[3]~21\)))) # (GND)
-- \datapath|reg_soma|q[4]~23\ = CARRY((\datapath|reg_soma|q\(4) & ((\datapath|somador_2|S[4]~8_combout\) # (!\datapath|reg_soma|q[3]~21\))) # (!\datapath|reg_soma|q\(4) & (\datapath|somador_2|S[4]~8_combout\ & !\datapath|reg_soma|q[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(4),
	datab => \datapath|somador_2|S[4]~8_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[3]~21\,
	combout => \datapath|reg_soma|q[4]~22_combout\,
	cout => \datapath|reg_soma|q[4]~23\);

-- Location: FF_X22_Y20_N11
\datapath|reg_soma|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[4]~22_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(4));

-- Location: FF_X21_Y20_N21
\datapath|reg_SAD|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(4),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(4));

-- Location: LCCOMB_X29_Y20_N10
\datapath|sub1|Add1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~15_combout\ = (\datapath|reg_pB1|q\(5) & ((\datapath|reg_pA1|q\(5) & (!\datapath|sub1|Add1~13\)) # (!\datapath|reg_pA1|q\(5) & (\datapath|sub1|Add1~13\ & VCC)))) # (!\datapath|reg_pB1|q\(5) & ((\datapath|reg_pA1|q\(5) & 
-- ((\datapath|sub1|Add1~13\) # (GND))) # (!\datapath|reg_pA1|q\(5) & (!\datapath|sub1|Add1~13\))))
-- \datapath|sub1|Add1~16\ = CARRY((\datapath|reg_pB1|q\(5) & (\datapath|reg_pA1|q\(5) & !\datapath|sub1|Add1~13\)) # (!\datapath|reg_pB1|q\(5) & ((\datapath|reg_pA1|q\(5)) # (!\datapath|sub1|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB1|q\(5),
	datab => \datapath|reg_pA1|q\(5),
	datad => VCC,
	cin => \datapath|sub1|Add1~13\,
	combout => \datapath|sub1|Add1~15_combout\,
	cout => \datapath|sub1|Add1~16\);

-- Location: LCCOMB_X28_Y20_N8
\datapath|sub1|Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~17_combout\ = (\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add0~10_combout\)) # (!\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add0~10_combout\,
	datac => \datapath|sub1|LessThan0~14_combout\,
	datad => \datapath|sub1|Add1~15_combout\,
	combout => \datapath|sub1|Add1~17_combout\);

-- Location: LCCOMB_X26_Y20_N20
\datapath|sub0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~8_combout\ = ((\datapath|reg_pA0|q\(4) $ (\datapath|reg_pB0|q\(4) $ (\datapath|sub0|Add0~7\)))) # (GND)
-- \datapath|sub0|Add0~9\ = CARRY((\datapath|reg_pA0|q\(4) & ((!\datapath|sub0|Add0~7\) # (!\datapath|reg_pB0|q\(4)))) # (!\datapath|reg_pA0|q\(4) & (!\datapath|reg_pB0|q\(4) & !\datapath|sub0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA0|q\(4),
	datab => \datapath|reg_pB0|q\(4),
	datad => VCC,
	cin => \datapath|sub0|Add0~7\,
	combout => \datapath|sub0|Add0~8_combout\,
	cout => \datapath|sub0|Add0~9\);

-- Location: LCCOMB_X24_Y20_N0
\datapath|sub0|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~14_combout\ = (\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add0~8_combout\)) # (!\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub0|Add0~8_combout\,
	datac => \datapath|sub0|Add1~12_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~14_combout\);

-- Location: LCCOMB_X24_Y20_N14
\datapath|somador_0|S[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[5]~10_combout\ = (\datapath|sub0|Add1~17_combout\ & ((\datapath|sub1|Add1~17_combout\ & (\datapath|somador_0|S[4]~9\ & VCC)) # (!\datapath|sub1|Add1~17_combout\ & (!\datapath|somador_0|S[4]~9\)))) # (!\datapath|sub0|Add1~17_combout\ 
-- & ((\datapath|sub1|Add1~17_combout\ & (!\datapath|somador_0|S[4]~9\)) # (!\datapath|sub1|Add1~17_combout\ & ((\datapath|somador_0|S[4]~9\) # (GND)))))
-- \datapath|somador_0|S[5]~11\ = CARRY((\datapath|sub0|Add1~17_combout\ & (!\datapath|sub1|Add1~17_combout\ & !\datapath|somador_0|S[4]~9\)) # (!\datapath|sub0|Add1~17_combout\ & ((!\datapath|somador_0|S[4]~9\) # (!\datapath|sub1|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~17_combout\,
	datab => \datapath|sub1|Add1~17_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[4]~9\,
	combout => \datapath|somador_0|S[5]~10_combout\,
	cout => \datapath|somador_0|S[5]~11\);

-- Location: LCCOMB_X23_Y20_N10
\datapath|somador_2|S[5]~10\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y20_N12
\datapath|reg_soma|q[5]~24\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N13
\datapath|reg_soma|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[5]~24_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(5));

-- Location: FF_X21_Y20_N23
\datapath|reg_SAD|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(5),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(5));

-- Location: IOIBUF_X34_Y9_N1
\mem_B[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(13),
	o => \mem_B[13]~input_o\);

-- Location: FF_X29_Y20_N11
\datapath|reg_pB1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[13]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB1|q\(5));

-- Location: LCCOMB_X28_Y20_N2
\datapath|sub1|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub1|Add1~20_combout\ = (\datapath|sub1|LessThan0~14_combout\ & ((\datapath|sub1|Add0~12_combout\))) # (!\datapath|sub1|LessThan0~14_combout\ & (\datapath|sub1|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub1|Add1~18_combout\,
	datac => \datapath|sub1|LessThan0~14_combout\,
	datad => \datapath|sub1|Add0~12_combout\,
	combout => \datapath|sub1|Add1~20_combout\);

-- Location: LCCOMB_X24_Y20_N16
\datapath|somador_0|S[6]~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y20_N12
\datapath|somador_2|S[6]~12\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y20_N14
\datapath|reg_soma|q[6]~26\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N15
\datapath|reg_soma|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[6]~26_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(6));

-- Location: FF_X21_Y20_N25
\datapath|reg_SAD|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(6),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(6));

-- Location: IOIBUF_X28_Y0_N22
\mem_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_B(5),
	o => \mem_B[5]~input_o\);

-- Location: FF_X25_Y20_N11
\datapath|reg_pB0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \mem_B[5]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB0|q\(5));

-- Location: LCCOMB_X26_Y20_N26
\datapath|sub0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add0~14_combout\ = \datapath|reg_pB0|q\(7) $ (\datapath|reg_pA0|q\(7) $ (!\datapath|sub0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB0|q\(7),
	datab => \datapath|reg_pA0|q\(7),
	cin => \datapath|sub0|Add0~13\,
	combout => \datapath|sub0|Add0~14_combout\);

-- Location: LCCOMB_X26_Y20_N30
\datapath|sub0|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub0|Add1~23_combout\ = (\datapath|sub0|LessThan0~14_combout\ & ((\datapath|sub0|Add0~14_combout\))) # (!\datapath|sub0|LessThan0~14_combout\ & (\datapath|sub0|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub0|Add1~21_combout\,
	datac => \datapath|sub0|Add0~14_combout\,
	datad => \datapath|sub0|LessThan0~14_combout\,
	combout => \datapath|sub0|Add1~23_combout\);

-- Location: LCCOMB_X24_Y20_N18
\datapath|somador_0|S[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_0|S[7]~14_combout\ = (\datapath|sub1|Add1~23_combout\ & ((\datapath|sub0|Add1~23_combout\ & (\datapath|somador_0|S[6]~13\ & VCC)) # (!\datapath|sub0|Add1~23_combout\ & (!\datapath|somador_0|S[6]~13\)))) # 
-- (!\datapath|sub1|Add1~23_combout\ & ((\datapath|sub0|Add1~23_combout\ & (!\datapath|somador_0|S[6]~13\)) # (!\datapath|sub0|Add1~23_combout\ & ((\datapath|somador_0|S[6]~13\) # (GND)))))
-- \datapath|somador_0|S[7]~15\ = CARRY((\datapath|sub1|Add1~23_combout\ & (!\datapath|sub0|Add1~23_combout\ & !\datapath|somador_0|S[6]~13\)) # (!\datapath|sub1|Add1~23_combout\ & ((!\datapath|somador_0|S[6]~13\) # (!\datapath|sub0|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub1|Add1~23_combout\,
	datab => \datapath|sub0|Add1~23_combout\,
	datad => VCC,
	cin => \datapath|somador_0|S[6]~13\,
	combout => \datapath|somador_0|S[7]~14_combout\,
	cout => \datapath|somador_0|S[7]~15\);

-- Location: LCCOMB_X23_Y20_N14
\datapath|somador_2|S[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|somador_2|S[7]~14_combout\ = (\datapath|somador_1|Add0~14_combout\ & ((\datapath|somador_0|S[7]~14_combout\ & (\datapath|somador_2|S[6]~13\ & VCC)) # (!\datapath|somador_0|S[7]~14_combout\ & (!\datapath|somador_2|S[6]~13\)))) # 
-- (!\datapath|somador_1|Add0~14_combout\ & ((\datapath|somador_0|S[7]~14_combout\ & (!\datapath|somador_2|S[6]~13\)) # (!\datapath|somador_0|S[7]~14_combout\ & ((\datapath|somador_2|S[6]~13\) # (GND)))))
-- \datapath|somador_2|S[7]~15\ = CARRY((\datapath|somador_1|Add0~14_combout\ & (!\datapath|somador_0|S[7]~14_combout\ & !\datapath|somador_2|S[6]~13\)) # (!\datapath|somador_1|Add0~14_combout\ & ((!\datapath|somador_2|S[6]~13\) # 
-- (!\datapath|somador_0|S[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador_1|Add0~14_combout\,
	datab => \datapath|somador_0|S[7]~14_combout\,
	datad => VCC,
	cin => \datapath|somador_2|S[6]~13\,
	combout => \datapath|somador_2|S[7]~14_combout\,
	cout => \datapath|somador_2|S[7]~15\);

-- Location: LCCOMB_X22_Y20_N16
\datapath|reg_soma|q[7]~28\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N17
\datapath|reg_soma|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[7]~28_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(7));

-- Location: LCCOMB_X23_Y20_N26
\datapath|reg_SAD|q[7]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X23_Y20_N27
\datapath|reg_SAD|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[7]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(7));

-- Location: LCCOMB_X24_Y20_N20
\datapath|somador_0|S[8]~16\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y20_N16
\datapath|somador_2|S[8]~16\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y20_N18
\datapath|reg_soma|q[8]~30\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N19
\datapath|reg_soma|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[8]~30_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(8));

-- Location: LCCOMB_X23_Y20_N20
\datapath|reg_SAD|q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[8]~feeder_combout\ = \datapath|reg_soma|q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(8),
	combout => \datapath|reg_SAD|q[8]~feeder_combout\);

-- Location: FF_X23_Y20_N21
\datapath|reg_SAD|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[8]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(8));

-- Location: LCCOMB_X23_Y20_N18
\datapath|somador_2|S[9]~18\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y20_N20
\datapath|reg_soma|q[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[9]~32_combout\ = (\datapath|reg_soma|q\(9) & ((\datapath|somador_2|S[9]~18_combout\ & (\datapath|reg_soma|q[8]~31\ & VCC)) # (!\datapath|somador_2|S[9]~18_combout\ & (!\datapath|reg_soma|q[8]~31\)))) # (!\datapath|reg_soma|q\(9) & 
-- ((\datapath|somador_2|S[9]~18_combout\ & (!\datapath|reg_soma|q[8]~31\)) # (!\datapath|somador_2|S[9]~18_combout\ & ((\datapath|reg_soma|q[8]~31\) # (GND)))))
-- \datapath|reg_soma|q[9]~33\ = CARRY((\datapath|reg_soma|q\(9) & (!\datapath|somador_2|S[9]~18_combout\ & !\datapath|reg_soma|q[8]~31\)) # (!\datapath|reg_soma|q\(9) & ((!\datapath|reg_soma|q[8]~31\) # (!\datapath|somador_2|S[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(9),
	datab => \datapath|somador_2|S[9]~18_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[8]~31\,
	combout => \datapath|reg_soma|q[9]~32_combout\,
	cout => \datapath|reg_soma|q[9]~33\);

-- Location: FF_X22_Y20_N21
\datapath|reg_soma|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[9]~32_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(9));

-- Location: FF_X19_Y20_N11
\datapath|reg_SAD|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(9),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(9));

-- Location: LCCOMB_X22_Y20_N22
\datapath|reg_soma|q[10]~34\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N23
\datapath|reg_soma|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[10]~34_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(10));

-- Location: LCCOMB_X21_Y20_N10
\datapath|reg_SAD|q[10]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X21_Y20_N11
\datapath|reg_SAD|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[10]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(10));

-- Location: LCCOMB_X22_Y20_N24
\datapath|reg_soma|q[11]~36\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N25
\datapath|reg_soma|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[11]~36_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(11));

-- Location: FF_X23_Y20_N23
\datapath|reg_SAD|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(11),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(11));

-- Location: LCCOMB_X22_Y20_N26
\datapath|reg_soma|q[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[12]~38_combout\ = (\datapath|reg_soma|q\(12) & (\datapath|reg_soma|q[11]~37\ $ (GND))) # (!\datapath|reg_soma|q\(12) & (!\datapath|reg_soma|q[11]~37\ & VCC))
-- \datapath|reg_soma|q[12]~39\ = CARRY((\datapath|reg_soma|q\(12) & !\datapath|reg_soma|q[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(12),
	datad => VCC,
	cin => \datapath|reg_soma|q[11]~37\,
	combout => \datapath|reg_soma|q[12]~38_combout\,
	cout => \datapath|reg_soma|q[12]~39\);

-- Location: FF_X22_Y20_N27
\datapath|reg_soma|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[12]~38_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(12));

-- Location: LCCOMB_X21_Y20_N12
\datapath|reg_SAD|q[12]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X21_Y20_N13
\datapath|reg_SAD|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[12]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(12));

-- Location: LCCOMB_X22_Y20_N28
\datapath|reg_soma|q[13]~40\ : cycloneiii_lcell_comb
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

-- Location: FF_X22_Y20_N29
\datapath|reg_soma|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_soma|q[13]~40_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_soma|q\(13));

-- Location: LCCOMB_X19_Y20_N0
\datapath|reg_SAD|q[13]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X19_Y20_N1
\datapath|reg_SAD|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[13]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(13));

ww_pronto <= \pronto~output_o\;

ww_ler <= \ler~output_o\;

ww_end_mem(0) <= \end_mem[0]~output_o\;

ww_end_mem(1) <= \end_mem[1]~output_o\;

ww_end_mem(2) <= \end_mem[2]~output_o\;

ww_end_mem(3) <= \end_mem[3]~output_o\;

ww_SAD(0) <= \SAD[0]~output_o\;

ww_SAD(1) <= \SAD[1]~output_o\;

ww_SAD(2) <= \SAD[2]~output_o\;

ww_SAD(3) <= \SAD[3]~output_o\;

ww_SAD(4) <= \SAD[4]~output_o\;

ww_SAD(5) <= \SAD[5]~output_o\;

ww_SAD(6) <= \SAD[6]~output_o\;

ww_SAD(7) <= \SAD[7]~output_o\;

ww_SAD(8) <= \SAD[8]~output_o\;

ww_SAD(9) <= \SAD[9]~output_o\;

ww_SAD(10) <= \SAD[10]~output_o\;

ww_SAD(11) <= \SAD[11]~output_o\;

ww_SAD(12) <= \SAD[12]~output_o\;

ww_SAD(13) <= \SAD[13]~output_o\;
END structure;


