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
begin
	mapping : mux port map(sel => insel);
	process begin 
		insel <= "00";
		wait for 15 ns;
		insel <= "01";
		wait for 15 ns;
		insel <= "10";
		wait for 15 ns;
		insel <= "11";
		wait for 15 ns;
		wait;
	end process;
end tb;	

