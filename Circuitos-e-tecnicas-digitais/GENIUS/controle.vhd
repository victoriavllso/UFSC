    LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY Controle IS
PORT(
	-- Entradas de controle
	CLOCK: IN std_logic;
	enter: IN std_logic;
	reset: IN std_logic;
	-- Entradas de status
	end_FPGA, end_User, end_time, win, match: IN std_logic;
	-- Saídas de comandos
	R1, R2, E1, E2, E3, E4: OUT std_logic;
	SEL: OUT std_logic
	-- Saídas de controle
);
END Controle;

ARCHITECTURE arc OF Controle IS
	TYPE STATES IS (Init, Setup, Play_FPGA, Play_User, Check, Next_Round, Result);
	SIGNAL EA, PE: STATES;
BEGIN
	P1:process(clock, reset)
	    begin
	        if reset = '1' then
				EA <= Init;
			elsif clock'event and clock= '1' then 
				EA <= PE;
			end if;
		end process;
		
	 P2: process(EA, enter, end_fpga, end_time, end_user, match, win) 
	 begin
			case EA is
					when Init =>        R1 <= '1';
										R2 <= '1';
										E1 <= '0';
										E2 <= '0';
										E3 <= '0';
										E4 <= '0';
										SEL <= '0';
										PE <= Setup;
										
					when Setup =>
					                    R1 <= '0';
										R2 <= '0';
										E1 <= '1';
										E2 <= '0';
										E3 <= '0';
										E4 <= '0';
										SEL <= '0';
										if enter = '1' then 
										PE <= Play_FPGA;
										    else
											PE <= setup;
										end if;
										
					when Play_FPGA =>
										R1 <= '0';
										R2 <= '0';
										E1 <= '0';
										E2 <= '0';
								    	E3 <= '1';
										E4 <= '0';
										SEL <= '0';
										if end_fpga = '1' then 
										PE <= Play_User;
										    else 
											PE <= Play_FPGA;
										end if;
											
					when Play_User =>   
					                    R1 <= '0';
										R2 <= '0';
										E1 <= '0';
										E2 <= '1';
										E3 <= '0';
										E4 <= '0';
										SEL <= '0';
										if end_time = '1' then 
										    PE <= result;
										else 
										    if end_user = '0' then
										        PE <= Play_User;
										    else
										        PE <= Check;
    										end if;
										end if;
										
					when Check =>   	
					                    R1 <= '0';
										R2 <= '0';
										E1 <= '0';
										E2 <= '0';
										E3 <= '0';
										E4 <= '1';
										SEL <= '0';
										if match = '0' then
										PE <= Result;
										    else 
											PE <= Next_Round;
										end if;
					
					when Next_Round => 	
					                    R1 <= '0';
										R2 <= '1';
										E1 <= '0';
										E2 <= '0';
										E3 <= '0';
										E4 <= '0';
									    SEL <= '0';
					                    if win = '0' then
					                    PE <= Play_FPGA;
					                        else 
					                        PE <= Result;
					                   end if;
					
					
			
					when Result => 	    
					                    R1 <= '0';
										R2 <= '1';
										E1 <= '0';
										E2 <= '0';
										E3 <= '0';
										E4 <= '0';
										SEL <= '1'; 
										PE <= Result;
										
			END CASE;
		END PROCESS;
END arc;
    
