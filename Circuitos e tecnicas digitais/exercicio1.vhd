library IEEE;
use IEEE.Std_Logic_1164.all;

entity exercicio1 is
port (SW: in std_logic_vector(3 downto 0);
      LEDR: out std_logic_vector(3 downto 0)
		);
end exercicio1;
architecture circuito_logico of exercicio1 is
	--signal D,E,F: std_logic;
	   signal a1: std_logic;
		signal a0: std_logic;
		signal b1: std_logic;
		signal b0: std_logic;

begin

a0<=SW(0);
a1<=SW(1);
b1<=SW(2);
b0<=SW(3);

	LEDR(3) <= (a1 and a0 and b1 and b0);
	LEDR(2) <= (not(a1) and a0 and b1 and B0) or (a1 and not(a0)and b1 and not(b0)) or (a1 and not(a0) and b1 and b0) or (a1 and a0 and not(b1) and b0) or (a1 and a0 and b1 and not(b0));
	LEDR(1) <= (not(a1)and a0 and not(b1) and b0) or (not(a1) and a0 and b1 and not(b0)) or (a1 and not(a0) and not(b1) and b0) or (a1 and not(a0) and b1 and b0) or (a1 and a0 and b1 and not(b0)) or (a1 and a0 and b1 and b0);
	LEDR(0) <= (not(a1) and not(a0) and not(b1) and not(b0)) or (not(a1) and not(a0) and not(b1) and b0) or (not(a1) and not (a0) and b1 and not(b0)) or (not(a1) and not(a0) and b1 and b0) or (not(a1) and a0 and not(b1) and not(b0)) or (not(a1) and a0 and b1 and not(b0)) or (a1 and not(a0) and not(b1) and not(b0)) or (a1 and not (a0) and not(b1) and b0) or ( a1 and not(a0) and b1 and not(b0)) or (a1 and not(a0) and b1 and b0) or (a1 and a0 and not(b1) and not(b0)) or (a1 and a0 and b1 and not(b0));

end circuito_logico;