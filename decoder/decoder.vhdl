--				TRUTH TABLE	
--		EN	P0	P1	|	O3	O2	O1	O0			  DECODER
--		0	0	0	|	Z	Z	Z	Z			   _____
--		0	0	1	|	Z	Z	Z	Z		P0 ---|		|--- O0
--		0	1	0	|	Z	Z	Z	Z		P1 ---|		|--- O1
--		0	1	1	|	Z	Z	Z	Z			  |		|--- O2	
--		1	0	0	|	0	0	0	1		EN ---|_____|--- O3
--		1	0	1	|	0	0	1	0
--		1	1	0	|	0	1	0	0	
--		1	1	1	|	1	0	0	0	
--		

library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port
(
	P : in std_logic_vector(1 downto 0);
	EN : in std_logic;
	output : out std_logic_vector(3 downto 0)
);
end decoder;

architecture hardware of decoder is
begin
	process(P, EN)
	begin
		output <= "ZZZZ";
		if(EN = '1') then
			case P is
				when "00" => output <= "0001";
				when "01" => output <= "0010";
				when "10" => output <= "0100";
				when "11" => output <= "1000";
				when others => output <= "0000";
			end case;
		end if;
	end process;
end hardware;	
