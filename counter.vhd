----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:17 09/29/2018 
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
generic (
   bound_counter : integer := 40000000
);
port(i_f: in std_logic;
o_f: out std_logic);
end counter;

architecture Behavioral of counter is
signal counter: integer range 0 to bound_counter := 0;
begin
p1: process(i_f)
begin
if(rising_edge(i_f))then
counter <= counter + 1;
if(counter = bound_counter)then
counter <= 0;
end if;
if(counter < (bound_counter / 2))then
o_f <= '0';
end if;
if(counter >= (bound_counter / 2))then
o_f <= '1';
end if;
end if;
end process;
end Behavioral;

