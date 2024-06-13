library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer is
    Port (
        input_signal : in  STD_LOGIC;
        clock : in STD_LOGIC;
        debounced_output : out STD_LOGIC
    );
end Debouncer;

architecture Behavioral of Debouncer is
    signal filtered_signal : STD_LOGIC;
    signal filtered_sync : STD_LOGIC;
    signal dff_input : STD_LOGIC;
begin
    -- Schmitt Trigger process to filter input signal
    process(input_signal, clock)
    begin
        if rising_edge(clock) then
            if input_signal = '1' then
                filtered_signal <= '1'; -- Set filtered signal high
            elsif input_signal = '0' then
                filtered_signal <= '0'; -- Set filtered signal low
            end if;
        end if;
    end process;

    -- Synchronize filtered signal with clock
    process(clock)
    begin
        if rising_edge(clock) then
            filtered_sync <= filtered_signal; -- Synchronize filtered signal
        end if;
    end process;

    -- D Flip-Flop process to debounce synchronized signal
    process(clock)
    begin
        if rising_edge(clock) then
            dff_input <= filtered_sync; -- Sample synchronized signal on rising edge of clock
        end if;
    end process;

    debounced_output <= dff_input; -- Output of D flip-flop is the debounced signal
end Behavioral;
