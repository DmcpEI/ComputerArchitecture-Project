LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Periferico_de_Entrada IS
END Test_Periferico_de_Entrada;
 
ARCHITECTURE behavior OF Test_Periferico_de_Entrada IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Periferico_de_Entrada
    PORT(
         ESCR_P : IN  std_logic;
         PIN : IN  std_logic_vector(7 downto 0);
         Dados_IN : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_P : std_logic := '0';
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_IN : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Periferico_de_Entrada PORT MAP (
          ESCR_P => ESCR_P,
          PIN => PIN,
          Dados_IN => Dados_IN
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		 -- Configuração inicial do periférico de entrada.
		 ESCR_P <= '0'; -- Ativa a escrita no periférico de entrada.
		 PIN <= "00000001"; -- Define o valor do pino de entrada.
		 wait for 10 ns; -- Espera para a estabilização.

		 -- Desativa a escrita e define um novo valor para o pino de entrada.
		 ESCR_P <= '1';
		 PIN <= "00000001";
		 wait for 10 ns;

		 -- Mantém a escrita desativada e altera o valor do pino de entrada.
		 ESCR_P <= '1';
		 PIN <= "00000010";
		 wait for 10 ns;

		 -- Mantém a escrita desativada e mantém o mesmo valor do pino de entrada.
		 ESCR_P <= '1';
		 PIN <= "00000010";
		 wait for 10 ns;

		 -- Ativa a escrita e mantém o mesmo valor do pino de entrada.
		 ESCR_P <= '0';
		 PIN <= "00000010";
		 wait for 10 ns;
	end process;

END;
