library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FSM_DM is
    port(
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
end FSM_DM;

architecture Behavioral of FSM_DM is
    signal clk : std_logic;
    signal Enable : std_logic;
    signal Correr : std_logic;
    signal luz_vermelha : std_logic_vector(2 downto 0);
    signal luz_verde : std_logic_vector(1 downto 0);
    signal tempo : std_logic_vector(4 downto 0);
    signal temperatura : std_logic_vector(7 downto 0);  -- Signal to connect temperature
    signal Second_enable : std_logic; 
    signal Status_Tempo : std_logic;
    signal Carregar_Tempo : std_logic;
    signal enable_debounced : std_logic;
    signal run_debounced : std_logic;
    signal abrir_forno_debounced : std_logic;
    signal start_cooking_debounced : std_logic;
	 --signal Comecar_Temperatura : std_logic;
	 --signal Estado_Temperatura : std_logic;
     
begin

	-- Instância do TemperatureModule
   --TemperatureModule_inst : entity work.TemperatureModule
       -- port map (
        --    CLOCK_50         => CLOCK_50,
        --    SetTemperature   => "00010100",
        --    InicialTemperature => temperatura,
         --   Switch_17        => Comecar_Temperatura,  -- Enable switch
          --  Switch_16        => Enable,  -- Reset switch
          --  HEX00            => HEX0,
          --  HEX11            => HEX1,
          --  HEX22            => HEX2,
          --  Time_Status      => Estado_Temperatura
        --);

    -- Instância do TimeModule
    TimeModule_inst : entity work.TimeModule
        port map (
            clk           => CLOCK_50,
            HEX4_temp     => HEX4,
            HEX5_temp     => HEX5,
            StartTime     => tempo,
            Second_enable => Second_enable,
            Load_Counter => Carregar_Tempo,
            Status_Tempo      => Status_Tempo  
        );

    -- Instantiate one Debouncer for each switch
    debouncer_enable_inst : entity work.Debouncer
        port map (
            input_signal => SW(0),
            clock => CLOCK_50,
            debounced_output => enable_debounced
        );

    debouncer_run_inst : entity work.Debouncer
        port map (
            input_signal => SW(1),
            clock => CLOCK_50,
            debounced_output => run_debounced
        );

    debouncer_abrir_forno_inst : entity work.Debouncer
        port map (
            input_signal => SW(2),
            clock => CLOCK_50,
            debounced_output => abrir_forno_debounced
        );

    debouncer_start_cooking_inst : entity work.Debouncer
        port map (
            input_signal => SW(7),
            clock => CLOCK_50,
            debounced_output => start_cooking_debounced
        );

    -- Instância da FSM do Airfryer
    Airfryer_FSM_inst : entity work.Airfryer_FSM
        port map (
            clk              => CLOCK_50,
            Enable           => enable_debounced,
            Correr           => start_cooking_debounced,
            Abrir_Forno      => abrir_forno_debounced, 
            Programas        => SW(6 downto 4), 
            Comida_in        => open,
            tempo            => tempo,
            temperatura      => temperatura,  -- Connect to signal temperatura
            luz_vermelha     => LEDR,
            luz_verde        => LEDG,
            Estado_Tempo     => Status_Tempo,  -- Connect Estado_tempo to zeroFlag
            Comecar_counter  => Second_enable,  -- Connected to signal
            --Estado_Temperatura=> '0',
            Carregar_Tempo   => Carregar_Tempo,
            Start_Cooking    => run_debounced
        );

    -- Instância do Dividir_Temperatura
    Dividir_Temperatura_inst : entity work.Dividir_Temperatura
        port map (
            Temp_in => temperatura,  -- Connect temperature signal
            Display0 => HEX0,
            Display1 => HEX1,
            Display2 => HEX2
        );

end Behavioral;
