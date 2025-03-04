library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fase4 is
    port (CLOCK_50 : in std_logic;
        leds_vermelhos : out std_logic_vector(3 downto 0));
end fase4;

architecture Shell of fase4 is

    constant k_value : std_logic_vector(31 downto 0) := x"017D7840"; -- 25x10^6

begin
    Divisor : entity work.FreqDivider(Behavioral)
        port map (
            clkIn => CLOCK_50,
            k => k_value,
            clkOut => leds_vermelhos
        );
		  
end Shell;
