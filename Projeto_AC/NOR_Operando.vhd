library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR_Operando is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           NOR_Operando1 : out  STD_LOGIC);
end NOR_Operando;

architecture Behavioral of NOR_Operando is

begin

	process(Operando1)
	begin
	
		NOR_Operando1 <= (Operando1(0) NOR Operando1(7));
	
	end process;

end Behavioral;

