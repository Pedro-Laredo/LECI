library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TopLevel is
    port (
        CLOCK_50 : in std_logic;
        SW : in std_logic_vector(7 downto 0);
        LEDR : out std_logic_vector(2 downto 0);
        LEDG : out std_logic_vector(1 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX4 : out std_logic_vector(6 downto 0);
        HEX5 : out std_logic_vector(6 downto 0)
    );
end TopLevel;

architecture Behavioral of TopLevel is
    signal debounced_button : std_logic;  -- Signal for debounced button input

begin

    -- Instantiate the debouncer
    Debounce_inst : entity work.DebounceUnit
        generic map (
            kHzClkFreq    => 50000,       -- Adjust according to your clock frequency
            mSecMinInWidth=> 100,         -- Adjust according to your minimum input width requirement
            inPolarity    => '1',         -- Adjust according to your input polarity
            outPolarity   => '1'          -- Adjust according to your output polarity
        )
        port map (
            refClk      => CLOCK_50,     -- Connect to your system clock
            dirtyIn     => SW,        -- Connect to the input signal you want to debounce
            pulsedOut   => debounced_button -- Connect to the debounced output signal
        );

    -- Instantiate the FSM_DM entity
    FSM_DM_inst : entity work.FSM_DM
        port map (
            CLOCK_50    => CLOCK_50,     -- Connect to your system clock
            SW          => SW,           -- Connect to your switch inputs
            LEDR        => LEDR,         -- Connect to your LEDs
            LEDG        => LEDG,
            HEX0        => HEX0,
            HEX1        => HEX1,
            HEX2        => HEX2,
            HEX4        => HEX4,
            HEX5        => HEX5
        );

end Behavioral;
