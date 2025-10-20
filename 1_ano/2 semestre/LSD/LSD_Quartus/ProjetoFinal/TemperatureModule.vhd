library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

Entity TemperatureModule is
	port(  CLOCK_50 : in std_logic;
			SetTemperature : in std_logic_vector( 7 downto 0);
			InicialTemperature : in std_logic_vector( 7 downto 0);
			Switch_17 : in std_logic;
			Switch_16 : in std_logic;
			HEX00 : out std_logic_vector(6 downto 0);
			HEX11 : out std_logic_vector(6 downto 0);
			HEX22 : out std_logic_vector(6 downto 0);
			Time_Status : out std_logic
			);
			
		end TemperatureModule;

architecture Behavioral of TemperatureModule is
	
	signal cntValueOut : std_logic_vector(7 downto 0);
	signal cntValue : unsigned(7 downto 0);
	signal unidades : unsigned(7 downto 0);
	signal dezenas : unsigned(7 downto 0);
	signal centenas : unsigned (7 downto 0 );
	signal pulse : std_logic;
	
	begin 
			CounterUp_inst : entity work.CounterUp
        port map (
            clk => CLOCK_50,
				Second_enable => Switch_17,
            enable => pulse,  
            cntOut => cntValueOut,
				setValue => InicialTemperature,
				FinalValue => SetTemperature,
				Temp_Status => Time_Status,
				Reset => Switch_16
				
        );
		  cntValue <=unsigned(cntValueOut);
		  
		  PulseGen_inst : entity work.PulseGen  
        generic map (MAX => 50000000)  
        port map (
            clock => CLOCK_50,
            reset => '0',  
            pulse => pulse  
        );
		  
		  process(cntValue)
begin
        -- Convert count value to hundreds, tens, and units
        centenas <= resize(cntValue / to_unsigned(100, cntValue'length), centenas'length);
        dezenas <= resize((cntValue mod to_unsigned(100, cntValue'length)) / to_unsigned(10, cntValue'length), dezenas'length);
        unidades <= resize(cntValue mod to_unsigned(10, cntValue'length), unidades'length);

end process;

			
			Hex0_decoder : entity work.Bin7segDecoder
        port map (
            binInput => std_logic_vector(resize(unidades, 4)),
            decOut_n => HEX00
        );

		 Hex1_decoder : entity work.Bin7segDecoder
			  port map (
					binInput => std_logic_vector(resize(dezenas, 4)),
					decOut_n => HEX11
			  );
		Hex2_decoder : entity work.Bin7segDecoder
			  port map (					
					binInput => std_logic_vector(resize(centenas, 4)),
					decOut_n => HEX22
			  );
	end Behavioral;
			 
	