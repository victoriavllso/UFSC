    library IEEE;
use IEEE.Std_Logic_1164.all;

entity MUX4X1_1bit is
PORT(level: IN std_logic_vector(1 DOWNTO 0);
    CL1, CL2, CL3, CL4: IN std_logic;
    CLKHZ: OUT std_logic
);
end MUX4X1_1bit;

architecture circuito of MUX4X1_1bit is
begin
CLKHZ <= CL1 when level = "00" else
			CL2 when level = "01" else
			CL3 when level = "10" else
			CL4; 
end circuito;
    
