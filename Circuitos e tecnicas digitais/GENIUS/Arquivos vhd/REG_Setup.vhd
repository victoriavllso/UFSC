library ieee;
use ieee.std_logic_1164.all;

entity REG_Setup is 
port (CLK, R, E: in std_logic;
    SW: in std_logic_vector(7 downto 0);
    setup: out std_logic_vector(7 downto 0)
     );
end REG_Setup;

architecture behv of REG_Setup is
begin
    process(CLK, SW, R)
    begin
        if R = '1' then
            setup <= "00000000";
            elsif (CLK'event and CLK = '1') then
                if E = '1' then
                    setup <= SW;
                end if;
        end if;
    end process;
end behv;

--Q=SETUP