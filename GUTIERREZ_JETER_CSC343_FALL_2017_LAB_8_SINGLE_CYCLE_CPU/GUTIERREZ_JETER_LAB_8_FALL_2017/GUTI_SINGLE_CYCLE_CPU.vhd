LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY GUTI_SINGLE_CYCLE_CPU IS
    PORT(
        UPPER_HALF,INPUT_WE,CLOCKFORSAVING,CLOCKFORRUNNING,RAMWRITE,PERFORMENABLE,ZORR,INSTRUCTIONSTORECLOCK,CLOCKFORREGISTGERS:STD_LOGIC;
		  VALUES: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		  S: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        SRAM_ADDR: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
        SRAM_DQ: INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        SRAM_CE_N,SRAM_OE_N,SRAM_WE_N,SRAM_UB_N,SRAM_LB_N: OUT STD_LOGIC;
		  FIRSTHEX,SECONDHEX,THIRDHEX,FOURTHHEX,FIFTHHEX,SIXHEX,SEVENHEX,EIGHTHEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END GUTI_SINGLE_CYCLE_CPU;
ARCHITECTURE ARCH OF GUTI_SINGLE_CYCLE_CPU IS
    SIGNAL INPUT_TEMP: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL WENABLE: STD_LOGIC;
    SIGNAL LAST4DISPLAY,DISPLAY,FIRST4DISPLAY: STD_LOGIC_VECTOR(15 DOWNTO 0);
	 SIGNAL DATASTOREDFORRAM,INSTRUCTIONCODE,DQA,DQB,RESULT:STD_LOGIC_VECTOR(31 DOWNTO 0);
	 SIGNAL DATA:STD_LOGIC_VECTOR(15 DOWNTO 0);
	 SIGNAL LOWERHALFADDRESS,UPPERHALFADDRESS,UPPERHALFTEMP1,LOWERHALFTEMP1: STD_LOGIC_VECTOR (19 DOWNTO 0);
	 SIGNAL PROGRAMCOUNTER: STD_LOGIC_VECTOR(19 DOWNTO 0) :="00000000000000000000";
	 SIGNAL R1HOLD,R2HOLD,R3HOLD,ADD1TEMP,ADD2TEMP,ADDWTEMP:STD_LOGIC_VECTOR(4 DOWNTO 0);
	 
COMPONENT GUTI_HEX IS
	PORT(
		BINARY : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := X"0";
		HEXADECIMAL : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000000"
	);
END COMPONENT;

COMPONENT GUTI_ALU IS 
	PORT(STORING_CLOCK,
		  RUNNING_CLOCK,
		  STORE_SIGNAL,SAVINGEVALUATING :IN STD_LOGIC;
		REGISTER_ONE_ADDRESS,REGISTER_TWO_ADDRESS,COMPUTATION_RESULT:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	COMPLETEINSTRUCTION,RAMTEMPORARY_DATA: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		DATA_IN_REGISTER_ONE,DATA_IN_REGISTER_TWO,COMPLETERESULT:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
BEGIN
	 WENABLE<=INPUT_WE;
    SRAM_WE_N <= NOT WENABLE;
    SRAM_CE_N <= '0';
    SRAM_OE_N <= '0';
    SRAM_UB_N <= '0';
    SRAM_LB_N <= '0';
	 LAST4DISPLAY<=DISPLAY WHEN ZORR='0' ELSE RESULT(15 DOWNTO 0);

	UPPERHALFADDRESS<=(LOWERHALFADDRESS+"00000000000000000001");
	PROCESS(INSTRUCTIONSTORECLOCK)
	BEGIN
	IF (INSTRUCTIONSTORECLOCK='0') THEN
	IF (UPPER_HALF='0')THEN
	UPPERHALFTEMP1<= LOWERHALFADDRESS;
	ELSE 
	LOWERHALFTEMP1<=UPPERHALFADDRESS;
	END IF;
	END IF;
	END PROCESS;
	PROCESS(CLOCKFORRUNNING)
	BEGIN
	IF(VALUES(1)='0') THEN
	FIRST4DISPLAY<=PROGRAMCOUNTER(15 DOWNTO 0)+"0000000000000100";
	ELSE 
	FIRST4DISPLAY<=PROGRAMCOUNTER(15 DOWNTO 0);
	END IF;
	
	END PROCESS;
	
	SRAM_ADDR<=UPPERHALFTEMP1 WHEN UPPER_HALF='0' ELSE LOWERHALFTEMP1;
	SRAM_DQ<= DATA WHEN WENABLE='1' ELSE (OTHERS=>'Z'); 
	DISPLAY(15 DOWNTO 0)<="0000000000000000"WHEN VALUES(0)='0' ELSE RESULT(15 DOWNTO 0); 
	INSTRUCTIONCODE(15 DOWNTO 0)<=SRAM_DQ WHEN UPPER_HALF='0' ELSE DATA(15 DOWNTO 0);
	INSTRUCTIONCODE(31 DOWNTO 16)<=SRAM_DQ WHEN UPPER_HALF='1' ELSE DATA(15 DOWNTO 0);
RUNNING:GUTI_ALU PORT MAP (NOT CLOCKFORSAVING,
                                  NOT CLOCKFORRUNNING,
                                  RAMWRITE,
                                  PERFORMENABLE,
                                  ADD1TEMP,
                                  ADD2TEMP,
											 ADDWTEMP,
											 INSTRUCTIONCODE,
                                  DATASTOREDFORRAM,
                                  DQA,
                                  DQB,
                                  RESULT
	);
	
	PROCESS(S)
BEGIN
CASE S IS
      WHEN"0000"=>LOWERHALFADDRESS(7 DOWNTO 0)<=VALUES+"00000100";
      WHEN"0001"=>LOWERHALFADDRESS(15 DOWNTO 8)<=VALUES;
      WHEN"0010"=>LOWERHALFADDRESS(19 DOWNTO 16)<=VALUES(3 DOWNTO 0);
      
      WHEN"0011"=>DATA(7 DOWNTO 0)<=VALUES;              
      WHEN"0100"=>DATA(15 DOWNTO 8)<=VALUES;
		
      WHEN"0101"=>R1HOLD<=VALUES(4 DOWNTO 0);
      WHEN"0110"=>R2HOLD<=VALUES(4 DOWNTO 0);
      WHEN"0111"=>R3HOLD<=VALUES(4 DOWNTO 0);
		
      WHEN"1000"=>DATASTOREDFORRAM(7 DOWNTO 0)<=VALUES;
      WHEN"1001"=>DATASTOREDFORRAM(15 DOWNTO 8)<=VALUES;
      WHEN"1010"=>DATASTOREDFORRAM(23 DOWNTO 16)<=VALUES;
      WHEN"1011"=>DATASTOREDFORRAM(31 DOWNTO 24)<=VALUES;
      WHEN OTHERS=>NULL;
    END CASE;
END PROCESS;
	
D0: GUTI_HEX PORT MAP (LAST4DISPLAY(3 DOWNTO 0), FIRSTHEX);
D1: GUTI_HEX PORT MAP (LAST4DISPLAY(7 DOWNTO 4), SECONDHEX);
D2: GUTI_HEX PORT MAP (LAST4DISPLAY(11 DOWNTO 8), THIRDHEX);
D3: GUTI_HEX PORT MAP (LAST4DISPLAY(15 DOWNTO 12), FOURTHHEX);
D4: GUTI_HEX PORT MAP (FIRST4DISPLAY(3 DOWNTO 0), FIFTHHEX);
D5: GUTI_HEX PORT MAP (FIRST4DISPLAY(7 DOWNTO 4), SIXHEX);
D6: GUTI_HEX PORT MAP (FIRST4DISPLAY(11 DOWNTO 8), SEVENHEX);
D7: GUTI_HEX PORT MAP (FIRST4DISPLAY(15 DOWNTO 12), EIGHTHEX);

END ARCH;


