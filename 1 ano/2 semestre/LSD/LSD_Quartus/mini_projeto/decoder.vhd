library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder is
	port(input : in std_logic_vector(1 downto 0);
			output : out std_logic_vector(3 downto 0));
	end decoder;

architecture Behavioral of decoder is
begin
	output<= "0001" when(input="00")else
				"0010" when(input="01")else
				"0100" when(input="10")else
				"1000";
	end Behavioral;