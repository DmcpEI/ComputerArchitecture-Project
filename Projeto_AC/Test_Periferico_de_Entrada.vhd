LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Periferico_de_Entrada PORT MAP (
          ESCR_P => ESCR_P,
          PIN => PIN,
          Dados_IN => Dados_IN
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
