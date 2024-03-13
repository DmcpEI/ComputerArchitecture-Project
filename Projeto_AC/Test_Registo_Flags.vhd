LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Registo_Flags IS
END Test_Registo_Flags;
 
ARCHITECTURE behavior OF Test_Registo_Flags IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registo_Flags
    PORT(
         clk : IN  std_logic;
         E_FLAG : IN  std_logic_vector(4 downto 0);
         ESCR_R : IN  std_logic_vector(1 downto 0);
         SEL_FLAG : IN  std_logic_vector(2 downto 0);
         S_FLAG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal E_FLAG : std_logic_vector(4 downto 0) := (others => '0');
   signal ESCR_R : std_logic_vector(1 downto 0) := (others => '0');
   signal SEL_FLAG : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S_FLAG : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registo_Flags PORT MAP (
          clk => clk,
          E_FLAG => E_FLAG,
          ESCR_R => ESCR_R,
          SEL_FLAG => SEL_FLAG,
          S_FLAG => S_FLAG
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
		 -- Configurações iniciais: Define valores para ESCR_R, SEL_FLAG e E_FLAG, e aguarda um período de clock.
		 ESCR_R <= "00"; -- Define ESCR_R.
		 SEL_FLAG <= "000"; -- Define SEL_FLAG.
		 E_FLAG <= "00000"; -- Define E_FLAG.
		 wait for clk_period;

		 -- Continua com diferentes configurações: Altera ESCR_R, SEL_FLAG e E_FLAG, e aguarda um período de clock entre cada alteração.
		 ESCR_R <= "10"; SEL_FLAG <= "001"; E_FLAG <= "11111"; wait for clk_period;
		 ESCR_R <= "01"; SEL_FLAG <= "010"; E_FLAG <= "11011"; wait for clk_period;
		 ESCR_R <= "11"; SEL_FLAG <= "010"; E_FLAG <= "11011"; wait for clk_period;
		 ESCR_R <= "00"; SEL_FLAG <= "011"; E_FLAG <= "11011"; wait for clk_period;
		 ESCR_R <= "11"; SEL_FLAG <= "011"; E_FLAG <= "11011"; wait for clk_period;
		 ESCR_R <= "01"; SEL_FLAG <= "100"; E_FLAG <= "11011"; wait for clk_period;
		 ESCR_R <= "10"; SEL_FLAG <= "100"; E_FLAG <= "01011"; wait for clk_period;
	end process;

END;
