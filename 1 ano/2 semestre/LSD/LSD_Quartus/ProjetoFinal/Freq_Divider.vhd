library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Freq_Divider is
    Port ( clk_in : in  STD_LOGIC;     -- 50 MHz input clock
           clk_out : out  STD_LOGIC    -- 1 Hz output clock
          );
end Freq_Divider;

architecture Behavioral of Freq_Divider is
    signal counter : STD_LOGIC_VECTOR (25 downto 0) := (others => '0'); -- 26-bit counter
    signal clk_out_reg : STD_LOGIC := '0';
begin

    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = "10111110101111000001111111" then -- 50,000,000 - 1
                counter <= (others => '0');
                clk_out_reg <= not clk_out_reg;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_out_reg;

end Behavioral;
