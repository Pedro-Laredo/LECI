	library IEEE;
	use IEEE.STD_LOGIC_1164.all;

	entity SeqDetectorFSM is
		 port (
			  xin : in std_logic;
			  clk : in std_logic;
			  yout : out std_logic
		 );
	end SeqDetectorFSM;

	architecture MealyArch of SeqDetectorFSM is
		 type Estado is (S0, S1, S2, S3);
		 signal s_currentState, s_nextState : Estado;

begin
	process(clk)
    begin
        if rising_edge(clk) then
            s_currentState <= s_nextState; 
            case s_currentState is
                when S0 =>
                    if xin = '1' then
                        s_nextState <= S1;
                    else
                        s_nextState <= S0;
                    end if;
                    yout <= '0';

                when S1 =>
                    if xin = '0' then
                        s_nextState <= S2;
                    else
                        s_nextState <= S1;
                    end if;
                    yout <= '0';

                when S2 =>
                    if xin = '0' then
                        s_nextState <= S3;
                    else
                        s_nextState <= S1;
                    end if;
                    yout <= '0';

                when S3 =>
                    if xin = '1' then
                        s_nextState <= S1;
                        yout <= '1';
                    else
                        s_nextState <= S0;
                        yout <= '0';
                    end if;
            end case;
        end if;
    end process;

end MealyArch;
