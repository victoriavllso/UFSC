library IEEE;
use IEEE.Std_Logic_1164.all;

ENTITY MUX2X1_GENERIC IS
GENERIC (
    DATA_WIDTH : integer := 32
);
port (
    SEL   : in  std_logic;
    ENT0  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
    ENT1  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
    OUTPUT: out std_logic_vector(DATA_WIDTH - 1 downto 0)
	 
);
end MUX2X1_GENERIC;

architecture circuito of MUX2X1_GENERIC is
begin
    OUTPUT <= ENT0 when SEL = '0' else ENT1;
end circuito;