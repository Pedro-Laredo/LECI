library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter is
    port(
        clk : in std_logic;
        count : out std_logic_vector(3 downto 0)
    );
end Counter;

architecture Behavioral of Counter is
	signal cnt : unsigned(3 downto 0) :=(others =>'0');
begin 
	process(clk)
	begin
		if(rising_edge(clk)) then
		cnt <= cnt + 1;
		end if;
    end process;
    count <= std_logic_vector(cnt);
end Behavioral;