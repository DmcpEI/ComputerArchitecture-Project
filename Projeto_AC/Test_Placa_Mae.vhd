LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Placa_Mae IS
END Test_Placa_Mae;
 
ARCHITECTURE behavior OF Test_Placa_Mae IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Placa_Mae
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         PIN : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Placa_Mae PORT MAP (
          reset => reset,
          clk => clk,
          PIN => PIN,
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
	
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111111"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111110"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111101"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111100"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111011"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111010"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111001"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11111000"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11110111"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "11110110"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "10000000"; wait for clk_period*44; 
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000000"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000001"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000010"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000011"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000100"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000101"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000110"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000111"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00001000"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00001001"; wait for clk_period*44;
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00001010"; wait for clk_period*44;
      
		assert false report "Todos os testes foram executados." severity failure;
   end process;

END;
