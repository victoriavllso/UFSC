library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.numeric_std.all;

ENTITY Comparador IS
    GENERIC (
        N : integer := 4
    );
    port (
        A, B : in  unsigned(N - 3 downto 0);
        IG   : out std_logic;  -- Output indicating equality
        BM   : out std_logic;  -- Output indicating A < B
        AM   : out std_logic   -- Output indicating A > B
    );
end Comparador;

architecture Behavioral of Comparador is
begin
    IG <= '1' when A = B else '0';
    BM <= '1' when A < B else '0';
    AM <= '1' when A > B else '0'; 
end Behavioral;
