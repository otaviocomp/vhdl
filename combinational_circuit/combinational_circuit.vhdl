-- 	subtitle
--	
--	horizontal wire -	
--	
--	vertical wire |
--	
--	node *	
--	
--	not gate |>0
--			  ___
--			 |	 )
--	and gate |	  )
--			 |___)
--			  ___
--			 )	 )
--	or gate   )	  )
--			 )___)
--
--
--			COMBINATIONAL CIRCUIT
--					  ___		
--  	   -----|>o--|   ) 
--		   |		 |	  )-----
--		 --|----|>o--|___)	   |   	
--		 | |				   |   
--  a >----*				   |   	
-- 		 | |				   |
--		 | |		  ___	   |   ___
--  b >--*------|>o--|   ) 	   ---)	  )
--		   |		 |	  )--------)   )---> o
--	c >--*------|>o--|___)	   ---)___)
--       | |				   |
--		 | |				   |
--		 | |		  ___      |
--  	 -------|>o--|   ) 	   |	
--		   | 		 |	  )-----
--		   ----------|___)
--

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
