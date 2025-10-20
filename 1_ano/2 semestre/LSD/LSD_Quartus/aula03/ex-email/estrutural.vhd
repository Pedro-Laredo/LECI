library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity estrutural is
	port(
			A : in std_logic_vector(3 downto 0);
			B : out std_logic_vector(2 downto 0));
	end estrutural;
architecture Structural of estrutural is

	component FullAdder is
	port(
			a,b,cin : in std_logic;
			s,cout : out std_logic);
			end component;
			signal carry : std_logic_vector(2 downto 0);
			signal sum : std_logic_vector(2 downto 0);
	
	begin
	
	FA0: FullAdder port map (A(1),A(0),A(2),sum(0), carry(0));
	FA1: FullAdder port map(0, sum(0),A(3),sum(1),carry(1));
	FA2: FullAdder port mao(0, carry(0),carry(1),sum(2), sum(2));
end architecture Structural;
