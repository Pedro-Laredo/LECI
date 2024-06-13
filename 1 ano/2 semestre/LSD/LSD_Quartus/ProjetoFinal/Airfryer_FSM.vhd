library IEEE;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Airfryer_FSM is
    port(
        clk : in std_logic;
        Enable : in std_logic;
        Correr : in std_logic;
        Abrir_Forno : in std_logic;
        Programas : in std_logic_vector(2 downto 0);
        Comida_in : out std_logic;
        tempo: out std_logic_vector(4 downto 0);
        temperatura : out std_logic_vector(7 downto 0);
        luz_vermelha : out std_logic_vector(2 downto 0);
        luz_verde : out std_logic_vector(1 downto 0);
        Estado_Tempo : in std_logic;
        Comecar_counter : out std_logic;
        --Estado_Temperatura : in std_logic;
        Start_Cooking : in std_logic;
        Carregar_Tempo : out std_logic
		  --Comecar_Temperatura : out std_logic
    );
end Airfryer_FSM;

architecture Behavioral of Airfryer_FSM is
    type state_type is (IDLE, PREHEAT, COOK, FINISH, COOL);
    signal s_currentState, s_nextState: state_type;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if Enable = '1' then
                s_currentState <= s_nextState;
            else
                s_currentState <= IDLE;
            end if;
        end if;
    end process;

    process(s_currentState, Correr, Programas, Enable, Abrir_Forno, Estado_Tempo, Start_Cooking)
    begin
        -- Default outputs
        luz_verde <= "00";
        Comecar_counter <= '0';  -- Initialize to '0'
		  Carregar_Tempo <= '1';
		  tempo <="00000";
        Carregar_Tempo <= '0';   -- Default to '0'
        temperatura <= "00010100"; -- Default temperature
        s_nextState <= s_currentState;
        tempo <="00000";

        if Enable = '1' then
            case s_currentState is
                when IDLE =>
                    luz_vermelha <= "111"; -- Indication of the IDLE state
                    if Programas = "110" and Correr = '1' then -- rissóis and run button is pressed
                        tempo <= "00011"; -- 3 minutes
                        Carregar_Tempo <= '1'; -- Assert load signal to load time
                        temperatura <= "10110100"; -- 180 degrees
								comecar_counter <= '0';
                        s_nextState <= PREHEAT;
								
							elsif Programas = "001" and Correr = '1' then --batatas
								tempo<="00101"; -- 5 minutos
								Carregar_Tempo <= '1'; -- Assert load signal to load time
                        temperatura <= "11001000"; -- 200 degrees
								comecar_counter <= '0';
                        s_nextState <= PREHEAT;
								
							elsif Programas = "010" and Correr = '1' then -- filetes
								tempo<="00011"; -- 3 minutos
								Carregar_Tempo <= '1'; -- Assert load signal to load time
                        temperatura <= "10101010"; -- 170 degrees
								comecar_counter <= '0';
                        s_nextState <= PREHEAT;
								
							elsif Programas = "011" and Correr = '1' then --hamburger
								tempo<="00101"; -- 5 minutos
								Carregar_Tempo <= '1'; -- Assert load signal to load time
                        temperatura <= "10101010"; -- 170 degrees
								comecar_counter <= '0';
                        s_nextState <= PREHEAT;
							elsif Programas ="000" and Correr = '1' then --default
									tempo <="10010";
									temperatura <= "11001000";
									Carregar_Tempo <= '1';
									s_nextState <=COOK;
								
							
                    end if;

                when PREHEAT =>
                    luz_vermelha <= "110"; -- Preheat state indicator
						  luz_verde <="00";
						  if Programas ="110" then --rissois
								temperatura <= "10110100"; -- 180 degrees
								Carregar_Tempo <= '0'; -- Deassert load signal after loading
								
							elsif Programas ="001" then --batatas
								temperatura <= "11001000";
								Carregar_Tempo <='0';
								
							elsif Programas ="010" then --filetes
								temperatura <= "10101010";
								Carregar_Tempo <='0';
								
							elsif Programas ="011" then --hamburger
								temperatura <= "10101010";
								Carregar_Tempo <='0';
							
								
								
							end if;
						  if Estado_Tempo = '1' then
                            Comecar_counter <= '0';
                            luz_vermelha <= "100";
                            luz_verde <= "01";
									 if Abrir_Forno = '1' then
										luz_verde <= "11";
										end if;
									 if Abrir_Forno = '0' and correr ='0' then
											Comecar_counter <='0';
											Carregar_Tempo <= '1';
											if programas = "110" then --rissois
												tempo <= "01111";
												
											elsif programas = "001" then
												tempo<="10100";
											
											elsif programas = "010" then
												tempo<="10100";
												
											elsif programas = "011" then
												tempo<="10100";
											
											end if;
											s_nextState <= COOK;
										end if;
							elsif correr = '1' then
								comecar_counter <= '1';
							end if;
                when COOK =>
						  Carregar_Tempo <= '0';
                    luz_verde <= "11";  -- Set green LED
                    luz_vermelha <= "101";  -- Set red LED
						  if programas = "110" then --rissois
								temperatura <= "10110100";  -- Set temperature
								tempo <= "01111"; 
							elsif programas = "001" then --batatas
								temperatura <="11001000";
								tempo <="10100";
							elsif programas = "010" then --filetes
								temperatura <="10101010";
								tempo <="10100";
							elsif programas = "011" then
								temperatura <= "10101010";
								tempo <="10100";
							elsif programas ="000" then --default
								temperatura <= "11001000";
								tempo <="10010";
								
							--colocar aqui os outros programas com elsif
							end if;
						  if Estado_Tempo = '1' and correr ='1' then
								luz_verde <="10";
								luz_vermelha <="001";
								s_nextState <=FINISH;
								
							
                    elsif Correr = '1' then
								Carregar_Tempo <= '0';
								luz_vermelha <= "000";  -- Set red LED
								luz_verde <= "11";
								Comecar_counter <= '1';
							end if;
							

                when FINISH =>
                    luz_verde <= "11";  -- Set green LED
                    luz_vermelha <= "111";  -- Set red LED
						  if programas = "110" then --rissois
								temperatura <= "10110100";  -- Set temperature
							elsif programas = "001" then --batatas
								temperatura <="11001000";
							elsif programas = "010" then --filetes
								temperatura <="10101010";
							elsif programas = "011" then
								temperatura <= "10101010";
							elsif programas ="000" then --default
								temperatura <= "11001000";
								end if;
							if Abrir_Forno = '1' then
								s_nextState<=COOL;
								end if;
                    

                when COOL =>
                    luz_verde <= "01";
                    luz_vermelha <= "000";
						  if programas = "110" then --rissois
								temperatura <= "10110100";  -- Set temperature
							elsif programas = "001" then --batatas
								temperatura <="11001000";
							elsif programas = "010" then --filetes
								temperatura <="10101010";
							elsif programas = "011" then
								temperatura <= "10101010";
							elsif programas ="000" then --default
								temperatura <= "11001000";
								end if;
							
								
							

                when others =>
                    luz_verde <= "00";
                    luz_vermelha <= "000";
                    s_nextState <= IDLE;
            end case;
        else
            luz_vermelha <= "000";
            luz_verde <= "00";
				Carregar_Tempo <='1';
            tempo <="00000";
				Carregar_Tempo <='0';
				comecar_counter <='0';
            s_nextState <= IDLE;
        end if;
    end process;
end Behavioral;
