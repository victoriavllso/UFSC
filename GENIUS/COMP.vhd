library ieee;
use ieee.std_logic_1164.all;

entity COMP IS 
PORT( seq_FPGA, seq_Usuario: IN std_logic_vector(63 DOWNTO 0);
	  eq: OUT std_logic
 );
END COMP;

architecture circuito of COMP is
begin

eq <= '1' when (seq_FPGA = seq_Usuario) else '0';

end circuito; 
-- compara se a sequencia inserida pelo usuario foi a mesma mostrada nos LEDS
