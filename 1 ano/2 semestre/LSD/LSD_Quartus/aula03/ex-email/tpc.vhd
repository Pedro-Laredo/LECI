library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tpc is
	port(
			A : in std_logic_vector(3 downto 0);
			B : out std_logic_vector(2 downto 0));
	end tpc;

architecture Behavioral of tpc is
begin
	B <= "000" when (A = "0000") else
			"001" when (A = "0001" or A="0010" or A = "0100" or A = "1000") else
			"010" when (A = "0011" or A = "0101" or A = "0110" or A = "1001" or A ="1010" or A = "1100") else
			"011" when (A = "0111" or A = "1001" or A = "1101" or A = "1110") else
			"100";
	end Behavioral;
			