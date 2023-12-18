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

-- DATE "10/31/2023 15:07:07"

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
	pA : IN std_logic_vector(7 DOWNTO 0);
	pB : IN std_logic_vector(7 DOWNTO 0);
	pronto : OUT std_logic;
	ler : OUT std_logic;
	end_mem : OUT std_logic_vector(5 DOWNTO 0);
	SAD : OUT std_logic_vector(13 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- pronto	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_mem[5]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[5]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[8]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[9]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[10]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[11]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[12]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD[13]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[7]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[6]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[5]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[3]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[2]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pB[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pA[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_pA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_ler : std_logic;
SIGNAL ww_end_mem : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SAD : std_logic_vector(13 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|sub|Add1~0_combout\ : std_logic;
SIGNAL \datapath|sub|Add0~2_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~3_combout\ : std_logic;
SIGNAL \datapath|sub|Add0~9\ : std_logic;
SIGNAL \datapath|sub|Add0~10_combout\ : std_logic;
SIGNAL \datapath|sub|Add0~11\ : std_logic;
SIGNAL \datapath|sub|Add1~16\ : std_logic;
SIGNAL \datapath|sub|Add0~12_combout\ : std_logic;
SIGNAL \datapath|sub|Add0~13\ : std_logic;
SIGNAL \datapath|sub|Add1~18_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~19\ : std_logic;
SIGNAL \datapath|sub|Add0~14_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~21_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~5_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~20_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~23_combout\ : std_logic;
SIGNAL \pB[7]~input_o\ : std_logic;
SIGNAL \pA[6]~input_o\ : std_logic;
SIGNAL \pB[5]~input_o\ : std_logic;
SIGNAL \pA[4]~input_o\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \ler~output_o\ : std_logic;
SIGNAL \end_mem[0]~output_o\ : std_logic;
SIGNAL \end_mem[1]~output_o\ : std_logic;
SIGNAL \end_mem[2]~output_o\ : std_logic;
SIGNAL \end_mem[3]~output_o\ : std_logic;
SIGNAL \end_mem[4]~output_o\ : std_logic;
SIGNAL \end_mem[5]~output_o\ : std_logic;
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
SIGNAL \controle|Selector0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controle|EstadoAtual.S0~q\ : std_logic;
SIGNAL \controle|EstadoAtual~12_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S1~q\ : std_logic;
SIGNAL \controle|EstadoAtual.S4~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S4~q\ : std_logic;
SIGNAL \controle|csoma~combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S2~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S2~q\ : std_logic;
SIGNAL \datapath|reg_i|q[0]~7_combout\ : std_logic;
SIGNAL \datapath|reg_i|q[0]~8\ : std_logic;
SIGNAL \datapath|reg_i|q[1]~9_combout\ : std_logic;
SIGNAL \datapath|reg_i|q[1]~10\ : std_logic;
SIGNAL \datapath|reg_i|q[2]~11_combout\ : std_logic;
SIGNAL \datapath|reg_i|q[2]~12\ : std_logic;
SIGNAL \datapath|reg_i|q[3]~14\ : std_logic;
SIGNAL \datapath|reg_i|q[4]~15_combout\ : std_logic;
SIGNAL \datapath|reg_i|q[4]~16\ : std_logic;
SIGNAL \datapath|reg_i|q[5]~18\ : std_logic;
SIGNAL \datapath|reg_i|q[6]~19_combout\ : std_logic;
SIGNAL \controle|EstadoAtual~10_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S3~q\ : std_logic;
SIGNAL \datapath|reg_i|q[3]~13_combout\ : std_logic;
SIGNAL \datapath|reg_i|q[5]~17_combout\ : std_logic;
SIGNAL \pA[0]~input_o\ : std_logic;
SIGNAL \datapath|sub|Add0~0_combout\ : std_logic;
SIGNAL \pA[7]~input_o\ : std_logic;
SIGNAL \pB[6]~input_o\ : std_logic;
SIGNAL \pA[5]~input_o\ : std_logic;
SIGNAL \pB[4]~input_o\ : std_logic;
SIGNAL \pA[3]~input_o\ : std_logic;
SIGNAL \pB[2]~input_o\ : std_logic;
SIGNAL \pB[1]~input_o\ : std_logic;
SIGNAL \pB[0]~input_o\ : std_logic;
SIGNAL \datapath|sub|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|sub|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~2_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[0]~14_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[0]~feeder_combout\ : std_logic;
SIGNAL \controle|EstadoAtual~11_combout\ : std_logic;
SIGNAL \controle|EstadoAtual.S5~q\ : std_logic;
SIGNAL \datapath|reg_soma|q[0]~15\ : std_logic;
SIGNAL \datapath|reg_soma|q[1]~16_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[1]~feeder_combout\ : std_logic;
SIGNAL \pA[2]~input_o\ : std_logic;
SIGNAL \datapath|sub|Add1~1\ : std_logic;
SIGNAL \datapath|sub|Add1~4\ : std_logic;
SIGNAL \datapath|sub|Add1~6_combout\ : std_logic;
SIGNAL \pA[1]~input_o\ : std_logic;
SIGNAL \datapath|sub|Add0~1\ : std_logic;
SIGNAL \datapath|sub|Add0~3\ : std_logic;
SIGNAL \datapath|sub|Add0~4_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~8_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[1]~17\ : std_logic;
SIGNAL \datapath|reg_soma|q[2]~18_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~7\ : std_logic;
SIGNAL \datapath|sub|Add1~9_combout\ : std_logic;
SIGNAL \pB[3]~input_o\ : std_logic;
SIGNAL \datapath|sub|Add0~5\ : std_logic;
SIGNAL \datapath|sub|Add0~6_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~11_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[2]~19\ : std_logic;
SIGNAL \datapath|reg_soma|q[3]~20_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub|Add0~7\ : std_logic;
SIGNAL \datapath|sub|Add0~8_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~10\ : std_logic;
SIGNAL \datapath|sub|Add1~12_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~14_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[3]~21\ : std_logic;
SIGNAL \datapath|reg_soma|q[4]~22_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[4]~feeder_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~13\ : std_logic;
SIGNAL \datapath|sub|Add1~15_combout\ : std_logic;
SIGNAL \datapath|sub|Add1~17_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[4]~23\ : std_logic;
SIGNAL \datapath|reg_soma|q[5]~24_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[5]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[5]~25\ : std_logic;
SIGNAL \datapath|reg_soma|q[6]~26_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[6]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[6]~27\ : std_logic;
SIGNAL \datapath|reg_soma|q[7]~28_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[7]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[7]~29\ : std_logic;
SIGNAL \datapath|reg_soma|q[8]~30_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[8]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[8]~31\ : std_logic;
SIGNAL \datapath|reg_soma|q[9]~32_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[9]~33\ : std_logic;
SIGNAL \datapath|reg_soma|q[10]~34_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[10]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[10]~35\ : std_logic;
SIGNAL \datapath|reg_soma|q[11]~36_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[11]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[11]~37\ : std_logic;
SIGNAL \datapath|reg_soma|q[12]~38_combout\ : std_logic;
SIGNAL \datapath|reg_soma|q[12]~39\ : std_logic;
SIGNAL \datapath|reg_soma|q[13]~40_combout\ : std_logic;
SIGNAL \datapath|reg_SAD|q[13]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_pB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_SAD|q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \datapath|reg_i|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \datapath|reg_pA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|reg_soma|q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \controle|ALT_INV_EstadoAtual.S0~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_ck <= ck;
ww_iniciar <= iniciar;
ww_reset <= reset;
ww_pA <= pA;
ww_pB <= pB;
pronto <= ww_pronto;
ler <= ww_ler;
end_mem <= ww_end_mem;
SAD <= ww_SAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\controle|ALT_INV_EstadoAtual.S0~q\ <= NOT \controle|EstadoAtual.S0~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X30_Y23_N0
\datapath|sub|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~0_combout\ = (\datapath|reg_pA|q\(0) & (\datapath|reg_pB|q\(0) $ (VCC))) # (!\datapath|reg_pA|q\(0) & ((\datapath|reg_pB|q\(0)) # (GND)))
-- \datapath|sub|Add1~1\ = CARRY((\datapath|reg_pB|q\(0)) # (!\datapath|reg_pA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(0),
	datab => \datapath|reg_pB|q\(0),
	datad => VCC,
	combout => \datapath|sub|Add1~0_combout\,
	cout => \datapath|sub|Add1~1\);

-- Location: LCCOMB_X31_Y23_N2
\datapath|sub|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~2_combout\ = (\datapath|reg_pB|q\(1) & ((\datapath|reg_pA|q\(1) & (!\datapath|sub|Add0~1\)) # (!\datapath|reg_pA|q\(1) & ((\datapath|sub|Add0~1\) # (GND))))) # (!\datapath|reg_pB|q\(1) & ((\datapath|reg_pA|q\(1) & (\datapath|sub|Add0~1\ 
-- & VCC)) # (!\datapath|reg_pA|q\(1) & (!\datapath|sub|Add0~1\))))
-- \datapath|sub|Add0~3\ = CARRY((\datapath|reg_pB|q\(1) & ((!\datapath|sub|Add0~1\) # (!\datapath|reg_pA|q\(1)))) # (!\datapath|reg_pB|q\(1) & (!\datapath|reg_pA|q\(1) & !\datapath|sub|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(1),
	datab => \datapath|reg_pA|q\(1),
	datad => VCC,
	cin => \datapath|sub|Add0~1\,
	combout => \datapath|sub|Add0~2_combout\,
	cout => \datapath|sub|Add0~3\);

-- Location: LCCOMB_X30_Y23_N2
\datapath|sub|Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~3_combout\ = (\datapath|reg_pA|q\(1) & ((\datapath|reg_pB|q\(1) & (!\datapath|sub|Add1~1\)) # (!\datapath|reg_pB|q\(1) & ((\datapath|sub|Add1~1\) # (GND))))) # (!\datapath|reg_pA|q\(1) & ((\datapath|reg_pB|q\(1) & (\datapath|sub|Add1~1\ 
-- & VCC)) # (!\datapath|reg_pB|q\(1) & (!\datapath|sub|Add1~1\))))
-- \datapath|sub|Add1~4\ = CARRY((\datapath|reg_pA|q\(1) & ((!\datapath|sub|Add1~1\) # (!\datapath|reg_pB|q\(1)))) # (!\datapath|reg_pA|q\(1) & (!\datapath|reg_pB|q\(1) & !\datapath|sub|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(1),
	datab => \datapath|reg_pB|q\(1),
	datad => VCC,
	cin => \datapath|sub|Add1~1\,
	combout => \datapath|sub|Add1~3_combout\,
	cout => \datapath|sub|Add1~4\);

-- Location: LCCOMB_X31_Y23_N8
\datapath|sub|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~8_combout\ = ((\datapath|reg_pA|q\(4) $ (\datapath|reg_pB|q\(4) $ (\datapath|sub|Add0~7\)))) # (GND)
-- \datapath|sub|Add0~9\ = CARRY((\datapath|reg_pA|q\(4) & ((!\datapath|sub|Add0~7\) # (!\datapath|reg_pB|q\(4)))) # (!\datapath|reg_pA|q\(4) & (!\datapath|reg_pB|q\(4) & !\datapath|sub|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(4),
	datab => \datapath|reg_pB|q\(4),
	datad => VCC,
	cin => \datapath|sub|Add0~7\,
	combout => \datapath|sub|Add0~8_combout\,
	cout => \datapath|sub|Add0~9\);

-- Location: LCCOMB_X31_Y23_N10
\datapath|sub|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~10_combout\ = (\datapath|reg_pA|q\(5) & ((\datapath|reg_pB|q\(5) & (!\datapath|sub|Add0~9\)) # (!\datapath|reg_pB|q\(5) & (\datapath|sub|Add0~9\ & VCC)))) # (!\datapath|reg_pA|q\(5) & ((\datapath|reg_pB|q\(5) & ((\datapath|sub|Add0~9\) 
-- # (GND))) # (!\datapath|reg_pB|q\(5) & (!\datapath|sub|Add0~9\))))
-- \datapath|sub|Add0~11\ = CARRY((\datapath|reg_pA|q\(5) & (\datapath|reg_pB|q\(5) & !\datapath|sub|Add0~9\)) # (!\datapath|reg_pA|q\(5) & ((\datapath|reg_pB|q\(5)) # (!\datapath|sub|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(5),
	datab => \datapath|reg_pB|q\(5),
	datad => VCC,
	cin => \datapath|sub|Add0~9\,
	combout => \datapath|sub|Add0~10_combout\,
	cout => \datapath|sub|Add0~11\);

-- Location: LCCOMB_X30_Y23_N10
\datapath|sub|Add1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~15_combout\ = (\datapath|reg_pB|q\(5) & ((\datapath|reg_pA|q\(5) & (!\datapath|sub|Add1~13\)) # (!\datapath|reg_pA|q\(5) & (\datapath|sub|Add1~13\ & VCC)))) # (!\datapath|reg_pB|q\(5) & ((\datapath|reg_pA|q\(5) & 
-- ((\datapath|sub|Add1~13\) # (GND))) # (!\datapath|reg_pA|q\(5) & (!\datapath|sub|Add1~13\))))
-- \datapath|sub|Add1~16\ = CARRY((\datapath|reg_pB|q\(5) & (\datapath|reg_pA|q\(5) & !\datapath|sub|Add1~13\)) # (!\datapath|reg_pB|q\(5) & ((\datapath|reg_pA|q\(5)) # (!\datapath|sub|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(5),
	datab => \datapath|reg_pA|q\(5),
	datad => VCC,
	cin => \datapath|sub|Add1~13\,
	combout => \datapath|sub|Add1~15_combout\,
	cout => \datapath|sub|Add1~16\);

-- Location: LCCOMB_X31_Y23_N12
\datapath|sub|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~12_combout\ = ((\datapath|reg_pA|q\(6) $ (\datapath|reg_pB|q\(6) $ (\datapath|sub|Add0~11\)))) # (GND)
-- \datapath|sub|Add0~13\ = CARRY((\datapath|reg_pA|q\(6) & ((!\datapath|sub|Add0~11\) # (!\datapath|reg_pB|q\(6)))) # (!\datapath|reg_pA|q\(6) & (!\datapath|reg_pB|q\(6) & !\datapath|sub|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(6),
	datab => \datapath|reg_pB|q\(6),
	datad => VCC,
	cin => \datapath|sub|Add0~11\,
	combout => \datapath|sub|Add0~12_combout\,
	cout => \datapath|sub|Add0~13\);

-- Location: LCCOMB_X30_Y23_N12
\datapath|sub|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~18_combout\ = ((\datapath|reg_pA|q\(6) $ (\datapath|reg_pB|q\(6) $ (\datapath|sub|Add1~16\)))) # (GND)
-- \datapath|sub|Add1~19\ = CARRY((\datapath|reg_pA|q\(6) & (\datapath|reg_pB|q\(6) & !\datapath|sub|Add1~16\)) # (!\datapath|reg_pA|q\(6) & ((\datapath|reg_pB|q\(6)) # (!\datapath|sub|Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(6),
	datab => \datapath|reg_pB|q\(6),
	datad => VCC,
	cin => \datapath|sub|Add1~16\,
	combout => \datapath|sub|Add1~18_combout\,
	cout => \datapath|sub|Add1~19\);

-- Location: LCCOMB_X31_Y23_N14
\datapath|sub|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~14_combout\ = \datapath|reg_pB|q\(7) $ (\datapath|sub|Add0~13\ $ (!\datapath|reg_pA|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_pB|q\(7),
	datad => \datapath|reg_pA|q\(7),
	cin => \datapath|sub|Add0~13\,
	combout => \datapath|sub|Add0~14_combout\);

-- Location: LCCOMB_X30_Y23_N14
\datapath|sub|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~21_combout\ = \datapath|reg_pB|q\(7) $ (\datapath|reg_pA|q\(7) $ (!\datapath|sub|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(7),
	datab => \datapath|reg_pA|q\(7),
	cin => \datapath|sub|Add1~19\,
	combout => \datapath|sub|Add1~21_combout\);

-- Location: FF_X30_Y23_N31
\datapath|reg_pB|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[7]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(7));

-- Location: FF_X30_Y23_N13
\datapath|reg_pA|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[6]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(6));

-- Location: FF_X30_Y23_N11
\datapath|reg_pB|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[5]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(5));

-- Location: FF_X30_Y23_N9
\datapath|reg_pA|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[4]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(4));

-- Location: LCCOMB_X31_Y23_N16
\datapath|sub|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~5_combout\ = (\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add0~2_combout\))) # (!\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add1~3_combout\,
	datab => \datapath|sub|Add0~2_combout\,
	datad => \datapath|sub|LessThan0~14_combout\,
	combout => \datapath|sub|Add1~5_combout\);

-- Location: LCCOMB_X32_Y23_N30
\datapath|sub|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~20_combout\ = (\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add0~12_combout\))) # (!\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub|Add1~18_combout\,
	datac => \datapath|sub|LessThan0~14_combout\,
	datad => \datapath|sub|Add0~12_combout\,
	combout => \datapath|sub|Add1~20_combout\);

-- Location: LCCOMB_X31_Y23_N26
\datapath|sub|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~23_combout\ = (\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add0~14_combout\))) # (!\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add1~21_combout\,
	datab => \datapath|sub|Add0~14_combout\,
	datad => \datapath|sub|LessThan0~14_combout\,
	combout => \datapath|sub|Add1~23_combout\);

-- Location: IOIBUF_X16_Y24_N22
\pB[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(7),
	o => \pB[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\pA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(6),
	o => \pA[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\pB[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(5),
	o => \pB[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\pA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(4),
	o => \pA[4]~input_o\);

-- Location: IOOBUF_X34_Y7_N23
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X34_Y9_N23
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y2_N23
\end_mem[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_i|q\(4),
	devoe => ww_devoe,
	o => \end_mem[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\end_mem[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath|reg_i|q\(5),
	devoe => ww_devoe,
	o => \end_mem[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X34_Y3_N23
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

-- Location: IOOBUF_X34_Y18_N16
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X30_Y24_N2
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X34_Y4_N23
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

-- Location: IOOBUF_X34_Y18_N2
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOIBUF_X34_Y4_N15
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X33_Y12_N18
\controle|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|Selector0~0_combout\ = (!\controle|EstadoAtual.S5~q\ & ((\controle|EstadoAtual.S0~q\) # (\iniciar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|EstadoAtual.S5~q\,
	datac => \controle|EstadoAtual.S0~q\,
	datad => \iniciar~input_o\,
	combout => \controle|Selector0~0_combout\);

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

-- Location: FF_X33_Y12_N19
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

-- Location: LCCOMB_X33_Y12_N22
\controle|EstadoAtual~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~12_combout\ = (!\controle|EstadoAtual.S0~q\ & \iniciar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|EstadoAtual.S0~q\,
	datad => \iniciar~input_o\,
	combout => \controle|EstadoAtual~12_combout\);

-- Location: FF_X33_Y12_N23
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

-- Location: LCCOMB_X33_Y12_N24
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

-- Location: FF_X33_Y12_N25
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

-- Location: LCCOMB_X33_Y12_N14
\controle|csoma\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|csoma~combout\ = (\controle|EstadoAtual.S1~q\) # (\controle|EstadoAtual.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|EstadoAtual.S1~q\,
	datad => \controle|EstadoAtual.S4~q\,
	combout => \controle|csoma~combout\);

-- Location: LCCOMB_X33_Y12_N28
\controle|EstadoAtual.S2~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X33_Y12_N29
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

-- Location: LCCOMB_X33_Y12_N0
\datapath|reg_i|q[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[0]~7_combout\ = \datapath|reg_i|q\(0) $ (VCC)
-- \datapath|reg_i|q[0]~8\ = CARRY(\datapath|reg_i|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_i|q\(0),
	datad => VCC,
	combout => \datapath|reg_i|q[0]~7_combout\,
	cout => \datapath|reg_i|q[0]~8\);

-- Location: FF_X33_Y12_N1
\datapath|reg_i|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[0]~7_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(0));

-- Location: LCCOMB_X33_Y12_N2
\datapath|reg_i|q[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[1]~9_combout\ = (\datapath|reg_i|q\(1) & (!\datapath|reg_i|q[0]~8\)) # (!\datapath|reg_i|q\(1) & ((\datapath|reg_i|q[0]~8\) # (GND)))
-- \datapath|reg_i|q[1]~10\ = CARRY((!\datapath|reg_i|q[0]~8\) # (!\datapath|reg_i|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_i|q\(1),
	datad => VCC,
	cin => \datapath|reg_i|q[0]~8\,
	combout => \datapath|reg_i|q[1]~9_combout\,
	cout => \datapath|reg_i|q[1]~10\);

-- Location: FF_X33_Y12_N3
\datapath|reg_i|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[1]~9_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(1));

-- Location: LCCOMB_X33_Y12_N4
\datapath|reg_i|q[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[2]~11_combout\ = (\datapath|reg_i|q\(2) & (\datapath|reg_i|q[1]~10\ $ (GND))) # (!\datapath|reg_i|q\(2) & (!\datapath|reg_i|q[1]~10\ & VCC))
-- \datapath|reg_i|q[2]~12\ = CARRY((\datapath|reg_i|q\(2) & !\datapath|reg_i|q[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_i|q\(2),
	datad => VCC,
	cin => \datapath|reg_i|q[1]~10\,
	combout => \datapath|reg_i|q[2]~11_combout\,
	cout => \datapath|reg_i|q[2]~12\);

-- Location: FF_X33_Y12_N5
\datapath|reg_i|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[2]~11_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(2));

-- Location: LCCOMB_X33_Y12_N6
\datapath|reg_i|q[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[3]~13_combout\ = (\datapath|reg_i|q\(3) & (!\datapath|reg_i|q[2]~12\)) # (!\datapath|reg_i|q\(3) & ((\datapath|reg_i|q[2]~12\) # (GND)))
-- \datapath|reg_i|q[3]~14\ = CARRY((!\datapath|reg_i|q[2]~12\) # (!\datapath|reg_i|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_i|q\(3),
	datad => VCC,
	cin => \datapath|reg_i|q[2]~12\,
	combout => \datapath|reg_i|q[3]~13_combout\,
	cout => \datapath|reg_i|q[3]~14\);

-- Location: LCCOMB_X33_Y12_N8
\datapath|reg_i|q[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[4]~15_combout\ = (\datapath|reg_i|q\(4) & (\datapath|reg_i|q[3]~14\ $ (GND))) # (!\datapath|reg_i|q\(4) & (!\datapath|reg_i|q[3]~14\ & VCC))
-- \datapath|reg_i|q[4]~16\ = CARRY((\datapath|reg_i|q\(4) & !\datapath|reg_i|q[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_i|q\(4),
	datad => VCC,
	cin => \datapath|reg_i|q[3]~14\,
	combout => \datapath|reg_i|q[4]~15_combout\,
	cout => \datapath|reg_i|q[4]~16\);

-- Location: FF_X33_Y12_N9
\datapath|reg_i|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[4]~15_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(4));

-- Location: LCCOMB_X33_Y12_N10
\datapath|reg_i|q[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[5]~17_combout\ = (\datapath|reg_i|q\(5) & (!\datapath|reg_i|q[4]~16\)) # (!\datapath|reg_i|q\(5) & ((\datapath|reg_i|q[4]~16\) # (GND)))
-- \datapath|reg_i|q[5]~18\ = CARRY((!\datapath|reg_i|q[4]~16\) # (!\datapath|reg_i|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_i|q\(5),
	datad => VCC,
	cin => \datapath|reg_i|q[4]~16\,
	combout => \datapath|reg_i|q[5]~17_combout\,
	cout => \datapath|reg_i|q[5]~18\);

-- Location: LCCOMB_X33_Y12_N12
\datapath|reg_i|q[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_i|q[6]~19_combout\ = !\datapath|reg_i|q[5]~18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \datapath|reg_i|q[5]~18\,
	combout => \datapath|reg_i|q[6]~19_combout\);

-- Location: FF_X33_Y12_N13
\datapath|reg_i|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[6]~19_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(6));

-- Location: LCCOMB_X33_Y12_N20
\controle|EstadoAtual~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~10_combout\ = (\controle|EstadoAtual.S2~q\ & !\datapath|reg_i|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|EstadoAtual.S2~q\,
	datad => \datapath|reg_i|q\(6),
	combout => \controle|EstadoAtual~10_combout\);

-- Location: FF_X33_Y12_N21
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

-- Location: FF_X33_Y12_N7
\datapath|reg_i|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[3]~13_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(3));

-- Location: FF_X33_Y12_N11
\datapath|reg_i|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_i|q[5]~17_combout\,
	sclr => \controle|EstadoAtual.S1~q\,
	ena => \controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_i|q\(5));

-- Location: IOIBUF_X28_Y24_N15
\pA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(0),
	o => \pA[0]~input_o\);

-- Location: FF_X30_Y23_N1
\datapath|reg_pA|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[0]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(0));

-- Location: LCCOMB_X31_Y23_N0
\datapath|sub|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~0_combout\ = (\datapath|reg_pB|q\(0) & (\datapath|reg_pA|q\(0) $ (VCC))) # (!\datapath|reg_pB|q\(0) & ((\datapath|reg_pA|q\(0)) # (GND)))
-- \datapath|sub|Add0~1\ = CARRY((\datapath|reg_pA|q\(0)) # (!\datapath|reg_pB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(0),
	datab => \datapath|reg_pA|q\(0),
	datad => VCC,
	combout => \datapath|sub|Add0~0_combout\,
	cout => \datapath|sub|Add0~1\);

-- Location: IOIBUF_X30_Y24_N22
\pA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(7),
	o => \pA[7]~input_o\);

-- Location: FF_X30_Y23_N15
\datapath|reg_pA|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[7]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(7));

-- Location: IOIBUF_X34_Y17_N22
\pB[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(6),
	o => \pB[6]~input_o\);

-- Location: FF_X30_Y23_N29
\datapath|reg_pB|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[6]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(6));

-- Location: IOIBUF_X18_Y24_N15
\pA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(5),
	o => \pA[5]~input_o\);

-- Location: FF_X30_Y23_N27
\datapath|reg_pA|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[5]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(5));

-- Location: IOIBUF_X23_Y24_N8
\pB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(4),
	o => \pB[4]~input_o\);

-- Location: FF_X30_Y23_N25
\datapath|reg_pB|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[4]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(4));

-- Location: IOIBUF_X34_Y12_N15
\pA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(3),
	o => \pA[3]~input_o\);

-- Location: FF_X30_Y23_N23
\datapath|reg_pA|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[3]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(3));

-- Location: IOIBUF_X30_Y0_N8
\pB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(2),
	o => \pB[2]~input_o\);

-- Location: FF_X30_Y23_N21
\datapath|reg_pB|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[2]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(2));

-- Location: IOIBUF_X0_Y11_N22
\pB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(1),
	o => \pB[1]~input_o\);

-- Location: FF_X30_Y23_N3
\datapath|reg_pB|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[1]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(1));

-- Location: IOIBUF_X34_Y19_N15
\pB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(0),
	o => \pB[0]~input_o\);

-- Location: FF_X30_Y23_N17
\datapath|reg_pB|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[0]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(0));

