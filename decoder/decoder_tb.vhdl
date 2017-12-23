library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end decoder_tb;

architecture tb of decoder_tb is
	component decoder is
		port
		(
			P : in std_logic_vector(1 downto 0);
			EN : in std_logic;
			output : out std_logic_vector(3 downto 0)
		);
	end component;	
	signal inP : std_logic_vector(1 downto 0);
	signal inEN : std_logic;
begin
	mapping : decoder 
	port map
	(
		P => inP, 
		EN => inEN 
	);
	process begin 
		inP <= "00";
		inEN <= '0';
		wait for 10 ns;
		inP <= "01";
		inEN <= '0';
		wait for 10 ns;
		inP <= "10";
		inEN <= '0';
		wait for 10 ns;
		inP <= "11";
		inEN <= '0';
		wait for 10 ns;
		inP <= "00";
		inEN <= '1';
		wait for 10 ns;
		inP <= "01";
		inEN <= '1';
		wait for 10 ns;
		inP <= "10";
		inEN <= '1';
		wait for 10 ns;
		inP <= "11";
		inEN <= '1';
		wait for 10 ns;
		wait;
	end process;
end tb;	

