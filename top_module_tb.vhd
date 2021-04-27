--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:19 10/15/2018
-- Design Name:   
-- Module Name:   D:/books/darsi/7/az_cad/proj/main/top_module_tb.vhd
-- Project Name:  main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_module_tb IS
END top_module_tb;
 
ARCHITECTURE behavior OF top_module_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_module
    PORT(
         i_CLK : IN  std_logic;
         i_RST : IN  std_logic;
         o_LED : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_CLK : std_logic := '0';
   signal i_RST : std_logic := '0';

 	--Outputs
   signal o_LED : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant i_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_module PORT MAP (
          i_CLK => i_CLK,
          i_RST => i_RST,
          o_LED => o_LED
        );

   -- Clock process definitions
   i_CLK_process :process
   begin
		i_CLK <= '0';
		wait for i_CLK_period/2;
		i_CLK <= '1';
		wait for i_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for i_CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
