library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetectorFSM_Tb is
end SeqDetectorFSM_Tb;

architecture Stimulus of SeqDetectorFSm_Tb is

    signal clk : std_logic;
    signal x : std_logic;
    signal y : std_logic;

begin

    uut: entity work.SeqDetectorFSM(MealyArch)
        port map(
            clk => clk,
            xin => x,
            yout => y
        );

    clock_proc : process
    begin
       wait for 50 ns;
				clk<='0';
		wait for 50 ns;
				clk<= '1';
		end process;
		
		
    stim_proc : process
    begin
        wait for 100 ns;
			x<='1';
        wait for 100 ns;
			x<='0';
        wait for 100 ns;
			x<='0';
        wait for 100 ns;
			x<='1';
        wait for 100 ns;
			x<='0';
        wait for 100 ns;
			x<='0';
        wait for 100 ns;
			x<='1';
			wait for 100 ns;
			x<='1';
			wait for 100 ns;
    end process;

end Stimulus;
