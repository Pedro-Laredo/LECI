library ieee;
use ieee.std_logic_1164.all;

entity AccN is
	generic(N : positive := 4);
	port(reset : in std_logic;
	clk : in std_logic;
	enable : in std_logic;
	dataIn : in std_logic_vector((N-1) downto 0);
	dataOut : out std_logic_vector((N-1)downto 0 );
end AccN;

architecture Behav of AccN is
	signal s_adderOut, s_regOut : std_logic_vector((N-1)downto 0);
begin

somador : entity work.AdderN(Behavioral)
	generic map(N => N)
	port map(operand0 => dataIn, operand1 => s_regOut, result =>s_adderOut;
	
