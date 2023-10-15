    library IEEE;
use IEEE.Std_Logic_1164.all;

entity MUX4X1_4bits is
PORT(
	 SEL: IN std_logic_vector(1 DOWNTO 0);
    ENT0, ENT1, ENT2, ENT3: IN std_logic_vector(3 DOWNTO 0);
    output: OUT std_logic_vector(3 DOWNTO 0)
);

end MUX4X1_4bits;

architecture circuito of MUX4X1_4bits is
begin
output <= ENT0 when sel = "00" else
			ENT1 when sel = "01" else
			ENT2 when sel = "10" else
			ENT3; 
end circuito;
    
