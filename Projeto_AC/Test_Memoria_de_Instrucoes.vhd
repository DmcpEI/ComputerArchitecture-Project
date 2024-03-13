LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Memoria_de_Instrucoes IS
END Test_Memoria_de_Instrucoes;
 
ARCHITECTURE behavior OF Test_Memoria_de_Instrucoes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_de_Instrucoes
    PORT(
         Endereco : IN  std_logic_vector(7 downto 0);
         opcode : OUT  std_logic_vector(4 downto 0);
         Constante : OUT  std_logic_vector(7 downto 0);
         SEL_R : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Endereco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal opcode : std_logic_vector(4 downto 0);
   signal Constante : std_logic_vector(7 downto 0);
   signal SEL_R : std_logic_vector(5 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_Instrucoes PORT MAP (
          Endereco => Endereco,
          opcode => opcode,
          Constante => Constante,
          SEL_R => SEL_R
        );
 

   -- Stimulus process
   stim_proc: process
   begin		

			-- LDP R0
			Endereco <= "00000000"; wait for 10 ns;
			-- JZ R0, 24
			Endereco <= "00000001"; wait for 10 ns;
			-- ST [5], R0
			Endereco <= "00000010"; wait for 10 ns;
			-- LD R0, 1
			Endereco <= "00000011"; wait for 10 ns;
			-- LD R1, -1
			Endereco <= "00000100"; wait for 10 ns;
			-- LD R2, 20
			Endereco <= "00000101"; wait for 10 ns;
			-- LD R3, 6
			Endereco <= "00000110"; wait for 10 ns;
			-- LD R7, [5]
			Endereco <= "00000111"; wait for 10 ns;
			-- CMP R7, R2
			Endereco <= "00001000"; wait for 10 ns;
			-- JGE 19
			Endereco <= "00001001"; wait for 10 ns;
			-- XOR R2, R1
			Endereco <= "00001010"; wait for 10 ns;
			-- ADD R2, R0
			Endereco <= "00001011"; wait for 10 ns;
			-- CMP R7, R2
			Endereco <= "00001100"; wait for 10 ns;
			-- JL 22
			Endereco <= "00001101"; wait for 10 ns;
			-- LD R6, [5]
			Endereco <= "00001110"; wait for 10 ns;
			-- ADD R7, R6
			Endereco <= "00001111"; wait for 10 ns;
			-- SUB R3, R0
			Endereco <= "00010000"; wait for 10 ns;
			-- JN R3, 25
			Endereco <= "00010001"; wait for 10 ns;
			-- JMP 15
			Endereco <= "00010010"; wait for 10 ns;
			-- LD R4, -15
			Endereco <= "00010011"; wait for 10 ns;
			-- ADD R7, R4
			Endereco <= "00010100"; wait for 10 ns;
			-- JMP 25
			Endereco <= "00010101"; wait for 10 ns;
			-- AND R7, R0
			Endereco <= "00010110"; wait for 10 ns;
			-- JMP 25
			Endereco <= "00010111"; wait for 10 ns;
			-- LD R7, -1
			Endereco <= "00011000"; wait for 10 ns;
			-- STP R7
			Endereco <= "00011001"; wait for 10 ns;
			-- JMP 26
			Endereco <= "00011010"; wait for 10 ns;

   end process;

END;
