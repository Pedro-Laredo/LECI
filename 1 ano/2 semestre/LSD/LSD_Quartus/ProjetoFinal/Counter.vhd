library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter is
    port (
        clk            : in std_logic;
        setValue       : in std_logic_vector(4 downto 0);
        load           : in std_logic;
        enable         : in std_logic;
        cntOut         : out std_logic_vector(4 downto 0);
        Second_enable  : in std_logic;
        Time_Status    : out std_logic := '0'
    );
end Counter;

architecture Behavioral of Counter is
    signal s_cntValue    : unsigned(4 downto 0);
    signal s_Time_Status : std_logic := '0'; -- Initialize Time_Status
begin 
    process(clk) 
    begin
        if rising_edge(clk) then 
            if load = '1' then
                s_cntValue <= unsigned(setValue); -- Load the value when load is 1
                s_Time_Status <= '0'; -- Reset Time_Status when loading
            elsif enable = '1' and Second_enable = '1' then
                if s_cntValue > 0 then
                    s_cntValue <= s_cntValue - 1; -- Decrement counter when enabled
                end if;
                if s_cntValue = 0 then
                    s_Time_Status <= '1';
                else
                    s_Time_Status <= '0';
                end if;
            end if;
        end if;
    end process;

    cntOut <= std_logic_vector(s_cntValue);
    Time_Status <= s_Time_Status;
end Behavioral;
