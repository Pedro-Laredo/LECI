library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is 
	port (
			sel : in std_logic;
			data0 : in std_logic;
			data1: in std_logic;
			output : out std_logic);
end Mux2_1;

architecture BehavAssign of Mux2_1 is
begin
output <= 
          data0 when (sel='0')else
          data1;
end BehavAssign;