-- Location: LCCOMB_X30_Y23_N16
\datapath|sub|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~1_cout\ = CARRY((\datapath|reg_pA|q\(0) & !\datapath|reg_pB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(0),
	datab => \datapath|reg_pB|q\(0),
	datad => VCC,
	cout => \datapath|sub|LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y23_N18
\datapath|sub|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~3_cout\ = CARRY((\datapath|reg_pA|q\(1) & (\datapath|reg_pB|q\(1) & !\datapath|sub|LessThan0~1_cout\)) # (!\datapath|reg_pA|q\(1) & ((\datapath|reg_pB|q\(1)) # (!\datapath|sub|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(1),
	datab => \datapath|reg_pB|q\(1),
	datad => VCC,
	cin => \datapath|sub|LessThan0~1_cout\,
	cout => \datapath|sub|LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y23_N20
\datapath|sub|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~5_cout\ = CARRY((\datapath|reg_pA|q\(2) & ((!\datapath|sub|LessThan0~3_cout\) # (!\datapath|reg_pB|q\(2)))) # (!\datapath|reg_pA|q\(2) & (!\datapath|reg_pB|q\(2) & !\datapath|sub|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(2),
	datab => \datapath|reg_pB|q\(2),
	datad => VCC,
	cin => \datapath|sub|LessThan0~3_cout\,
	cout => \datapath|sub|LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y23_N22
\datapath|sub|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~7_cout\ = CARRY((\datapath|reg_pB|q\(3) & ((!\datapath|sub|LessThan0~5_cout\) # (!\datapath|reg_pA|q\(3)))) # (!\datapath|reg_pB|q\(3) & (!\datapath|reg_pA|q\(3) & !\datapath|sub|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(3),
	datab => \datapath|reg_pA|q\(3),
	datad => VCC,
	cin => \datapath|sub|LessThan0~5_cout\,
	cout => \datapath|sub|LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y23_N24
\datapath|sub|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~9_cout\ = CARRY((\datapath|reg_pA|q\(4) & ((!\datapath|sub|LessThan0~7_cout\) # (!\datapath|reg_pB|q\(4)))) # (!\datapath|reg_pA|q\(4) & (!\datapath|reg_pB|q\(4) & !\datapath|sub|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(4),
	datab => \datapath|reg_pB|q\(4),
	datad => VCC,
	cin => \datapath|sub|LessThan0~7_cout\,
	cout => \datapath|sub|LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y23_N26
\datapath|sub|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~11_cout\ = CARRY((\datapath|reg_pB|q\(5) & ((!\datapath|sub|LessThan0~9_cout\) # (!\datapath|reg_pA|q\(5)))) # (!\datapath|reg_pB|q\(5) & (!\datapath|reg_pA|q\(5) & !\datapath|sub|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(5),
	datab => \datapath|reg_pA|q\(5),
	datad => VCC,
	cin => \datapath|sub|LessThan0~9_cout\,
	cout => \datapath|sub|LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y23_N28
\datapath|sub|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~13_cout\ = CARRY((\datapath|reg_pA|q\(6) & ((!\datapath|sub|LessThan0~11_cout\) # (!\datapath|reg_pB|q\(6)))) # (!\datapath|reg_pA|q\(6) & (!\datapath|reg_pB|q\(6) & !\datapath|sub|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(6),
	datab => \datapath|reg_pB|q\(6),
	datad => VCC,
	cin => \datapath|sub|LessThan0~11_cout\,
	cout => \datapath|sub|LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y23_N30
\datapath|sub|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|LessThan0~14_combout\ = (\datapath|reg_pB|q\(7) & (\datapath|reg_pA|q\(7) & \datapath|sub|LessThan0~13_cout\)) # (!\datapath|reg_pB|q\(7) & ((\datapath|reg_pA|q\(7)) # (\datapath|sub|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(7),
	datab => \datapath|reg_pA|q\(7),
	cin => \datapath|sub|LessThan0~13_cout\,
	combout => \datapath|sub|LessThan0~14_combout\);

-- Location: LCCOMB_X31_Y23_N30
\datapath|sub|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~2_combout\ = (\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add0~0_combout\))) # (!\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add1~0_combout\,
	datab => \datapath|sub|Add0~0_combout\,
	datad => \datapath|sub|LessThan0~14_combout\,
	combout => \datapath|sub|Add1~2_combout\);

-- Location: LCCOMB_X32_Y23_N2
\datapath|reg_soma|q[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[0]~14_combout\ = (\datapath|reg_soma|q\(0) & (\datapath|sub|Add1~2_combout\ $ (VCC))) # (!\datapath|reg_soma|q\(0) & (\datapath|sub|Add1~2_combout\ & VCC))
-- \datapath|reg_soma|q[0]~15\ = CARRY((\datapath|reg_soma|q\(0) & \datapath|sub|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(0),
	datab => \datapath|sub|Add1~2_combout\,
	datad => VCC,
	combout => \datapath|reg_soma|q[0]~14_combout\,
	cout => \datapath|reg_soma|q[0]~15\);

-- Location: FF_X32_Y23_N3
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

-- Location: LCCOMB_X33_Y20_N8
\datapath|reg_SAD|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[0]~feeder_combout\ = \datapath|reg_soma|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|reg_soma|q\(0),
	combout => \datapath|reg_SAD|q[0]~feeder_combout\);

-- Location: LCCOMB_X33_Y12_N26
\controle|EstadoAtual~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controle|EstadoAtual~11_combout\ = (\controle|EstadoAtual.S2~q\ & \datapath|reg_i|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|EstadoAtual.S2~q\,
	datad => \datapath|reg_i|q\(6),
	combout => \controle|EstadoAtual~11_combout\);

-- Location: FF_X33_Y12_N27
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

-- Location: FF_X33_Y20_N9
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

-- Location: LCCOMB_X32_Y23_N4
\datapath|reg_soma|q[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[1]~16_combout\ = (\datapath|sub|Add1~5_combout\ & ((\datapath|reg_soma|q\(1) & (\datapath|reg_soma|q[0]~15\ & VCC)) # (!\datapath|reg_soma|q\(1) & (!\datapath|reg_soma|q[0]~15\)))) # (!\datapath|sub|Add1~5_combout\ & 
-- ((\datapath|reg_soma|q\(1) & (!\datapath|reg_soma|q[0]~15\)) # (!\datapath|reg_soma|q\(1) & ((\datapath|reg_soma|q[0]~15\) # (GND)))))
-- \datapath|reg_soma|q[1]~17\ = CARRY((\datapath|sub|Add1~5_combout\ & (!\datapath|reg_soma|q\(1) & !\datapath|reg_soma|q[0]~15\)) # (!\datapath|sub|Add1~5_combout\ & ((!\datapath|reg_soma|q[0]~15\) # (!\datapath|reg_soma|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add1~5_combout\,
	datab => \datapath|reg_soma|q\(1),
	datad => VCC,
	cin => \datapath|reg_soma|q[0]~15\,
	combout => \datapath|reg_soma|q[1]~16_combout\,
	cout => \datapath|reg_soma|q[1]~17\);

-- Location: FF_X32_Y23_N5
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

-- Location: LCCOMB_X33_Y20_N30
\datapath|reg_SAD|q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[1]~feeder_combout\ = \datapath|reg_soma|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|reg_soma|q\(1),
	combout => \datapath|reg_SAD|q[1]~feeder_combout\);

-- Location: FF_X33_Y20_N31
\datapath|reg_SAD|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[1]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(1));

-- Location: IOIBUF_X0_Y11_N15
\pA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(2),
	o => \pA[2]~input_o\);

-- Location: FF_X30_Y23_N5
\datapath|reg_pA|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[2]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(2));

-- Location: LCCOMB_X30_Y23_N4
\datapath|sub|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~6_combout\ = ((\datapath|reg_pB|q\(2) $ (\datapath|reg_pA|q\(2) $ (\datapath|sub|Add1~4\)))) # (GND)
-- \datapath|sub|Add1~7\ = CARRY((\datapath|reg_pB|q\(2) & ((!\datapath|sub|Add1~4\) # (!\datapath|reg_pA|q\(2)))) # (!\datapath|reg_pB|q\(2) & (!\datapath|reg_pA|q\(2) & !\datapath|sub|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(2),
	datab => \datapath|reg_pA|q\(2),
	datad => VCC,
	cin => \datapath|sub|Add1~4\,
	combout => \datapath|sub|Add1~6_combout\,
	cout => \datapath|sub|Add1~7\);

-- Location: IOIBUF_X23_Y24_N15
\pA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pA(1),
	o => \pA[1]~input_o\);

-- Location: FF_X30_Y23_N19
\datapath|reg_pA|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pA[1]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pA|q\(1));

-- Location: LCCOMB_X31_Y23_N4
\datapath|sub|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~4_combout\ = ((\datapath|reg_pB|q\(2) $ (\datapath|reg_pA|q\(2) $ (\datapath|sub|Add0~3\)))) # (GND)
-- \datapath|sub|Add0~5\ = CARRY((\datapath|reg_pB|q\(2) & (\datapath|reg_pA|q\(2) & !\datapath|sub|Add0~3\)) # (!\datapath|reg_pB|q\(2) & ((\datapath|reg_pA|q\(2)) # (!\datapath|sub|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(2),
	datab => \datapath|reg_pA|q\(2),
	datad => VCC,
	cin => \datapath|sub|Add0~3\,
	combout => \datapath|sub|Add0~4_combout\,
	cout => \datapath|sub|Add0~5\);

-- Location: LCCOMB_X31_Y23_N18
\datapath|sub|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~8_combout\ = (\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add0~4_combout\))) # (!\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub|Add1~6_combout\,
	datac => \datapath|sub|Add0~4_combout\,
	datad => \datapath|sub|LessThan0~14_combout\,
	combout => \datapath|sub|Add1~8_combout\);

-- Location: LCCOMB_X32_Y23_N6
\datapath|reg_soma|q[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[2]~18_combout\ = ((\datapath|reg_soma|q\(2) $ (\datapath|sub|Add1~8_combout\ $ (!\datapath|reg_soma|q[1]~17\)))) # (GND)
-- \datapath|reg_soma|q[2]~19\ = CARRY((\datapath|reg_soma|q\(2) & ((\datapath|sub|Add1~8_combout\) # (!\datapath|reg_soma|q[1]~17\))) # (!\datapath|reg_soma|q\(2) & (\datapath|sub|Add1~8_combout\ & !\datapath|reg_soma|q[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(2),
	datab => \datapath|sub|Add1~8_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[1]~17\,
	combout => \datapath|reg_soma|q[2]~18_combout\,
	cout => \datapath|reg_soma|q[2]~19\);

-- Location: FF_X32_Y23_N7
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

-- Location: LCCOMB_X29_Y23_N24
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

-- Location: FF_X29_Y23_N25
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

-- Location: LCCOMB_X30_Y23_N6
\datapath|sub|Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~9_combout\ = (\datapath|reg_pB|q\(3) & ((\datapath|reg_pA|q\(3) & (!\datapath|sub|Add1~7\)) # (!\datapath|reg_pA|q\(3) & (\datapath|sub|Add1~7\ & VCC)))) # (!\datapath|reg_pB|q\(3) & ((\datapath|reg_pA|q\(3) & ((\datapath|sub|Add1~7\) # 
-- (GND))) # (!\datapath|reg_pA|q\(3) & (!\datapath|sub|Add1~7\))))
-- \datapath|sub|Add1~10\ = CARRY((\datapath|reg_pB|q\(3) & (\datapath|reg_pA|q\(3) & !\datapath|sub|Add1~7\)) # (!\datapath|reg_pB|q\(3) & ((\datapath|reg_pA|q\(3)) # (!\datapath|sub|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pB|q\(3),
	datab => \datapath|reg_pA|q\(3),
	datad => VCC,
	cin => \datapath|sub|Add1~7\,
	combout => \datapath|sub|Add1~9_combout\,
	cout => \datapath|sub|Add1~10\);

-- Location: IOIBUF_X34_Y12_N22
\pB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pB(3),
	o => \pB[3]~input_o\);

-- Location: FF_X30_Y23_N7
\datapath|reg_pB|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \pB[3]~input_o\,
	sload => VCC,
	ena => \controle|EstadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_pB|q\(3));

-- Location: LCCOMB_X31_Y23_N6
\datapath|sub|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add0~6_combout\ = (\datapath|reg_pA|q\(3) & ((\datapath|reg_pB|q\(3) & (!\datapath|sub|Add0~5\)) # (!\datapath|reg_pB|q\(3) & (\datapath|sub|Add0~5\ & VCC)))) # (!\datapath|reg_pA|q\(3) & ((\datapath|reg_pB|q\(3) & ((\datapath|sub|Add0~5\) # 
-- (GND))) # (!\datapath|reg_pB|q\(3) & (!\datapath|sub|Add0~5\))))
-- \datapath|sub|Add0~7\ = CARRY((\datapath|reg_pA|q\(3) & (\datapath|reg_pB|q\(3) & !\datapath|sub|Add0~5\)) # (!\datapath|reg_pA|q\(3) & ((\datapath|reg_pB|q\(3)) # (!\datapath|sub|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(3),
	datab => \datapath|reg_pB|q\(3),
	datad => VCC,
	cin => \datapath|sub|Add0~5\,
	combout => \datapath|sub|Add0~6_combout\,
	cout => \datapath|sub|Add0~7\);

-- Location: LCCOMB_X32_Y23_N0
\datapath|sub|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~11_combout\ = (\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add0~6_combout\))) # (!\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub|Add1~9_combout\,
	datac => \datapath|sub|LessThan0~14_combout\,
	datad => \datapath|sub|Add0~6_combout\,
	combout => \datapath|sub|Add1~11_combout\);

-- Location: LCCOMB_X32_Y23_N8
\datapath|reg_soma|q[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[3]~20_combout\ = (\datapath|reg_soma|q\(3) & ((\datapath|sub|Add1~11_combout\ & (\datapath|reg_soma|q[2]~19\ & VCC)) # (!\datapath|sub|Add1~11_combout\ & (!\datapath|reg_soma|q[2]~19\)))) # (!\datapath|reg_soma|q\(3) & 
-- ((\datapath|sub|Add1~11_combout\ & (!\datapath|reg_soma|q[2]~19\)) # (!\datapath|sub|Add1~11_combout\ & ((\datapath|reg_soma|q[2]~19\) # (GND)))))
-- \datapath|reg_soma|q[3]~21\ = CARRY((\datapath|reg_soma|q\(3) & (!\datapath|sub|Add1~11_combout\ & !\datapath|reg_soma|q[2]~19\)) # (!\datapath|reg_soma|q\(3) & ((!\datapath|reg_soma|q[2]~19\) # (!\datapath|sub|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(3),
	datab => \datapath|sub|Add1~11_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[2]~19\,
	combout => \datapath|reg_soma|q[3]~20_combout\,
	cout => \datapath|reg_soma|q[3]~21\);

-- Location: FF_X32_Y23_N9
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

-- Location: LCCOMB_X33_Y20_N16
\datapath|reg_SAD|q[3]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X33_Y20_N17
\datapath|reg_SAD|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[3]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(3));

-- Location: LCCOMB_X30_Y23_N8
\datapath|sub|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~12_combout\ = ((\datapath|reg_pA|q\(4) $ (\datapath|reg_pB|q\(4) $ (\datapath|sub|Add1~10\)))) # (GND)
-- \datapath|sub|Add1~13\ = CARRY((\datapath|reg_pA|q\(4) & (\datapath|reg_pB|q\(4) & !\datapath|sub|Add1~10\)) # (!\datapath|reg_pA|q\(4) & ((\datapath|reg_pB|q\(4)) # (!\datapath|sub|Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_pA|q\(4),
	datab => \datapath|reg_pB|q\(4),
	datad => VCC,
	cin => \datapath|sub|Add1~10\,
	combout => \datapath|sub|Add1~12_combout\,
	cout => \datapath|sub|Add1~13\);

-- Location: LCCOMB_X31_Y23_N28
\datapath|sub|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~14_combout\ = (\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add0~8_combout\)) # (!\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|sub|Add0~8_combout\,
	datac => \datapath|sub|Add1~12_combout\,
	datad => \datapath|sub|LessThan0~14_combout\,
	combout => \datapath|sub|Add1~14_combout\);

-- Location: LCCOMB_X32_Y23_N10
\datapath|reg_soma|q[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[4]~22_combout\ = ((\datapath|reg_soma|q\(4) $ (\datapath|sub|Add1~14_combout\ $ (!\datapath|reg_soma|q[3]~21\)))) # (GND)
-- \datapath|reg_soma|q[4]~23\ = CARRY((\datapath|reg_soma|q\(4) & ((\datapath|sub|Add1~14_combout\) # (!\datapath|reg_soma|q[3]~21\))) # (!\datapath|reg_soma|q\(4) & (\datapath|sub|Add1~14_combout\ & !\datapath|reg_soma|q[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(4),
	datab => \datapath|sub|Add1~14_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[3]~21\,
	combout => \datapath|reg_soma|q[4]~22_combout\,
	cout => \datapath|reg_soma|q[4]~23\);

-- Location: FF_X32_Y23_N11
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

-- Location: LCCOMB_X28_Y23_N12
\datapath|reg_SAD|q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[4]~feeder_combout\ = \datapath|reg_soma|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|reg_soma|q\(4),
	combout => \datapath|reg_SAD|q[4]~feeder_combout\);

-- Location: FF_X28_Y23_N13
\datapath|reg_SAD|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[4]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(4));

-- Location: LCCOMB_X31_Y23_N22
\datapath|sub|Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|sub|Add1~17_combout\ = (\datapath|sub|LessThan0~14_combout\ & (\datapath|sub|Add0~10_combout\)) # (!\datapath|sub|LessThan0~14_combout\ & ((\datapath|sub|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add0~10_combout\,
	datac => \datapath|sub|Add1~15_combout\,
	datad => \datapath|sub|LessThan0~14_combout\,
	combout => \datapath|sub|Add1~17_combout\);

-- Location: LCCOMB_X32_Y23_N12
\datapath|reg_soma|q[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[5]~24_combout\ = (\datapath|reg_soma|q\(5) & ((\datapath|sub|Add1~17_combout\ & (\datapath|reg_soma|q[4]~23\ & VCC)) # (!\datapath|sub|Add1~17_combout\ & (!\datapath|reg_soma|q[4]~23\)))) # (!\datapath|reg_soma|q\(5) & 
-- ((\datapath|sub|Add1~17_combout\ & (!\datapath|reg_soma|q[4]~23\)) # (!\datapath|sub|Add1~17_combout\ & ((\datapath|reg_soma|q[4]~23\) # (GND)))))
-- \datapath|reg_soma|q[5]~25\ = CARRY((\datapath|reg_soma|q\(5) & (!\datapath|sub|Add1~17_combout\ & !\datapath|reg_soma|q[4]~23\)) # (!\datapath|reg_soma|q\(5) & ((!\datapath|reg_soma|q[4]~23\) # (!\datapath|sub|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reg_soma|q\(5),
	datab => \datapath|sub|Add1~17_combout\,
	datad => VCC,
	cin => \datapath|reg_soma|q[4]~23\,
	combout => \datapath|reg_soma|q[5]~24_combout\,
	cout => \datapath|reg_soma|q[5]~25\);

-- Location: FF_X32_Y23_N13
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

-- Location: LCCOMB_X33_Y20_N10
\datapath|reg_SAD|q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[5]~feeder_combout\ = \datapath|reg_soma|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|reg_soma|q\(5),
	combout => \datapath|reg_SAD|q[5]~feeder_combout\);

-- Location: FF_X33_Y20_N11
\datapath|reg_SAD|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[5]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(5));

-- Location: LCCOMB_X32_Y23_N14
\datapath|reg_soma|q[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[6]~26_combout\ = ((\datapath|sub|Add1~20_combout\ $ (\datapath|reg_soma|q\(6) $ (!\datapath|reg_soma|q[5]~25\)))) # (GND)
-- \datapath|reg_soma|q[6]~27\ = CARRY((\datapath|sub|Add1~20_combout\ & ((\datapath|reg_soma|q\(6)) # (!\datapath|reg_soma|q[5]~25\))) # (!\datapath|sub|Add1~20_combout\ & (\datapath|reg_soma|q\(6) & !\datapath|reg_soma|q[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add1~20_combout\,
	datab => \datapath|reg_soma|q\(6),
	datad => VCC,
	cin => \datapath|reg_soma|q[5]~25\,
	combout => \datapath|reg_soma|q[6]~26_combout\,
	cout => \datapath|reg_soma|q[6]~27\);

-- Location: FF_X32_Y23_N15
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

-- Location: LCCOMB_X33_Y20_N12
\datapath|reg_SAD|q[6]~feeder\ : cycloneiii_lcell_comb
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

-- Location: FF_X33_Y20_N13
\datapath|reg_SAD|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[6]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(6));

-- Location: LCCOMB_X32_Y23_N16
\datapath|reg_soma|q[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[7]~28_combout\ = (\datapath|sub|Add1~23_combout\ & ((\datapath|reg_soma|q\(7) & (\datapath|reg_soma|q[6]~27\ & VCC)) # (!\datapath|reg_soma|q\(7) & (!\datapath|reg_soma|q[6]~27\)))) # (!\datapath|sub|Add1~23_combout\ & 
-- ((\datapath|reg_soma|q\(7) & (!\datapath|reg_soma|q[6]~27\)) # (!\datapath|reg_soma|q\(7) & ((\datapath|reg_soma|q[6]~27\) # (GND)))))
-- \datapath|reg_soma|q[7]~29\ = CARRY((\datapath|sub|Add1~23_combout\ & (!\datapath|reg_soma|q\(7) & !\datapath|reg_soma|q[6]~27\)) # (!\datapath|sub|Add1~23_combout\ & ((!\datapath|reg_soma|q[6]~27\) # (!\datapath|reg_soma|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|sub|Add1~23_combout\,
	datab => \datapath|reg_soma|q\(7),
	datad => VCC,
	cin => \datapath|reg_soma|q[6]~27\,
	combout => \datapath|reg_soma|q[7]~28_combout\,
	cout => \datapath|reg_soma|q[7]~29\);

-- Location: FF_X32_Y23_N17
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

-- Location: LCCOMB_X33_Y20_N14
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

-- Location: FF_X33_Y20_N15
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

-- Location: LCCOMB_X32_Y23_N18
\datapath|reg_soma|q[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[8]~30_combout\ = (\datapath|reg_soma|q\(8) & (\datapath|reg_soma|q[7]~29\ $ (GND))) # (!\datapath|reg_soma|q\(8) & (!\datapath|reg_soma|q[7]~29\ & VCC))
-- \datapath|reg_soma|q[8]~31\ = CARRY((\datapath|reg_soma|q\(8) & !\datapath|reg_soma|q[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_soma|q\(8),
	datad => VCC,
	cin => \datapath|reg_soma|q[7]~29\,
	combout => \datapath|reg_soma|q[8]~30_combout\,
	cout => \datapath|reg_soma|q[8]~31\);

-- Location: FF_X32_Y23_N19
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

-- Location: LCCOMB_X31_Y23_N24
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

-- Location: FF_X31_Y23_N25
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

-- Location: LCCOMB_X32_Y23_N20
\datapath|reg_soma|q[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_soma|q[9]~32_combout\ = (\datapath|reg_soma|q\(9) & (!\datapath|reg_soma|q[8]~31\)) # (!\datapath|reg_soma|q\(9) & ((\datapath|reg_soma|q[8]~31\) # (GND)))
-- \datapath|reg_soma|q[9]~33\ = CARRY((!\datapath|reg_soma|q[8]~31\) # (!\datapath|reg_soma|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_soma|q\(9),
	datad => VCC,
	cin => \datapath|reg_soma|q[8]~31\,
	combout => \datapath|reg_soma|q[9]~32_combout\,
	cout => \datapath|reg_soma|q[9]~33\);

-- Location: FF_X32_Y23_N21
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

-- Location: FF_X31_Y23_N27
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

-- Location: LCCOMB_X32_Y23_N22
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

-- Location: FF_X32_Y23_N23
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

-- Location: LCCOMB_X31_Y23_N20
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

-- Location: FF_X31_Y23_N21
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

-- Location: LCCOMB_X32_Y23_N24
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

-- Location: FF_X32_Y23_N25
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

-- Location: LCCOMB_X33_Y20_N4
\datapath|reg_SAD|q[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|reg_SAD|q[11]~feeder_combout\ = \datapath|reg_soma|q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|reg_soma|q\(11),
	combout => \datapath|reg_SAD|q[11]~feeder_combout\);

-- Location: FF_X33_Y20_N5
\datapath|reg_SAD|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \datapath|reg_SAD|q[11]~feeder_combout\,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(11));

-- Location: LCCOMB_X32_Y23_N26
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

-- Location: FF_X32_Y23_N27
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

-- Location: FF_X31_Y23_N31
\datapath|reg_SAD|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \datapath|reg_soma|q\(12),
	sload => VCC,
	ena => \controle|EstadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|reg_SAD|q\(12));

-- Location: LCCOMB_X32_Y23_N28
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

-- Location: FF_X32_Y23_N29
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

-- Location: LCCOMB_X28_Y23_N26
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

-- Location: FF_X28_Y23_N27
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

ww_end_mem(4) <= \end_mem[4]~output_o\;

ww_end_mem(5) <= \end_mem[5]~output_o\;

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


