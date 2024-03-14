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
	
		-- PIN a -128
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "10000000"; wait for clk_period*60; -- -128

		-- PIN a -21 e menos
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11101011"; wait for clk_period*60; -- -21
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11101010"; wait for clk_period*60; -- -22
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11101001"; wait for clk_period*60; -- -23
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11101000"; wait for clk_period*60; -- -24
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11011000"; wait for clk_period*60; -- -40
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11000100"; wait for clk_period*60; -- -60

		-- PIN no mínimo sem overflow (-16) e quando dá overflow
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11110000"; wait for clk_period*60; -- -16
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11101111"; wait for clk_period*60; -- -17
		-- PIN de -10 a -1
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11110110"; wait for clk_period*60; -- -10 
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11111000"; wait for clk_period*60; -- -8 
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11111010"; wait for clk_period*60; -- -6 
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11111110"; wait for clk_period*60; -- -2       
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "11111111"; wait for clk_period*60; -- -1

		-- PIN a 0
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00000000"; wait for clk_period*60;

		-- PIN de 1 a 10
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00000001"; wait for clk_period*60; -- 1
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00000010"; wait for clk_period*60; -- 2
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00000110"; wait for clk_period*60; -- 6
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00001000"; wait for clk_period*60; -- 8
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00001010"; wait for clk_period*60; -- 10
		-- PIN no máximo sem overflow (15) e quando dá overflow
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00001111"; wait for clk_period*60; -- 15
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00010000"; wait for clk_period*60; -- 16
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00010001"; wait for clk_period*60; -- 17

		-- PIN a 20 e mais
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00010100"; wait for clk_period*60; -- 20
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00010101"; wait for clk_period*60; -- 21
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00010110"; wait for clk_period*60; -- 22
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00010111"; wait for clk_period*60; -- 23
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00101000"; wait for clk_period*60; -- 40
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "00111100"; wait for clk_period*60; -- 60

		-- PIN a 127
		reset <= '1'; wait for clk_period*10;
		reset <= '0'; PIN <= "01111111"; wait for clk_period*60; -- 127
      
		assert false report "Todos os testes foram executados." severity failure;
   end process;

END;