LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
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

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
