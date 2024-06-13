library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Dividir_Temperatura is
    port(
        Temp_in : in std_logic_vector(7 downto 0);
        Display0 : out std_logic_vector(6 downto 0);
        Display1 : out std_logic_vector(6 downto 0);
        Display2 : out std_logic_vector(6 downto 0)
		  --Enable_IN : in std_logic
    );
end Dividir_Temperatura;

architecture Behavioral of Dividir_Temperatura is
    signal unidades : unsigned(3 downto 0);
    signal dezenas : unsigned(3 downto 0);
    signal centenas : unsigned(3 downto 0);
    signal temp_unsigned : unsigned(7 downto 0);
begin
    -- Convert Temp_in to unsigned
    temp_unsigned <= unsigned(Temp_in);

    -- Calculate centenas, dezenas, and unidades
    centenas <= resize(temp_unsigned / 100, centenas'length);
    dezenas <= resize((temp_unsigned mod 100) / 10, dezenas'length);
    unidades <= resize(temp_unsigned mod 10, unidades'length);
	 

    -- Instantiate Bin7segDecoder for each display
    Hex0_decoder : entity work.Bin7segDecoder
        port map (
				--Enable_BIN => Enable_IN,
            binInput => std_logic_vector(unidades),
            decOut_n => Display0
        );

    Hex1_decoder : entity work.Bin7segDecoder
        port map (
				--Enable_BIN => Enable_IN,
            binInput => std_logic_vector(dezenas),
            decOut_n => Display1
        );

    Hex2_decoder : entity work.Bin7segDecoder
        port map (
				--Enable_BIN => Enable_IN,
            binInput => std_logic_vector(centenas),
            decOut_n => Display2
        );

end Behavioral;
