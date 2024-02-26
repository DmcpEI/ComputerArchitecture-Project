library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_PC is
    Port ( zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
           S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end MUX_PC;

architecture Behavioral of MUX_PC is

begin

	process(zero, um, S_FLAG, Operando1, SEL_PC)
	begin
	
		case SEL_PC is
			when "000" => ESCR_PC <= zero;
			when "001" => ESCR_PC <= um;
			when "010" => ESCR_PC <= S_FLAG;
			when "011" => ESCR_PC <= Operando1(7);
			when "100" => ESCR_PC <= NOT (Operando1(7) OR Operando1(6) OR Operando1(5) OR Operando1(4) OR Operando1(3) OR Operando1(2) OR Operando1(1) OR Operando1(0));
			when others => ESCR_PC <= 'X';
		end case;
	
	end process;

end Behavioral;

