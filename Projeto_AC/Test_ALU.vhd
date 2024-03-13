LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_ALU IS
END Test_ALU;
 
ARCHITECTURE behavior OF Test_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         SEL_ALU : IN  std_logic_vector(3 downto 0);
         Operando1 : IN  std_logic_vector(7 downto 0);
         Operando2 : IN  std_logic_vector(7 downto 0);
         E_FLAG : OUT  std_logic_vector(4 downto 0);
         Resultado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL_ALU : std_logic_vector(3 downto 0) := (others => '0');
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal E_FLAG : std_logic_vector(4 downto 0);
   signal Resultado : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          SEL_ALU => SEL_ALU,
          Operando1 => Operando1,
          Operando2 => Operando2,
          E_FLAG => E_FLAG,
          Resultado => Resultado
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		-- Configurações iniciais para os sinais de controle SEL_ALU, Operando1 e Operando2
		SEL_ALU <= "0000"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0001"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0010"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0011"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0100"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0101"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0110"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "0111"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;
		SEL_ALU <= "1000"; Operando1 <= "00000111"; Operando2 <= "00000111"; wait for 10 ns;

		-- Este assert é usado para garantir que a simulação não chegue ao fim, indicando que ela foi concluída
		assert FALSE Report "Simulation Finished" severity FAILURE;
	end process;

END;
