LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
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
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		Dados_IN <= "00001100"; Dados_M <= "00000001"; Resultado <= "00101001"; Constante <= "00001001"; 
		
		SEL_Dados <= "00"; wait for 10 ns;
		SEL_Dados <= "01"; wait for 10 ns;
		SEL_Dados <= "10"; wait for 10 ns;
		SEL_Dados <= "11"; wait for 10 ns;
		
      assert FALSE Report "Simulation Finished" severity FAILURE;
	
   end process;

END;
