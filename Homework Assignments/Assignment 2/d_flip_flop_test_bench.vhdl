--author: Matthew Jaworski
--test bench for d_flip_flop

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_flip_flop_test_bench IS
END d_flip_flop_test_bench;

ARCHITECTURE behavior OF d_flip_flop_test_bench IS 

	COMPONENT d_flip_flop
	PORT(
		D: IN std_logic;
		Q: OUT std_logic;
		CLOCK: IN std_logic
		);
		
	END COMPONENT;
	
	
	signal D: std_logic := '0';
	signal Q: std_logic := '0';
	signal CLOCK: std_logic := '0';
	
	constant clock_period : time := 100 ns;
	
BEGIN

	uut: d_flip_flop PORT MAP(
		D => D,
		Q => Q,
		CLOCK => CLOCK
		);
		
	clock_process : process
	begin
	CLOCK <= '0';
	wait for clock_period;
	CLOCK <= '1';
	wait for clock_period*2;
	
	if NOW > 400 ns then
	wait;
	end if;
	end process;
	
	
	d_process: process
	begin
	
	D <= '0';
	wait for 100 ns;
	D <= '1';
	wait for 200 ns;
	D <= '0';
	wait for 300 ns;
	D <= '1';
	wait for 400 ns;
	
	
	wait;
	end process;
		
END;