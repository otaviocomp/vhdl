library ieee;
use ieee.std_logic_1164.all;

entity combinational_circuit is
	port
	(
		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		o : out std_logic
	);
end combinational_circuit;

architecture circuit of combinational_circuit is
signal or1 : std_logic;
signal or2 : std_logic;
signal or3 : std_logic;
begin
	or1 <= (not a) and (not b);
	or2 <= (not b) and (not c);
	or3 <= (not c) and a;
	o <= (or1 or or2 or or3);
end circuit;	
