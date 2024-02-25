library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           E_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin


end Behavioral;

