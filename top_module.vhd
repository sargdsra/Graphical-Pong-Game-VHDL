----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:52 09/29/2018 
-- Design Name: 
-- Module Name:    top_module - Behavioral 
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

entity top_module is
port(i_CLK, i_RST: in std_logic;
o_LED: out std_logic_vector(3 downto 0));
end top_module;

architecture Behavioral of top_module is
COMPONENT my_dcm
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;
COMPONENT counter
generic (
   bound_counter : integer := 40000000
);
	PORT(
		i_f : IN std_logic;          
		o_f : OUT std_logic
		);
	END COMPONENT;

	
signal clk20, clk0, clk65: std_logic;
	
begin
Inst_my_dcm: my_dcm PORT MAP(
		CLKIN_IN => i_CLK,
		RST_IN => i_RST,
		CLKDV_OUT => clk20,
		CLKFX_OUT => clk65,
		CLKIN_IBUFG_OUT => open,
		CLK0_OUT => clk0
	);
Inst_counter: counter 
generic map ( 
   bound_counter => 80000000
)
PORT MAP(
		i_f => clk0,
		o_f => o_LED(0)
	);
Inst_counter1: counter 
generic map ( 
   bound_counter => 80000000
)
PORT MAP(
		i_f => clk20,
		o_f => o_LED(1)
	);
Inst_counter2: counter 
generic map ( 
   bound_counter => 128000000
)
PORT MAP(
		i_f => clk20,
		o_f => o_LED(2)
	);
Inst_counter3: counter 
generic map ( 
   bound_counter => 104000000
)
PORT MAP(
		i_f => clk65,
		o_f => o_LED(3)
	);
end Behavioral;

