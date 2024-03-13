
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
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
		 -- Configuração inicial: desativa a escrita e define o valor do operando de saída (Operando1).
		 ESCR_P <= '0'; -- Desativa a escrita.
		 Operando1 <= "01000001"; -- Define o valor do operando de saída.
		 wait for clk_period;

		 -- Inicia a escrita ativando o sinal ESCR_P e alterando o valor do operando de saída.
		 ESCR_P <= '1'; -- Ativa a escrita.
		 Operando1 <= "11000001"; -- Altera o valor do operando de saída.
		 wait for clk_period;

		 -- Continua a escrita mantendo ESCR_P ativado e alterando o valor do operando de saída.
		 ESCR_P <= '1'; -- Mantém a escrita ativada.
		 Operando1 <= "00000010"; -- Altera o valor do operando de saída.
		 wait for clk_period;

		 -- Mantém a escrita ativada e altera o valor do operando de saída.
		 ESCR_P <= '1'; -- Mantém a escrita ativada.
		 Operando1 <= "00110010"; -- Altera o valor do operando de saída.
		 wait for clk_period;

		 -- Finaliza a escrita desativando o sinal ESCR_P e alterando o valor do operando de saída.
		 ESCR_P <= '0'; -- Desativa a escrita.
		 Operando1 <= "01111010"; -- Altera o valor do operando de saída.
		 wait for clk_period;
	end process;

END;
