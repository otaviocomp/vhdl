library ieee;
use ieee.std_logic_1164.all;

entity mux is	
	port
	(
		sel : in std_logic_vector(1 downto 0);
		a : in std_logic_vector(3 downto 0);
		o : out std_logic;
	);
end mux;

architecture hardware of mux is
begin
	a(0) <= '0';
	a(1) <= '1';
	a(2) <= '0';
	a(3) <= '1';
	with sel select
		o <= a(0) when "00",
			 a(1) when "01",
			 a(2) when "10",
			 a(3) when "11",
			 '0' when others;
end hardware;	
