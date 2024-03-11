LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Periferico_de_Entrada IS
END Test_Periferico_de_Entrada;
 
ARCHITECTURE behavior OF Test_Periferico_de_Entrada IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Periferico_de_Entrada
    PORT(
         ESCR_P : IN  std_logic;
         PIN : IN  std_logic_vector(7 downto 0);
         Dados_IN : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_P : std_logic := '0';
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_IN : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Periferico_de_Entrada PORT MAP (
          ESCR_P => ESCR_P,
          PIN => PIN,
          Dados_IN => Dados_IN
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
	
   end process;

END;
