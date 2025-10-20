library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FreqDivider_Demo is
    port (CLOCK_50 : in std_logic;
        LEDR : out std_logic_vector(0 downto 0));
end FreqDivider_Demo;

architecture Shell of FreqDivider_Demo is

    constant k_value : std_logic_vector(31 downto 0) := x"017D7840"; -- 25x10^6

begin
    Divisor : entity work.FreqDivider(Behavioral)
        port map (
            clkIn => CLOCK_50,
            k => k_value,
            clkOut => LEDR(0)
        );
		  
end Shell;
