LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_RAM IS
END Test_RAM;
 
ARCHITECTURE behavior OF Test_RAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_de_Dados
    PORT(
         Constante : IN  std_logic_vector(7 downto 0);
         WR : IN  std_logic;
         clk : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         Dados_M : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal WR : std_logic := '0';
   signal clk : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_Dados PORT MAP (
          Constante => Constante,
          WR => WR,
          clk => clk,
          Operando1 => Operando1,
          Dados_M => Dados_M
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
