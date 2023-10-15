    library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all; -- necessário para o +

entity Sum is
port (A: in std_logic_vector(3 downto 0);
 B: in std_logic_vector(3 downto 0);
 G: out std_logic_vector(3 downto 0)
 );
end Sum;
architecture circuito of Sum is
begin
 G <= A + B;
end circuito;
    
