LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_ALU IS
END Test_ALU;
 
ARCHITECTURE behavior OF Test_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         SEL_ALU : IN  std_logic_vector(3 downto 0);
         Operando1 : IN  std_logic_vector(7 downto 0);
         Operando2 : IN  std_logic_vector(7 downto 0);
         E_FLAG : OUT  std_logic_vector(4 downto 0);
         Resultado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL_ALU : std_logic_vector(3 downto 0) := (others => '0');
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal E_FLAG : std_logic_vector(4 downto 0);
   signal Resultado : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          SEL_ALU => SEL_ALU,
          Operando1 => Operando1,
          Operando2 => Operando2,
          E_FLAG => E_FLAG,
          Resultado => Resultado
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
