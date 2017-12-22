library ieee;
use ieee.std_logic_1164.all;

entity combinational_circuit_tb is
end combinational_circuit_tb;

architecture tb of combinational_circuit_tb is
	component combinational_circuit is
		port
		(
			a : in std_logic;
			b : in std_logic;
			c : in std_logic;
			o : out std_logic
		);
	end component;	
	signal ina : std_logic;
	signal inb : std_logic;
	signal inc : std_logic;
	signal outo : std_logic;
begin
	mapping : combinational_circuit port map(a => ina, b => inb, c => inc, o => outo);
	process begin 
		ina <= '0';
		inb <= '0';
		inc <= '0';
		wait for 15 ns;
		inc <= '1';
		wait for 15 ns;
		inb <= '1';
		inc <= '0';
		wait for 15 ns;
		inc <= '1';
		wait for 15 ns;
		ina <= '1';
		inb <= '0';
		inc <= '0';
		wait for 15 ns;
		inc <= '1';
		wait for 15 ns;
		inb <= '1';
		inc <= '0';
		wait for 15 ns;
		inc <= '1';
		wait for 15 ns;
		wait;
	end process;
end tb;	

