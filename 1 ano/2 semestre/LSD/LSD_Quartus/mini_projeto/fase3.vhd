library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fase3 is
port(
leds_vermelhos: out std_logic_vector(3 downto 0);
leds_verdes: out std_logic_vector(3 downto 0));
		end entity fase3;
architecture Behavioral of fase3 is

begin
	  leds_vermelhos<= "1111";
	  leds_verdes<="1111";
	end Behavioral;
	
	
	