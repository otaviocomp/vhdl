library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_tb is
end ALU_tb;

architecture testbench of ALU_tb is
	component ALU is
		port
		(
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			sel : in std_logic_vector(2 downto 0);
			output : out std_logic_vector(3 downto 0)
		);
	end component;	
	signal inA : std_logic_vector(3 downto 0);
	signal inB : std_logic_vector(3 downto 0);
	signal insel : std_logic_vector(2 downto 0);
begin
	mapping : ALU 
	port map
	(
		A => inA, 
		B => inB, 
		sel => insel
	);
	process begin 
		inA <= "0011";
		inB <= "0010";
		insel <= "000";
		wait for 10 ns;
		insel <= "001";
		wait for 10 ns;
		insel <= "010";
		wait for 10 ns;
		insel <= "011";
		wait for 10 ns;
		insel <= "100";
		wait for 10 ns;
		insel <= "101";
		wait for 10 ns;
		insel <= "110";
		wait for 10 ns;
		insel <= "111";
		wait for 10 ns;
		wait;
	end process;
end testbench;	

