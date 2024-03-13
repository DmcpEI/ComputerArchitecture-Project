LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Test_Banco_de_Registos IS
END Test_Banco_de_Registos;
 
ARCHITECTURE behavior OF Test_Banco_de_Registos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Banco_de_Registos
    PORT(
         ESCR_R : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         SEL_R : IN  std_logic_vector(5 downto 0);
         Dados_R : IN  std_logic_vector(7 downto 0);
         Operando1 : OUT  std_logic_vector(7 downto 0);
         Operando2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_R : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal SEL_R : std_logic_vector(5 downto 0) := (others => '0');
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Operando1 : std_logic_vector(7 downto 0);
   signal Operando2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Banco_de_Registos PORT MAP (
          ESCR_R => ESCR_R,
          clk => clk,
          SEL_R => SEL_R,
          Dados_R => Dados_R,
          Operando1 => Operando1,
          Operando2 => Operando2
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
	
	-- Escrever dados em todos os registradores quando ESCR_R é '11'
    ESCR_R <= "11";
    SEL_R <= "000000";  -- Seleciona R0
    Dados_R <= "01010101";  -- Dados a serem escritos
    wait for clk_period;
    
    SEL_R <= "000001";  -- Seleciona R1
    Dados_R <= "11001100";  -- Dados a serem escritos
    wait for clk_period;
    
    SEL_R <= "000010";  -- Seleciona R2
    Dados_R <= "00110011";  -- Dados a serem escritos
    wait for clk_period;
	 
    
    -- Ler o valor de todos os registradores quando ESCR_R é '00'
    ESCR_R <= "00";  -- Certifique-se de que ESCR_R está desativado para leitura
    SEL_R <= "000000";  -- Seleciona R0
    wait for clk_period;
    
    SEL_R <= "000001";  -- Seleciona R1
    wait for clk_period;
    
    SEL_R <= "000010";  -- Seleciona R2
    wait for clk_period;
	 
    
    -- Tentativa de escrita em um registrador não selecionado
    ESCR_R <= "11";  -- Habilitar a escrita
    SEL_R <= "000000";  -- Seleciona R0
    Dados_R <= "01010101";  -- Dados a serem escritos
    wait for clk_period;
    
    SEL_R <= "000010";  -- Seleciona R2, mas não deve ocorrer escrita
    Dados_R <= "11110000";  -- Dados a serem escritos, mas não deve ser registrado
    wait for clk_period;
    
	 
    -- Verificar se 'X' é atribuído corretamente quando SEL_R está fora do intervalo válido
    SEL_R <= "111111";  -- Valor inválido
    wait for clk_period;
	
   end process;

END;
