library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture tb of mux_tb is
	component mux is
		port
		(
			sel : in std_logic_vector(1 downto 0);
			a : in std_logic_vector(3 downto 0);
			o : out std_logic
		);
	end component;	
	signal insel : std_logic_vector(1 downto 0);
	signal ina : std_logic_vector(3 downto 0);
	signal outo : std_logic;
begin
	mapping : mux 
	port map
	(
		sel => insel, 
		a => ina, 
		o => outo
	);
	process begin 
		insel <= "00";
		ina(0) <= '0';
		wait for 15 ns;
		insel <= "01";
		ina(1) <= '1';
		wait for 15 ns;
		insel <= "10";
		ina(2) <= '0';
		wait for 15 ns;
		insel <= "11";
		ina(3) <= '1';
		wait for 15 ns;
		wait;
	end process;
end tb;	

