library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity projeto_Demo is
    port(
        CLOCK_50 : in std_logic;
        SW : in std_logic_vector(1 downto 0);
		  KEY : in std_logic_vector(3 downto 0);
        HEX7, HEX6, HEX5,HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0);
		  LEDG : out std_logic_vector(6 downto 0);
		  LEDR : out std_logic_vector(0 downto 0)
		   
    );

end projeto_Demo;

architecture Structural of projeto_Demo is
	
	--pulse gerador
	signal s_pulse1,s_pulse2,s_pulse3,s_pulse4 : std_logic;
	signal s_pulseOut : std_logic;
	
	signal s_min : std_logic_vector(5 downto 0);
	signal s_hours : std_logic_vector(5 downto 0);
	
	signal s_MinDataOut0 : std_logic_vector(3 downto 0);
	signal s_MinDataOut1 : std_logic_vector(3 downto 0);
	
	signal s_HoursDataOut0 : std_logic_vector(3 downto 0);
	signal s_HoursDataOut1 : std_logic_vector(3 downto 0);
	
	--rom modo dependendo das horas
	signal s_RomDataOut : std_logic_vector(1 downto 0);
	
	--deboucer
	signal s_key0, s_key1, s_key2, s_key3 : std_logic;
	
	--Modo para alterar temperatura comforto, económico e gelo
	signal s_mode : std_logic_vector(1 downto 0);
	
	--alterar entre modo de acerto derelógio ou normal
	signal s_modeClk : std_logic_vector(1 downto 0);
	
	--piscar se nos modos de acerto relógio
	signal s_blinkOutmin, s_blinkOuthours : std_logic;
	
	--Para alterar temperatura de cada modo
	signal s_newTempComfort, s_newTempEconomy, s_newTempFrezze : std_logic_vector(8 downto 0);
	
	signal s_tempOut : std_logic_vector(8 downto 0);
	
	--piscar enquanto altera temperatura
	signal s_onOff : std_logic;
	
	signal s_dataOut0 : std_logic_vector(3 downto 0);
   signal s_dataOut1 : std_logic_vector(3 downto 0);
	signal s_dataOut2 : std_logic_vector(3 downto 0);
	
	signal s_tempRef : std_logic_vector(8 downto 0);
	
	----Radiador ligado/desligado
	signal s_radiator : std_logic;
	
	---Temperatura Ambiente---
	signal s_tempAmb : std_logic_vector(8 downto 0);
	
begin
	
	 Debouncer0 : entity work.DebounceUnit
		  generic map(
				kHzClkFreq => 50_000,
				mSecMinInWidth => 100,
				inPolarity => '0',
				outPolarity => '1'
				)
			port map(
				refClk => CLOCK_50,
				dirtyIn => KEY(0),
				pulsedOut => s_key0
				);
				

	 Debouncer1 : entity work.DebounceUnit
		  generic map(
				kHzClkFreq => 50_000,
				mSecMinInWidth => 100,
				inPolarity => '0',
				outPolarity => '1'
				)
			port map(
				refClk => CLOCK_50,
				dirtyIn => KEY(1),
				pulsedOut => s_key1
				);
	
				
	 Debouncer2 : entity work.DebounceUnit
		  generic map(
				kHzClkFreq => 50_000,
				mSecMinInWidth => 100,
				inPolarity => '0',
				outPolarity => '0'
				)
			port map(
				refClk => CLOCK_50,
				dirtyIn => KEY(2),
				pulsedOut => s_key2
				);
				
	 Debouncer3 : entity work.DebounceUnit
		  generic map(
				kHzClkFreq => 50_000,
				mSecMinInWidth => 100,
				inPolarity => '0',
				outPolarity => '0'
				)
			port map(
				refClk => CLOCK_50,
				dirtyIn => KEY(3),
				pulsedOut => s_key3
				);

				
