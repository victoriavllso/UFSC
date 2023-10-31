LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY Datapath IS
PORT(
	-- Entradas de dados
	CLOCK: IN std_logic;
	KEY: IN std_logic_vector(3 DOWNTO 0);
	SWITCH: IN std_logic_vector(7 DOWNTO 0);

	-- Entradas de controle
	R1, R2, E1, E2, E3, E4: IN std_logic;
	SEL: IN std_logic;

	-- Saídas de dados
	hex0, hex1, hex2, hex3, hex4, hex5: OUT std_logic_vector(6 DOWNTO 0);
	ledr: OUT std_logic_vector(3 DOWNTO 0);
	ledg: out std_logic_vector(3 downto 0);
	
	-- Saídas de status
	end_FPGA, end_User, end_time, win, match: OUT std_logic
);
END ENTITY;

ARCHITECTURE arc OF Datapath IS
---------------------------SIGNALS-----------------------------------------------------------

	
--ButtonSync-----------------------------------------------------------
	SIGNAL BTN0: std_logic;
	SIGNAL BTN1: std_logic;
	SIGNAL BTN2: std_logic;
	SIGNAL BTN3: std_logic;
	SIGNAL NBTN, NOTKEYS: std_logic_vector(3 DOWNTO 0);

--Operações booleanas--------------------------------------------------
	SIGNAL E_Counter_User: std_logic;
	SIGNAL data_REG_FPGA: std_logic_vector(63 DOWNTO 0);
	SIGNAL data_REG_User: std_logic_vector(63 DOWNTO 0);
	SIGNAL c1aux, c2aux: std_logic;

--REG_Setup-------------------------------------------------------------
	SIGNAL SETUP: std_logic_vector(7 downto 0);

--div_freq--------------------------------------------------------------
	SIGNAL C05Hz, C07Hz, C09Hz, C1Hz, C11Hz, C12Hz, C13Hz, C14Hz, C15Hz, C16Hz, C17Hz, C18Hz, C19Hz: std_logic;
	SIGNAL C2Hz, C21Hz, C22Hz, C23Hz, C24Hz, C25Hz, C26Hz, C27Hz, C28Hz, C29Hz, C3Hz, C31Hz, C32Hz: std_logic;
	SIGNAL C33Hz, C34Hz, C35Hz, C36Hz, C38Hz, C4Hz, C42Hz, C44Hz, C46Hz, C48Hz, C5Hz: std_logic;
	SIGNAL C52Hz, C54Hz, C56Hz, C58Hz, C6Hz: std_logic;

--Counter_Round--------------------------------------------------------
	SIGNAL win_internal: std_logic;
	SIGNAL ROUND: std_logic_vector(3 DOWNTO 0);

--Counter_time---------------------------------------------------------
	SIGNAL TEMPO: std_logic_vector(3 DOWNTO 0);

--Counter_FPGA---------------------------------------------------------
	SIGNAL SEQFPGA: std_logic_vector(3 DOWNTO 0);

--ROM------------------------------------------------------------------
	SIGNAL SEQ_FPGA: std_logic_vector(3 DOWNTO 0);

--Counter_User---------------------------------------------------------
	SIGNAL end_User_internal: std_logic;
	SIGNAL SEQUSER: std_logic_vector(3 downto 0);

--REG_FPGA-------------------------------------------------------------
	SIGNAL OUT_FPGA: std_logic_vector(63 DOWNTO 0);

--REG_User-------------------------------------------------------------
	SIGNAL OUT_User: std_logic_vector(63 DOWNTO 0);	

--COMP-----------------------------------------------------------------
	SIGNAL is_equal: std_logic;

--LOGICA---------------------------------------------------------------
	SIGNAL POINTS: std_logic_vector(7 DOWNTO 0);

--DECODIFICADORES------------------------------------------------------
--Externos-------------------------------------------------------------
	SIGNAL G_dec7segHEX4: std_logic_vector(3 DOWNTO 0);

--DecBCD---------------------------------------------------------------
	SIGNAL POINTS_BCD: std_logic_vector(7 DOWNTO 0);

--dec7segHEX4----------------------------------------------------------
	SIGNAL dec7segHEX4: std_logic_vector(6 DOWNTO 0);

--dec7segHEX2----------------------------------------------------------
	SIGNAL dec7segHEX2: std_logic_vector(6 DOWNTO 0);

