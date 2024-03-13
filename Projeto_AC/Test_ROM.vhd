LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_ROM IS
END Test_ROM;
 
ARCHITECTURE behavior OF Test_ROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_de_Descodificacao
    PORT(
         opcode : IN  std_logic_vector(4 downto 0);
         WR : OUT  std_logic;
         ESCR_P : OUT  std_logic;
         SEL_Dados : OUT  std_logic_vector(1 downto 0);
         ESCR_R : OUT  std_logic_vector(1 downto 0);
         SEL_ALU : OUT  std_logic_vector(3 downto 0);
         SEL_FLAG : OUT  std_logic_vector(2 downto 0);
         SEL_PC : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal opcode : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal WR : std_logic;
   signal ESCR_P : std_logic;
   signal SEL_Dados : std_logic_vector(1 downto 0);
   signal ESCR_R : std_logic_vector(1 downto 0);
   signal SEL_ALU : std_logic_vector(3 downto 0);
   signal SEL_FLAG : std_logic_vector(2 downto 0);
   signal SEL_PC : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_de_Descodificacao PORT MAP (
          opcode => opcode,
          WR => WR,
          ESCR_P => ESCR_P,
          SEL_Dados => SEL_Dados,
          ESCR_R => ESCR_R,
          SEL_ALU => SEL_ALU,
          SEL_FLAG => SEL_FLAG,
          SEL_PC => SEL_PC
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		--Periféricos 
			-- LDP Ri
			opcode <= "00000"; wait for 10 ns;
			-- STP Ri
			opcode <= "00001"; wait for 10 ns;
			
		--Leitura e Escrita
			-- LD Ri, constante
			opcode <= "00010"; wait for 10 ns;
			-- LD Ri, [constante]
			opcode <= "00011"; wait for 10 ns;
			-- ST [constante], Ri
			opcode <= "00100"; wait for 10 ns;
			
		--Lógica e Aritmética
			-- ADD Ri, Rj
			opcode <= "00101"; wait for 10 ns;
			-- SUB Ri, Rj
			opcode <= "00110"; wait for 10 ns;
			-- AND Ri, Rj
			opcode <= "00111"; wait for 10 ns;
			-- NAND Ri, Rj
			opcode <= "01000"; wait for 10 ns;
			-- OR Ri, Rj
			opcode <= "01001"; wait for 10 ns;
			-- NOR Ri, Rj
			opcode <= "01010"; wait for 10 ns;
			-- XOR Ri, Rj
			opcode <= "01011"; wait for 10 ns;
			-- XNOR Ri, Rj
			opcode <= "01100"; wait for 10 ns;
			-- CMP Ri, Rj
			opcode <= "01101"; wait for 10 ns;
			
		--Salto
			-- JL constante
			opcode <= "01110"; wait for 10 ns;
			-- JLE constante
			opcode <= "01111"; wait for 10 ns;
			-- JE constante
			opcode <= "10000"; wait for 10 ns;
			-- JGE constante
			opcode <= "10001"; wait for 10 ns;
			-- JG constante
			opcode <= "10010"; wait for 10 ns;
			-- JMP constante
			opcode <= "10011"; wait for 10 ns;
			-- JZ Ri, constante
			opcode <= "10100"; wait for 10 ns;
			-- JN, Ri, constante
			opcode <= "10101"; wait for 10 ns;

   end process;

END;
