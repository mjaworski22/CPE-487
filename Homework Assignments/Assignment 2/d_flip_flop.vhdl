--This is the example that I will build a test bench for
--This code was taken from https://allaboutfpga.com/vhdl-code-flipflop-d-t-jk-sr/

library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity D_FF is
PORT( D,CLOCK: in std_logic;
Q: out std_logic);
end D_FF;
 
architecture behavioral of D_FF is
begin
process(CLOCK)
begin
if(CLOCK='1' and CLOCK'EVENT) then
Q <= D;
end if;
end process;
end behavioral;
