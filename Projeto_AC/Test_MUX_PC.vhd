LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_MUX_PC IS
END Test_MUX_PC;
 
ARCHITECTURE behavior OF Test_MUX_PC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_PC
    PORT(
         zero : IN  std_logic;
         um : IN  std_logic;
         S_FLAG : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         SEL_PC : IN  std_logic_vector(2 downto 0);
         NOR_Operando1 : IN  std_logic;
         ESCR_PC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal zero : std_logic := '0';
   signal um : std_logic := '0';
   signal S_FLAG : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_PC : std_logic_vector(2 downto 0) := (others => '0');
   signal NOR_Operando1 : std_logic := '0';

 	--Outputs
   signal ESCR_PC : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_PC PORT MAP (
          zero => zero,
          um => um,
          S_FLAG => S_FLAG,
          Operando1 => Operando1,
          SEL_PC => SEL_PC,
          NOR_Operando1 => NOR_Operando1,
          ESCR_PC => ESCR_PC
        );

   -- Stimulus process
   stim_proc: process
   begin
		 -- Configurações iniciais para os sinais de controle zero, um, S_FLAG, Operando1 e NOR_Operando1
		 zero <= '0'; um <= '1'; S_FLAG <= '0'; Operando1 <= "10000011"; NOR_Operando1 <= '0';
		 
		 -- Configuração sequencial dos sinais de controle SEL_PC para diferentes valores
		 SEL_PC <= "000"; wait for 100 ns;
		 SEL_PC <= "001"; wait for 100 ns;
		 SEL_PC <= "010"; wait for 100 ns;
		 SEL_PC <= "011"; wait for 100 ns;
		 SEL_PC <= "100"; wait for 100 ns;
		 
	end process;

END;