--dec7segHEX1----------------------------------------------------------
	SIGNAL dec7segHEX1: std_logic_vector(6 DOWNTO 0);

--dec7segHEX00---------------------------------------------------------
	SIGNAL dec7segHEX00: std_logic_vector(6 DOWNTO 0);

--dec7segHEX01---------------------------------------------------------
	SIGNAL dec7segHEX01: std_logic_vector(6 DOWNTO 0);
	
--MULTIPLEXADORES----------------------------------------------------------------------------

--Mux0HEX5-------------------------------------------------------------
	SIGNAL output_Mux0HEX5: std_logic_vector(6 DOWNTO 0);

--Mux16_1--------------------------------------------------------------
	SIGNAL saida0mux16_1, saida1mux16_1, saida2mux16_1, saida3mux16_1: std_logic;
	
--Mux0HEX2-------------------------------------------------------------
	SIGNAL output_Mux0HEX2: std_logic_vector(6 DOWNTO 0);
	
--Mux0HEX3-------------------------------------------------------------
	SIGNAL output_Mux0HEX3: std_logic_vector(6 DOWNTO 0);

--Mux0HEX4-------------------------------------------------------------
	SIGNAL output_Mux0HEX4: std_logic_vector(6 DOWNTO 0);

--Mux4:1_4bits---------------------------------------------------------
	SIGNAL MUX4X1_4bits00: std_logic_vector(3 DOWNTO 0);
	SIGNAL MUX4X1_4bits01: std_logic_vector(3 DOWNTO 0);
	SIGNAL MUX4X1_4bits10: std_logic_vector(3 DOWNTO 0);
	SIGNAL MUX4X1_4bits11: std_logic_vector(3 DOWNTO 0);

--MUXdiv_freq_de2-------------------------------------------------------
	SIGNAL CLKHZ: std_logic;	
	
---------------------------COMPONENTS-----------------------------------------------------------

--------------------------MUX4X1_4bits----------------------------------
COMPONENT MUX4X1_4bits IS
PORT(
	 SEL: IN std_logic_vector(1 DOWNTO 0);
    ENT0, ENT1, ENT2, ENT3: IN std_logic_vector(3 DOWNTO 0);
    output: OUT std_logic_vector(3 DOWNTO 0)
);
END COMPONENT;
-------------------------MUX2X1_4bits-------------------------------------
COMPONENT MUX2X1_4bits IS
PORT(
	 SEL: IN std_logic;
    ENT0, ENT1: IN std_logic_vector(3 DOWNTO 0);
    output: OUT std_logic_vector(3 DOWNTO 0)
);
END COMPONENT;
-------------------------MUX2X1_7bits-------------------------------------
COMPONENT MUX2X1_7bits IS
PORT(
	 SEL: IN std_logic;
    ENT0, ENT1: IN std_logic_vector(6 DOWNTO 0);
    output: OUT std_logic_vector(6 DOWNTO 0)
);
END COMPONENT;
----------------------------MUX4X1_1bit-----------------------------------
COMPONENT MUX4X1_1bit IS
PORT(level: IN std_logic_vector(1 DOWNTO 0);
    CL1, CL2, CL3, CL4: IN std_logic;
    CLKHZ: OUT std_logic
);
END COMPONENT;
-------------------------MUX16X1_clock------------------------------------
COMPONENT MUX16X1_clock IS
PORT(sel: IN std_logic_vector(3 DOWNTO 0);
    F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16: IN std_logic;
    CLKHZ: OUT std_logic
);
END COMPONENT;
---------------------------dec7seg----------------------------------------
COMPONENT dec7seg IS
PORT(G: IN std_logic_vector(3 DOWNTO 0);
	O: OUT std_logic_vector(6 DOWNTO 0)
);
END COMPONENT;
---------------------------REG_Setup--------------------------------------
COMPONENT REG_Setup IS 
PORT(CLK, R, E: IN std_logic;
	SW: IN std_logic_vector(7 DOWNTO 0);
	setup: OUT std_logic_vector(7 DOWNTO 0)
 );
END COMPONENT;
---------------------------REG_FPGA---------------------------------------
COMPONENT REG_FPGA IS 
PORT(CLK, R, E: IN std_logic;
	data: IN std_logic_vector(63 DOWNTO 0);
	q: OUT std_logic_vector(63 DOWNTO 0)
 );
