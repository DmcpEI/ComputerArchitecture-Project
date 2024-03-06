LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_Instrucoes PORT MAP (
          Endereco => Endereco,
          opcode => opcode,
          Constante => Constante,
          SEL_R => SEL_R
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
