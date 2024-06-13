LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY dividir_tempo IS
    PORT (
        time_In : IN std_logic_vector(4 downto 0);
        Saida_dezenas : OUT std_logic_vector(3 downto 0);
        Saida_unidades : OUT std_logic_vector(3 downto 0)
    );
END dividir_tempo;

ARCHITECTURE Behavioral OF dividir_tempo IS
    SIGNAL dezenas : unsigned(4 downto 0);
    SIGNAL unidades : unsigned(4 downto 0);
    SIGNAL s_time_in : unsigned(4 downto 0);
BEGIN
    s_time_in <= unsigned(time_in);

    dezenas <= s_time_in / to_unsigned(10, 5);
    unidades <= s_time_in mod to_unsigned(10, 5);

    Saida_dezenas <= std_logic_vector(resize(dezenas, 4));
    Saida_unidades <= std_logic_vector(resize(unidades, 4));
END Behavioral;