END COMPONENT;
---------------------------Reg_User---------------------------------------
COMPONENT REG_User IS 
PORT(CLK, R, E: IN std_logic;
	data: IN std_logic_vector(63 DOWNTO 0);
	q: OUT std_logic_vector(63 DOWNTO 0)
 );
END COMPONENT;
-----------------------------decSeq00-------------------------------------
COMPONENT decSeq00 IS
PORT(
	address: IN std_logic_vector(3 DOWNTO 0);
	output: OUT std_logic_vector(3 DOWNTO 0)
);
END COMPONENT;
-----------------------------decSeq01-------------------------------------
COMPONENT decSeq01 IS
PORT(
	address: IN std_logic_vector(3 DOWNTO 0);
	output: OUT std_logic_vector(3 DOWNTO 0)
);
END COMPONENT;
-----------------------------decSeq10-------------------------------------
COMPONENT decSeq10 IS
PORT(
	address: IN std_logic_vector(3 DOWNTO 0);
	output: OUT std_logic_vector(3 DOWNTO 0)
);
END COMPONENT;
-----------------------------decSeq11-------------------------------------
COMPONENT decSeq11 IS
PORT(
	address: IN std_logic_vector(3 DOWNTO 0);
	output: OUT std_logic_vector(3 DOWNTO 0)
);
END COMPONENT;
-------------------------Counter_time-------------------------------------
COMPONENT Counter_time IS
PORT(CLKT: IN std_logic;
    R: IN std_logic;
    E: IN std_logic;
    TEMPO: OUT std_logic_vector(3 downto 0);
    end_time: OUT std_logic
);
END COMPONENT;
------------------------Counter_round-------------------------------------
COMPONENT Counter IS
PORT(
     data: IN std_logic_vector(3 DOWNTO 0);
     clk: IN std_logic;
    R: IN std_logic;
    E: IN std_logic;
    tc : OUT std_logic;                         
    Saida : OUT std_logic_vector(3 DOWNTO 0)    
                                                            --      
);
END COMPONENT;
----------------------div_freq_de2----------------------------------------
COMPONENT div_freq_de2 IS
PORT(reset: IN std_logic;
	CLOCK: in std_logic;
	C05Hz, C07Hz, C09Hz, C1Hz, C11Hz, C12Hz, C13Hz, C14Hz, C15Hz, C16Hz, C17Hz, C18Hz, C19Hz: out std_logic;
	C2Hz, C21Hz, C22Hz, C23Hz, C24Hz, C25Hz, C26Hz, C27Hz, C28Hz, C29Hz, C3Hz, C31Hz, C32Hz: out std_logic; 
	C33Hz, C34Hz, C35Hz, C36Hz, C38Hz, C4Hz, C42Hz, C44Hz, C46Hz, C48Hz, C5Hz: out std_logic;
	C52Hz, C54Hz, C56Hz, C58Hz, C6Hz: out std_logic
);
END COMPONENT;
----------------------div_freq_emu----------------------------------------
COMPONENT div_freq_emu IS
PORT(reset: IN std_logic;
	CLOCK: in std_logic;
	C05Hz, C07Hz, C09Hz, C1Hz, C11Hz, C12Hz, C13Hz, C14Hz, C15Hz, C16Hz, C17Hz, C18Hz, C19Hz: out std_logic;
	C2Hz, C21Hz, C22Hz, C23Hz, C24Hz, C25Hz, C26Hz, C27Hz, C28Hz, C29Hz, C3Hz, C31Hz, C32Hz: out std_logic; 
	C33Hz, C34Hz, C35Hz, C36Hz, C38Hz, C4Hz, C42Hz, C44Hz, C46Hz, C48Hz, C5Hz: out std_logic;
	C52Hz, C54Hz, C56Hz, C58Hz, C6Hz: out std_logic
);
END COMPONENT;
---------------------------LOGICA-----------------------------------------
COMPONENT LOGICA IS
PORT(
    REG_SetupLEVEL: IN std_logic_vector(1 DOWNTO 0);
    ROUND: IN std_logic_vector(3 DOWNTO 0);
	 REG_SetupMAPA: IN std_logic_vector(1 DOWNTO 0);
	 POINTS: OUT std_logic_vector(7 DOWNTO 0)
);
END COMPONENT;
----------------------------COMP------------------------------------------
COMPONENT COMP IS 
PORT(
	seq_FPGA, seq_Usuario: IN std_logic_vector(63 DOWNTO 0);
	eq: OUT std_logic
 );