-----------------------------------------------------------------------------
    pulseGenerator : entity work.PulseGeneratorN
        port map(
            clkIn => CLOCK_50 ,
            modeOut1 => s_pulse1,
				modeOut2 => s_pulse2,
				modeOut3 => s_pulse3,
				modeOut4 => s_pulse4
				);
				
	 muxP : entity work.MuxPulser
		port map(
			SW => SW(1 downto 0),
			pulseIn1 => s_pulse1,
			pulseIn2 => s_pulse2,
			pulseIn3 => s_pulse3,
			pulseIn4 => s_pulse4,
			pulseOut => s_pulseOut); 
			
	modeClk : entity work.AcertModeClk
			port map(
				clk => CLOCK_50,
				changeMode => s_key2,
				mode => s_modeClk
				);
		  
	clock24 : entity work.Clock24h
          port map(
                clk => CLOCK_50,
                enable => s_pulseOut,
					 modeAcert => s_modeClk,
					 increment => s_key1,
					 decrement => s_key0,
                min => s_min,
                hours => s_hours);
					 
	blinkClk : entity work.BlinkClk
			port map(
				clk => CLOCK_50,
				modeIn => s_modeClk,
				blinkOutmin => s_blinkOutmin,
				blinkOuthours => s_blinkOuthours
				);
				
	 binaryBCDMin : entity work.BinaryToBCD
		  port map(
				dataIn => s_min,
				dataOut0 => s_MinDataOut0,
				dataOut1 => s_MinDataOut1);
				
	 binaryBCDHours : entity work.BinaryToBCD
		  port map(
				dataIn => s_hours,
				dataOut0 => s_HoursDataOut0,
				dataOut1 => s_HoursDataOut1);
---------------------------------------------Relogio Output-------------------------------
				
	Bin0 : entity work.Bin7SegDecoder
		port map(
				enable => s_blinkOutmin,
				binInput => s_MinDataOut0,
				decOut_n => HEX0);
	
	bin1 : entity work.Bin7SegDecoder
		port map(
				enable => s_blinkOutmin,
				binInput => s_MinDataOut1,
				decOut_n => HEX1);

	bin2 : entity work.Bin7SegDecoder
		port map(
				enable => s_blinkOuthours,
				binInput => s_HoursDataOut0,
				decOut_n => HEX2);

	bin3 : entity work.Bin7SegDecoder
		port map(
				enable => s_blinkOuthours,
				binInput => s_HoursDataOut1,
				decOut_n => HEX3);
-------------------------------------------------------------------
				
	romRead : entity work.ROM
		port map(
				address => s_hours,
				dataOut => s_RomDataOut);
				
----------------------------------------------------Alterar temperatura de cada modo---------------------
	tempMode : entity work.AcertMode
		port map(
            clk => CLOCK_50,
            changeMode => s_key3,
            mode => s_mode,
				ledMode => LEDG
        );
		  
	changeTemp : entity work.TempChange
		port map(
			clk => CLOCK_50,
			modeIn => s_mode,
			increment => s_key1,
			decrement => s_key0,
			newTempComfort => s_newTempComfort,
			newTempEconomy => s_newTempEconomy,
			newTempFrezze => s_newTempFrezze
			);
			
	muxShowModeTemp : entity work.MuxModeOut
		port map(
				clkIn => CLOCK_50,
            tempMode1 => s_newTempComfort,
            tempMode2 => s_newTempEconomy,
            tempMode3 => s_newTempFrezze,
				tempModeNormal => s_tempAmb,
            mode => s_mode,
            tempOut => s_tempOut,
				onOff => s_onOff
            );
				
	bit9BCD : entity work.Binary9BitToBCD
        port map(
            dataIn => s_tempOut,
            dataOut0 => s_dataOut0,
            dataOut1 => s_dataOut1,
            dataOut2 => s_dataOut2
            );
			
--------------------------------------temperatura Output---------------	
	decoder0 : entity work.Bin7SegDecoder
        port map(
				enable => s_onOff,
            binInput => s_dataOut0,
            decOut_n => HEX5
            );

   decoder1 : entity work.Bin7SegDecoder
        port map(
				enable => s_onOff,
            binInput => s_dataOut1,
            decOut_n => HEX6
            );

   decoder2 : entity work.Bin7SegDecoder
        port map(
				enable => s_onOff,
            binInput => s_dataOut2,
            decOut_n => HEX7
            );
		
------------------------------------------------------------------------------
	
	clockTempMode : entity work.MuxTempRef
		  port map(
				choice => s_RomDataOut,
				tempSol => s_newTempComfort,
				tempLua => s_newTempEconomy,
				tempGelo => s_newTempFrezze,
				tempRef => s_tempRef
				);
----------------------------------------Radiador----------------------------------------
	ambiente : entity work.AmbientSimulator
		port map(
			speed => s_pulseOut,
			enable => s_radiator,
			clk => CLOCK_50,
			tempAmb => s_tempAmb
			);
	
	
	histerese : entity work.Control_histerese
		port map(
			ref => s_tempRef,
			amb => s_tempAmb,
			clk => CLOCK_50,
			led => LEDR(0),
			radiatorOn_Off => s_radiator
			); 
	



end Structural;