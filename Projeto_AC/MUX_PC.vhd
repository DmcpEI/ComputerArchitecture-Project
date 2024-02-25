library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_PC is
    Port ( zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
           S_FLAG : in  STD_LOGIC;
           Operando1_7 : in  STD_LOGIC;
           Merda_do_NOR : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end MUX_PC;

architecture Behavioral of MUX_PC is

begin


end Behavioral;

