
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Periferico_de_Saida IS
END Test_Periferico_de_Saida;
 
ARCHITECTURE behavior OF Test_Periferico_de_Saida IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Periferico_de_Saida
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         ESCR_P : IN  std_logic;
         clk : IN  std_logic;
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ESCR_P : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Periferico_de_Saida PORT MAP (
          Operando1 => Operando1,
          ESCR_P => ESCR_P,
          clk => clk,
          POUT => POUT
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
