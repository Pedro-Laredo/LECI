library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fase5 is
    port (CLOCK_50 : in std_logic;
        leds_verdes : out std_logic_vector(3 downto 0));
end fase5;

architecture Shell of fase5 is

    constant k_value : std_logic_vector(31 downto 0) := x"017D7840"; 

begin
    Divisor : entity work.FreqDivider_2(Behavioral)
        port map (
            clkIn => CLOCK_50,
            k => k_value,
            clkOut => leds_verdes
        );
		  
end Shell;
