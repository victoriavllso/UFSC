library ieee;
use ieee.std_logic_1164.all;

entity REG_FPGA is 
port (CLK, R, E: in std_logic;
    data: in std_logic_vector(63 downto 0);
    q: out std_logic_vector(63 downto 0)
     );
end REG_FPGA;

architecture behv of REG_FPGA is
begin
    process(CLK, data, R)
    begin
        if R = '1' then
            q <= "0000000000000000000000000000000000000000000000000000000000000000";
            elsif (CLK'event and CLK = '1') then
                if E = '1' then
                    q <= data;
                end if;
        end if;
    end process;
end behv;

