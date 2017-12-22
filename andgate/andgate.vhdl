library IEEE;
use IEEE.std_logic_1164.ALL;

entity andgate is 							-- declaring entity
port
(
	a : in std_logic; 						-- digital input a
	b : in std_logic;						-- digital input b
	c : out std_logic						-- digital output c
);
end andgate;								-- end of declaration of entity

architecture hardware of andgate is 
begin 
	c <= a AND b;							-- operation
end hardware;	
