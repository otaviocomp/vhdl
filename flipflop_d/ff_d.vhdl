library ieee;
use ieee.std_logic_1164.all;

entity ff_d is
port
(
	D : in std_logic;
	clk : in std_logic;
	Q : out std_logic;
	Qn : out std_logic
);
end ff_d;

architecture hardware of ff_d is 
signal data : std_logic;
begin 
	data <= D when (clk = '1') else data;
	Q <= data;
	Qn <= not data;
end hardware;	
