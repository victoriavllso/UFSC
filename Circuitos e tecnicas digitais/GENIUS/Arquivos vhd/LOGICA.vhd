    library ieee;
use ieee.std_logic_1164.all;

entity LOGICA IS
PORT(
    REG_SetupLEVEL: IN std_logic_vector(1 DOWNTO 0);
    ROUND: IN std_logic_vector(3 DOWNTO 0);
	 REG_SetupMAPA: IN std_logic_vector(1 DOWNTO 0);
	 POINTS: OUT std_logic_vector(7 DOWNTO 0)
);
END LOGICA;

architecture circuito of LOGICA is
begin

POINTS <= REG_SetupLEVEL & ROUND & REG_SetupMAPA;

end circuito;

--64 × j + 4 × rodadas + i
-- j - nível de jogo
-- i - uma sequência i (selecionados com os SW(9..6))
    
