library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registo_Flags is
    Port ( clk : in  STD_LOGIC;
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           S_FLAG : out  STD_LOGIC);
end Registo_Flags;

architecture Behavioral of Registo_Flags is

begin


end Behavioral;

