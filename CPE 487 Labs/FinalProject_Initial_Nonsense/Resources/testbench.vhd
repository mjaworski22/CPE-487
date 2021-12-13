LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use std.textio.all;

ENTITY file_io_test IS 
END file_io_test;

ARCHITECTURE behavior OF file_io_test IS
use work.io.all;
    signal clk:         std_logic := '0';
    signal Data: std_logic_vector(7 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns;

    BEGIN
      -- Instantiate the Unit Under Test (UUT)
    UUT:
     entity work.file_io(behav)
    port map (
           clk => clk,
        Data => Data
          );

    -- Clock process definitions( clock with 50% duty cycle is generated here.
     clk_process :process
       begin
         clk <= '1';
         wait for clk_period/2;  --for 5 ns signal is '1'.
          clk <= '0';
         wait for clk_period/2;  --for next 5 ns signal is '0'.

     end process;
    end behavior;