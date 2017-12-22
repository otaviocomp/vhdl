library ieee;
use ieee.std_logic_1164.all;

entity andgate_tb is
end andgate_tb;

architecture tb of andgate_tb is
	component andgate is
		port
		(
			a : in std_logic;
			b : in std_logic;
			c : out std_logic
		);
	end component;	
	signal ina : std_logic;
	signal inb : std_logic;
	signal outc : std_logic;
begin
	mapping : andgate port map(a => ina, b => inb, c => outc);
	process begin 
		ina <= '0';
		inb <= '0';
		wait for 15 ns;
		inb <= '1';
		wait for 15 ns;
		ina <= '1';
		inb <= '0';
		wait for 15 ns;
		inb <= '1';
		wait for 15 ns;
		wait;
	end process;
end tb;	

