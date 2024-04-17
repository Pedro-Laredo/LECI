library IEEE;
use IEEE.STD_logic_1164.all;
use IEEE.Numeric_std.all;
entity FullAdder is
	port(a,b,cin : in std_logic;
			s,cout : out std_logic);
	end FullAdder;
	
architecture Behavioral of FullAdder is
begin 
	s <= std_logic(a xor b xor cin);
    cout <= std_logic((a and b) or (cin and (a xor b)));
	end Behavioral;

