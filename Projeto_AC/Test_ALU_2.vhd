--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:35:28 03/11/2024
-- Design Name:   
-- Module Name:   /home/ise/Projects/Projeto_AC/Test_ALU_2.vhd
-- Project Name:  Projeto_AC
-- Target Device:  
-- Tool versions:  
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_ALU_2 IS
END Test_ALU_2;
 
ARCHITECTURE behavior OF Test_ALU_2 IS 
 
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
      
		SEL_ALU <= "0000"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0001"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0010"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0011"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0100"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0101"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0110"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "0111"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "1000"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		
		assert FALSE Report "Simulation Finished" severity FAILURE;
		
   end process;

END;
