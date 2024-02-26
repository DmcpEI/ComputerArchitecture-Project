library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           E_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

	process(SEL_ALU, Operando1, Operando2)
	begin
	
		case SEL_ALU is
			when "0000" => Resultado <= Operando1 + Operando2;
			when "0001" => Resultado <= Operando1 - Operando2;
			when "0010" => Resultado <= Operando1 and Operando2;
			when "0011" => Resultado <= Operando1 nand Operando2;
			when "0100" => Resultado <= Operando1 or Operando2;
			when "0101" => Resultado <= Operando1 nor Operando2;
			when "0110" => Resultado <= Operando1 xor Operando2;
			when "0111" => Resultado <= Operando1 xnor Operando2;
			when "1000" =>
				E_FLAG <= (others => '0');
            
            if Operando1 < Operando2 then
                E_FLAG(0) <= '1';
            end if;
            if Operando1 <= Operando2 then
                E_FLAG(1) <= '1';
            end if;
            if Operando1 = Operando2 then
                E_FLAG(2) <= '1';
            end if;
            if Operando1 >= Operando2 then
                E_FLAG(3) <= '1';
            end if;
            if Operando1 > Operando2 then
                E_FLAG(4) <= '1';
            end if;

			when others => Resultado <= (others => 'X'); E_FLAG <= (others => 'X');
		end case;
	
	end process;

end Behavioral;

