LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_MUX_R IS
END Test_MUX_R;
 
ARCHITECTURE behavior OF Test_MUX_R IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_R
    PORT(
         SEL_Dados : IN  std_logic_vector(1 downto 0);
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Dados_IN : IN  std_logic_vector(7 downto 0);
         Resultado : IN  std_logic_vector(7 downto 0);
         Dados_R : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL_Dados : std_logic_vector(1 downto 0) := (others => '0');
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Resultado : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_R : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_R PORT MAP (
          SEL_Dados => SEL_Dados,
          Constante => Constante,
          Dados_M => Dados_M,
          Dados_IN => Dados_IN,
          Resultado => Resultado,
          Dados_R => Dados_R
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
