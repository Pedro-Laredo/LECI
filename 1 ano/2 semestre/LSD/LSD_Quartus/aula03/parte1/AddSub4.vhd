library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddSub4 is
    port (
        a, b  : in  std_logic_vector(3 downto 0);
        sub   : in  std_logic;
        s     : out std_logic_vector(3 downto 0);
        cout  : out std_logic
    );
end AddSub4;

architecture Structural of AddSub4 is
    signal s_b      : std_logic_vector(3 downto 0);
    signal borrow   : std_logic;
begin
    mux_b: process(sub, b)
    begin
        if sub = '0' then
            s_b <= b;
        else
            s_b <= not b;
        end if;
    end process mux_b;

    Adder4_inst: entity work.Adder4(Structural)
    port map (
        a    => a,
        b    => s_b,
        cin  => sub,
        s    => s,
        cout => borrow
    );

    cout <= borrow when sub = '0' else not borrow;
end Structural;