    library IEEE;
use IEEE.Std_Logic_1164.all;

entity MUX2X1_7bits is
port (SEL: IN std_logic;
    ENT0, ENT1: IN std_logic_vector(6 DOWNTO 0);
    output: OUT std_logic_vector(6 DOWNTO 0)
);
end MUX2X1_7bits;

architecture circuito of MUX2X1_7bits is
begin

output <= ENT0 when sel = '0' else
			ENT1; 
end circuito;

