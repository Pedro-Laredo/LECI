library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimeModule is
    port (
        clk  : in std_logic;
        HEX4_temp      : out std_logic_vector(6 downto 0); 
        HEX5_temp      : out std_logic_vector(6 downto 0);  
		  StartTime : in std_logic_vector(4 downto 0);
		  Status_Tempo : out std_logic;
		  Second_enable : in  std_logic;
		  Load_Counter : in std_logic
    );
end TimeModule;

architecture Behavioral of TimeModule is
	 signal cntValueOut : std_logic_vector(4 downto 0);
    signal cntValue : unsigned(4 downto 0);
    signal dezenas : unsigned(4 downto 0); 
    signal unidades : unsigned(4 downto 0); 
    signal pulse : std_logic;  
begin

    Counter_inst : entity work.Counter
        port map (
            clk => clk,
            enable => pulse,  
            cntOut => cntValueOut,
				setValue => StartTime,
				Second_enable => Second_enable,
				Time_Status => Status_Tempo,
				load => Load_Counter
				
        );
		  
	 cntValue <= unsigned(cntValueOut);

    PulseGen_inst : entity work.PulseGen  
        generic map (MAX => 50000000)  
        port map (
            clock => clk,
            reset => '0',  
            pulse => pulse  
        );

    process(cntValue)
    begin
        dezenas <= cntValue / to_unsigned(10, 5);
        unidades <= cntValue mod to_unsigned(10, 5);
    end process;

    Hex5_decoder : entity work.Bin7segDecoder
        port map (
            binInput => std_logic_vector(resize(dezenas, 4)),
            decOut_n => HEX5_temp 
        );

    Hex4_decoder : entity work.Bin7segDecoder
        port map (
            binInput => std_logic_vector(resize(unidades, 4)),
            decOut_n => HEX4_temp 
        );

end Behavioral;
