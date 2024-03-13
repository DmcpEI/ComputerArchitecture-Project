LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
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
		 -- Configuração inicial: Ativa a escrita (WR = '1'), define a constante e o operando 1, e aguarda um período de clock.
		 WR <= '1'; -- Ativa a escrita.
		 Constante <= "00001111"; -- Define a constante.
		 Operando1 <= "00010000"; -- Define o operando 1.
		 wait for clk_period;

		 -- Continua a escrita: Ativa a escrita, define a constante e o operando 1 novamente, e aguarda um período de clock.
		 WR <= '1'; -- Ativa a escrita.
		 Constante <= "00000001"; -- Redefine a constante.
		 Operando1 <= "00000100"; -- Redefine o operando 1.
		 wait for clk_period;

		 -- Finaliza a escrita: Desativa a escrita (WR = '0'), mantém o operando 1 e aguarda 10 períodos de clock.
		 WR <= '0'; -- Desativa a escrita.
		 Operando1 <= "00010000"; -- Mantém o operando 1.
		 wait for clk_period * 10;

		 -- Continua sem escrita: Mantém a escrita desativada (WR = '0'), mantém o operando 1 e aguarda mais 10 períodos de clock.
		 WR <= '0'; -- Mantém a escrita desativada.
		 Operando1 <= "00000100"; -- Mantém o operando 1.
		 wait for clk_period * 10;
	end process;

END;
