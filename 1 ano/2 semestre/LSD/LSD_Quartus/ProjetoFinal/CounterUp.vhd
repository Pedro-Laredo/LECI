library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUp is
    port (
        clk          : in std_logic;
        setValue     : in std_logic_vector(7 downto 0);
        FinalValue   : in std_logic_vector(7 downto 0);
        enable       : in std_logic;
        Second_enable: in std_logic;
        cntOut       : out std_logic_vector(7 downto 0);
        Temp_Status  : out std_logic;
        Reset        : in std_logic
    );
end CounterUp;

architecture Behavioral of CounterUp is
    signal s_cntValue    : unsigned(7 downto 0);
    signal s_initialized : boolean := false;
	 signal s_cntOut : std_logic_vector(7 downto 0);
begin 
    process(clk, Reset)
    begin
        if Reset = '1' then
            s_cntValue <= (others => '0');  -- Reset the counter to 0
            s_initialized <= false;         -- Reset initialization status
        elsif rising_edge(clk) then
            if Second_enable = '1' then
                if enable = '1' then
                    if not s_initialized then
                        s_cntValue <= unsigned(setValue);  
                        s_initialized <= true;
                    elsif s_cntValue > unsigned(FinalValue) then
                        s_cntValue <= s_cntValue - 10;
                    end if;
                end if;
            end if;
        end if;
    end process;

    s_cntOut <= std_logic_vector(s_cntValue);
    cntOut <= s_cntOut;
    Temp_Status <= '1' when (s_cntOut = FinalValue and Second_enable = '1') else '0';
end Behavioral;
