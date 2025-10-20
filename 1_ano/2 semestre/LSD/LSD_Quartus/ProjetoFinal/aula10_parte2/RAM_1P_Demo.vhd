library ieee;
use ieee.std_logic_1164.all;

entity RAM_1P_Demo is
	port(KEY : in std_logic_vector(0 downto 0);
			SW : in std_logic_vector(12 downto 0);
			LEDR : out std_logic_vector(7 downto 0));
	end RAM_1P_Demo;

architecture Behavioral of RAM_1P_Demo is
begin 
	RAM: entity work.RAM_1P_16_8(RTL)

		port map( clk => not KEY(0),
					writeEnable =>SW(12),
					writeData =>SW(11 downto 4),
					address => sw(3 downto 0),
					readData =>LEDR);
end Behavioral;

