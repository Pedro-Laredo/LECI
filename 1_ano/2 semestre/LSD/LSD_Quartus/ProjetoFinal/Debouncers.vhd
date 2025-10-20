library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Debouncers is
    port
    (
        clock : in std_logic;
        enable_sw : in std_logic;
        run_sw : in std_logic;
        abrir_forno_sw : in std_logic;
        start_cooking_sw : in std_logic;
        enable_out : out std_logic;
        run_out : out std_logic;
        abrir_forno_out : out std_logic;
        start_cooking_out : out std_logic
    );
end Debouncers;

architecture Debounce of Debouncers is
begin
    enable_debouncer : entity work.Debouncer
    port map
    (
        refClk => clock,
        dirtyIn => enable_sw,
        pulsedOut => enable_out
    );

    run_debouncer : entity work.Debouncer
    port map
    (
        refClk => clock,
        dirtyIn => run_sw,
        pulsedOut => run_out
    );

    abrir_forno_debouncer : entity work.Debouncer
    port map
    (
        refClk => clock,
        dirtyIn => abrir_forno_sw,
        pulsedOut => abrir_forno_out
    );

    start_cooking_debouncer : entity work.Debouncer
    port map
    (
        refClk => clock,
        dirtyIn => start_cooking_sw,
        pulsedOut => start_cooking_out
    );
end Debounce;