END COMPONENT;
----------------------------buttonSync------------------------------------
component ButtonSync is
	port
	(
		KEY0, KEY1, KEY2, KEY3, CLK: in std_logic;
		BTN0, BTN1, BTN2, BTN3: out std_logic
	);
end component;

-- signal tem q ser antes do begin

signal L, T, R, F, U, P, S, G, E, A: std_logic_vector(6 downto 0);

signal ED4, ED1, ED01: std_logic_vector(3 downto 0);


signal E_REGF, E_REGU: std_logic_vector(63 downto 0);
signal EN2: std_logic;

signal SS1, SS2, SS3, SS4: std_logic_vector(3 downto 0);

signal ECC: std_logic_vector(3 downto 0);
signal ENCU: std_logic;
signal saidacomp: std_logic;
BEGIN
-- COMEÇO DO CODIGO ---------------------------------------------------------------------------------------

-- eq. booleanas

c1aux <= E2 and C1Hz;
c2aux <= E3 and CLKHZ;
win <= win_internal;
end_User <= end_User_internal;
LEDR (3 downto 0) <= OUT_FPGA(63 downto 60);
LEDg(3 downto 0) <= not(KEY (3 DOWNTO 0));
match <= end_User_Internal and saidacomp;

---- port map e atribuições

---multiplexadores 2X1
L <= "1000111";
T <= "0000111";
R <= "0101111";
F <= "0001110";
U <= "1000001";
P <= "0001100";
S <= "0010010";
G <= "0010000"; --- QUAL A DIFERENÇA PRO 9 E PRO G MEU DEUSKKKK
E <= "0000110";
A <= "0001000";
M5: MUX2X1_7BITS port map(SEL, L, OUTPUT_MUX0HEX5, HEX5);
M4: MUX2X1_7BITS port map(SEL, dec7segHEX4, output_Mux0HEX4, HEX4);
M3: MUX2X1_7BITS port map(SEL, T, output_Mux0HEX3, HEX3);
M2: MUX2X1_7BITS port map(SEL, dec7segHEX2, output_Mux0HEX2, HEX2);
M1: MUX2X1_7BITS port map(SEL, R, dec7segHEX1, HEX1);
M0: MUX2X1_7BITS port map(SEL, dec7segHEX00, dec7segHEX01, HEX0);
M51: MUX2X1_7BITS port map(win_internal, F, U, OUTPUT_MUX0HEX5);
M41: MUX2X1_7BITS port map(win_internal, P, S, OUTPUT_MUX0HEX4);	
M31: MUX2X1_7BITS port map(win_internal, G, E, OUTPUT_MUX0HEX3);
M21: MUX2X1_7BITS port map(win_internal, A, R, OUTPUT_MUX0HEX2);

--- multiplexadores 4X1 de 1 bit

MUX1: MUX4X1_1bit port map(SETUP(7 downto 6), SAIDA0MUX16_1, SAIDA1MUX16_1, SAIDA2MUX16_1,SAIDA3MUX16_1, CLKHZ);

--- multplexadores 16x1

MUX2: MUX16X1_clock port map(ROUND, C05Hz,C07Hz, C09Hz,C11Hz,C13Hz,C15Hz,C17Hz, C19Hz, C21Hz, C23Hz,C25Hz,C27Hz,C29Hz,C31Hz,C33Hz, C35Hz, SAIDA0MUX16_1);
MUX3: MUX16X1_clock port map(ROUND, C1Hz,C12Hz, C14Hz, C16Hz,C18Hz, C2Hz, C22Hz, C24Hz, C26Hz, C28Hz, C3Hz, C32Hz, C34Hz, C36Hz, C38Hz, C4Hz, SAIDA1MUX16_1);
MUX4: MUX16X1_clock port map(ROUND, C2Hz,C22Hz, C24Hz, C26Hz, C28Hz, C3Hz, C32Hz, C34Hz,C36Hz,C38Hz,C4Hz,C42Hz,C44Hz,C46Hz,C48Hz, C5Hz,SAIDA2MUX16_1 );
MUX5: MUX16X1_clock port map(ROUND, C3Hz, C32Hz, C34Hz, C36Hz, C38Hz, C4Hz, C42Hz, C44Hz, C46Hz, C48Hz, C5Hz, C52Hz, C54Hz, C56Hz, C58Hz, C6Hz, SAIDA3MUX16_1);

