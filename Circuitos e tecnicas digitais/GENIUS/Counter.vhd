LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--USE IEEE.std_logic_arith.all; PRECISA DESSA LINHA ?
USE IEEE.std_logic_unsigned.all;

ENTITY Counter IS
PORT(
     data: IN std_logic_vector(3 DOWNTO 0);
     clk: IN std_logic;
    R: IN std_logic;
    E: IN std_logic;
    tc : OUT std_logic;                            -- Saída que indica se jogador ganhou jogo ou não.
    Saida : OUT std_logic_vector(3 DOWNTO 0)    -- Indica a quantidade de sequências que o jogador acertou.
                                                            --        Esta saída entra em Counter_FPGA e em um COMP.
);
END Counter;

ARCHITECTURE arc OF Counter IS
    SIGNAL total: std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS(R, E, clk, data)
    BEGIN
        -- Reset
        IF R = '1' THEN
            total <= "0000";
            tc <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
        -- Incrementa signal total. Se total chegou a 16, então o jogador ganhou 
        --     o jogo e win é ativado.
            IF E='1' THEN
                total <= total + 1;
                IF total = data THEN
                    tc <= '1';
                ELSE
                    tc <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;
     Saida <= total(3 DOWNTO 0);
END arc;