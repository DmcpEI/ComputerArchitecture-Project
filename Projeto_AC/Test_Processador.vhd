LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Processador IS
END Test_Processador;
 
ARCHITECTURE behavior OF Test_Processador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processador
    PORT(
         reset : IN  std_logic;
         opcode : IN  std_logic_vector(4 downto 0);
         SEL_R : IN  std_logic_vector(5 downto 0);
         Constante_IN : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         PIN : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         Constante_OUT : OUT  std_logic_vector(7 downto 0);
         Endereco : OUT  std_logic_vector(7 downto 0);
         WR : OUT  std_logic;
         Operando1 : OUT  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal opcode : std_logic_vector(4 downto 0) := (others => '0');
   signal SEL_R : std_logic_vector(5 downto 0) := (others => '0');
   signal Constante_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Constante_OUT : std_logic_vector(7 downto 0);
   signal Endereco : std_logic_vector(7 downto 0);
   signal WR : std_logic;
   signal Operando1 : std_logic_vector(7 downto 0);
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processador PORT MAP (
          reset => reset,
          opcode => opcode,
          SEL_R => SEL_R,
          Constante_IN => Constante_IN,
          Dados_M => Dados_M,
          PIN => PIN,
          clk => clk,
          Constante_OUT => Constante_OUT,
          Endereco => Endereco,
          WR => WR,
          Operando1 => Operando1,
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
		reset <= '0'; PIN <= "00010001"; Dados_M <= "00010101";
		
		-- LDP R0
		opcode <= "00000"; SEL_R <= "XXX000"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JZ R0, 24
		opcode <= "10100"; SEL_R <= "XXX000"; Constante_IN <= "00011000"; wait for clk_period;
		-- ST [5], R0
		opcode <= "00100"; SEL_R <= "XXX000"; Constante_IN <= "00000101"; wait for clk_period;
		-- LD R0, 1
		opcode <= "00010"; SEL_R <= "XXX000"; Constante_IN <= "00000001"; wait for clk_period;
		-- LD R1, -1
		opcode <= "00010"; SEL_R <= "XXX001"; Constante_IN <= "11111110"; wait for clk_period;
		-- LD R2, 20
		opcode <= "00010"; SEL_R <= "XXX010"; Constante_IN <= "00010100"; wait for clk_period;
		-- LD R3, 6
		opcode <= "00010"; SEL_R <= "XXX011"; Constante_IN <= "00000110"; wait for clk_period;
		-- LD R7, [5]
		opcode <= "00011"; SEL_R <= "XXX111"; Constante_IN <= "00000101"; wait for clk_period;
		-- CMP R7, R2
		opcode <= "01101"; SEL_R <= "010111"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JGE 19
		opcode <= "10001"; SEL_R <= "XXXXXX"; Constante_IN <= "00010011"; wait for clk_period;
		-- XOR R2, R1
		opcode <= "01011"; SEL_R <= "001010"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- ADD R2, R0
		opcode <= "00101"; SEL_R <= "000010"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- CMP R7, R2
		opcode <= "01101"; SEL_R <= "010111"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JL 22
		opcode <= "01110"; SEL_R <= "XXXXXX"; Constante_IN <= "00010110"; wait for clk_period;
		-- LD R6, [5]
		opcode <= "00011"; SEL_R <= "XXX110"; Constante_IN <= "00000101"; wait for clk_period;
		-- ADD R7, R6
		opcode <= "00101"; SEL_R <= "110111"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- SUB R3, R0
		opcode <= "00110"; SEL_R <= "000011"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JN R3, 25
		opcode <= "10101"; SEL_R <= "XXX011"; Constante_IN <= "00011001"; wait for clk_period;
		-- JMP 15
		opcode <= "10011"; SEL_R <= "XXXXXX"; Constante_IN <= "00001111"; wait for clk_period;
		-- LD R4, -15
		opcode <= "00010"; SEL_R <= "XXX100"; Constante_IN <= "11110000"; wait for clk_period;
		-- ADD R7, R4
		opcode <= "00101"; SEL_R <= "100111"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JMP 25
		opcode <= "10011"; SEL_R <= "XXXXXX"; Constante_IN <= "00011001"; wait for clk_period;
		-- AND R7, R0
		opcode <= "00111"; SEL_R <= "000111"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JMP 25
		opcode <= "10011"; SEL_R <= "XXXXXX"; Constante_IN <= "00011001"; wait for clk_period;
		-- LD R7, -1
		opcode <= "00010"; SEL_R <= "XXX111"; Constante_IN <= "11111110"; wait for clk_period;
		-- STP R7
		opcode <= "00001"; SEL_R <= "XXX111"; Constante_IN <= "XXXXXXXX"; wait for clk_period;
		-- JMP 26
		opcode <= "10011"; SEL_R <= "XXXXXX"; Constante_IN <= "00011010"; wait for clk_period;
		
		assert FALSE Report "Simulation Finished" severity FAILURE;
      
   end process;

END;
