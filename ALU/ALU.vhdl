--	arithmetic logic unit
--													
--			 |\	
--	[A0..A3] | \												
--			 |  \
--			 \	 |									
--			  \  | [output0..output1]
--			  /	 |
--			 /   |
--			 |  /
--	[B0..B3] | /										
--			 |/										
--													
--			[sel0..sel1]										
--													
--													
--	sel2	sel1	sel0	|	output
--	----------------------------------
--	  0		  0       0     | 	A + B
--	  0		  0       1     | 	A - B
--	  0		  1       0     | 	A and B
--	  0		  1       1     | 	A or B
--	  1		  0       0     | 	A xor B
--	  1		  0       1     | 	not	A
--	  1		  1       0     | 	not B
--	  1		  1       1     | 	  Z
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
port
(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	sel : in std_logic_vector(2 downto 0);
	output : out std_logic_vector(3 downto 0)
);
end ALU;

architecture hardware of ALU is
begin
	process(A, B, sel)
	begin
		case sel is
			when "000" => output <= A + B;
			when "001" => output <= A - B;
			when "010" => output <= A and B;
			when "011" => output <= A or B;
			when "100" => output <= A xor B;
			when "101" => output <= not A;
			when "110" => output <= not B;
			when others => output <= "ZZZZ";
		end case;	
	end process;
end hardware;	
