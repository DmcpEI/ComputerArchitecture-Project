library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR_Operando is
    Port ( O0 : in  STD_LOGIC;
			  O1 : in  STD_LOGIC;
			  O2 : in  STD_LOGIC;
			  O3 : in  STD_LOGIC;
			  O4 : in  STD_LOGIC;
			  O5 : in  STD_LOGIC;
			  O6 : in  STD_LOGIC;
			  O7 : in  STD_LOGIC;
           NOR_Operando1 : out  STD_LOGIC);
end NOR_Operando;

architecture DataFlow of NOR_Operando is

begin

	process(O0, O1, O2, O3, O4, O5, O6, O7)
	begin
	
		NOR_Operando1 <= NOT(O0 OR O1 OR O2 OR O3 OR O4 OR O5 OR O6 OR O7);
	
	end process;

end DataFlow;

