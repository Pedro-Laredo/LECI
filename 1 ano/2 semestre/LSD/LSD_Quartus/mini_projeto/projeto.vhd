library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity projeto is
    port (
        SW : in std_logic_vector(1 downto 0);
        CLOCK_50 : in std_logic; 
        LEDR : out std_logic_vector(3 downto 0);
        LEDG : out std_logic_vector(3 downto 0);
        HEX0 : out std_logic_vector(6 downto 0)
    );
end projeto;

architecture Structural of projeto is
	signal dec_output : std_logic_vector(3 downto 0);
	signal red_lights : std_logic_vector(3 downto 0);
	signal green_lights : std_logic_vector(3 downto 0);
	signal clkout: std_logic_vector(3 downto 0);
	signal clkout_fase5 : std_logic_vector(3 downto 0);

	begin
	Decoder_instanciado : entity work.decoder(Behavioral)
	port map(
		input => SW,
		output => dec_output);
		
	fase3_instanciada : entity work.fase3(Behavioral)
	port map(
				 leds_vermelhos => red_lights,
        leds_verdes => green_lights
    );
	 
	 Fase4_instanciada : entity work.fase4(Shell)
    port map (
        CLOCK_50 => CLOCK_50,
        leds_vermelhos => clkOut
		  
    );
	 Fase5_instanciada : entity work.fase5(Shell)
	 port map(
		CLOCK_50 => CLOCK_50,
		leds_verdes =>clkout_fase5);
	 
	  
	process(dec_output)
	begin
		if (dec_output ="0001") then
			LEDG<= green_lights;
			LEDR<=red_lights;
			HEX0<="1111001";
			
		elsif(dec_output ="0010") then
			LEDG<="0000";
			LEDR <=clkOut;
			HEX0 <= "0100100";
			
		elsif(dec_output = "0100") then
			LEDG<=clkOut;
			LEDR<= "0000";
			HEX0<= "0110000";
			
		else
		LEDG <=(others=>'0');
		LEDR<=(others => '0');
		HEX0 <= (others => '0');
	end if;
end process;
	
 
    
end Structural;