---multiplexador 4x1 de 4bits

MUX6: MUX4X1_4bits port map(SETUP(5 downto 4), SS1, SS2, SS3, SS4, SEQ_FPGA);

--- decodificadores
ED4 <= "00" & SETUP(7 downto 6);
ED1 <= POINTS(7 downto 4);
ED01<= POINTS(3 downto 0);


D4: dec7seg port map(ED4, dec7segHEX4);
D2: dec7seg port map(TEMPO, dec7segHEX2);
D1: dec7seg port map(ED1, dec7segHEX1);
D00: dec7seg port map(ROUND, dec7segHEX00);
D01: dec7seg port map(ED01, dec7segHEX01);

---registradores



E_REGF <= SEQ_FPGA & OUT_FPGA(63 downto 4);
E_REGU <= NBTN & OUT_User(63 downto 4);
EN2 <= E2 and (NBTN(0) or NBTN(1) or NBTN(2) or NBTN(3));
regs: REG_Setup port map(CLOCK, R1, E1, SWITCH, SETUP); ---- MUDAR O CLOCK SE TESTAR NO EMULADOR
regf: REG_FPGA port map(CLOCK, R2, c2aux, E_REGF, OUT_FPGA);
regu: REG_User port map(CLOCK, R2, EN2, E_REGU, OUT_User);

--- Buttonsync

NBTN <= not(BTN3) & not(BTN2) & not(BTN1) & not(BTN0);

but: ButtonSync port map(KEY (0), KEY(1), KEY(2), KEY(3), CLOCK, BTN0, BTN1, BTN2, BTN3);

--- sequencias



S1: decSeq00 port map(SEQFPGA, SS1);
S2: decSeq01 port map(SEQFPGA, SS2);
S3: decSeq10 port map(SEQFPGA, SS3);
S4: decSeq11 port map(SEQFPGA, SS4);

--- contadores

ECC <= "1010";
ENCU <= E2 and (NBTN(0) or NBTN(1) or NBTN(2) or NBTN(3));


Ctime: Counter port map(ECC, CLOCK, R2, c1aux, end_time, TEMPO);
Cround: Counter port map(SETUP(3 downto 0),CLOCK, R1, E4, win_internal, ROUND);
CFPGA: Counter port map(ROUND, CLOCK, R2, c2aux, end_FPGA, SEQFPGA);
Cuser: Counter port map(ROUND, CLOCK, R2, ENCU, end_User_Internal, SEQUSER);

----logica
lo: LOGICA port map(SETUP(7 DOWNTO 6), ROUND, SETUP(5 DOWNTO 4), POINTS);

---comp
cp: COMP port map(OUT_FPGA, OUT_USER, saidacomp);




-------------------------FREQUÊNCIAS--------------------------------------

	--freq_de2: div_freq_de2 PORT MAP(R1,CLOCK, C05Hz, C07Hz, C09Hz, C1Hz, C11Hz, C12Hz, C13Hz, C14Hz, C15Hz, C16Hz, C17Hz, C18Hz, C19Hz, C2Hz, C21Hz, C22Hz, C23Hz, C24Hz, C25Hz, C26Hz, C27Hz, C28Hz, C29Hz, C3Hz, C31Hz, C32Hz, C33Hz, C34Hz, C35Hz, C36Hz, C38Hz, C4Hz, C42Hz, C44Hz, C46Hz, C48Hz, C5Hz, C52Hz, C54Hz, C56Hz, C58Hz, C6Hz);

	freq_emu: div_freq_emu PORT MAP(R1,CLOCK, C05Hz, C07Hz, C09Hz, C1Hz, C11Hz, C12Hz, C13Hz, C14Hz, C15Hz, C16Hz, C17Hz, C18Hz, C19Hz, C2Hz, C21Hz, C22Hz, C23Hz, C24Hz, C25Hz, C26Hz, C27Hz, C28Hz, C29Hz, C3Hz, C31Hz, C32Hz, C33Hz, C34Hz, C35Hz, C36Hz, C38Hz, C4Hz, C42Hz, C44Hz, C46Hz, C48Hz, C5Hz, C52Hz, C54Hz, C56Hz, C58Hz, C6Hz);

------------------------------------------------------------------------------------------------------

-- resto a fazer pel@ alun@


end arc;