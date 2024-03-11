LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Memoria_de_Instrucoes IS
END Test_Memoria_de_Instrucoes;
 
ARCHITECTURE behavior OF Test_Memoria_de_Instrucoes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_de_Instrucoes
    PORT(
         Endereco : IN  std_logic_vector(7 downto 0);
         opcode : OUT  std_logic_vector(4 downto 0);
         Constante : OUT  std_logic_vector(7 downto 0);
         SEL_R : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Endereco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal opcode : std_logic_vector(4 downto 0);
   signal Constante : std_logic_vector(7 downto 0);
   signal SEL_R : std_logic_vector(5 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_Instrucoes PORT MAP (
          Endereco => Endereco,
          opcode => opcode,
          Constante => Constante,
          SEL_R => SEL_R
        );
 

   -- Stimulus process
   stim_proc: process
   begin		

   end process;

END;
