library ieee;
use ieee.std_logic_1164.all;

entity ff_d_tb is
end ff_d_tb;

architecture tb of ff_d_tb is
	component ff_d is
		port
		(
			D : in std_logic;
			clk : in std_logic;
			Q : out std_logic;
			Qn : out std_logic
		);
	end component;	
	signal inD : std_logic;
	signal inclk : std_logic;
begin
	mapping : ff_d 
	port map
	(
		D => inD, 
		clk => inclk 
	);
	process begin 
		inD <= '0';
		inclk <= '0';
		wait for 10 ns;
		inclk <= '1';
		wait for 10 ns;
		inD <= '1';
		inclk <= '0';
		wait for 10 ns;
		inclk <= '1';
		wait for 10 ns;
		inD <= '0';
		inclk <= '0';
		wait for 10 ns;
		inclk <= '1';
		wait for 10 ns;
		inD <= '1';
		inclk <= '0';
		wait for 10 ns;
		inclk <= '1';
		wait for 10 ns;
		wait;
	end process;
end tb;	

