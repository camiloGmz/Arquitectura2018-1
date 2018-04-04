--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:38:37 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/PCUnion/PCUnion/PCUnionTb.vhd
-- Project Name:  PCUnion
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pcUnion
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
 
ENTITY PCUnionTb IS
END PCUnionTb;
 
ARCHITECTURE behavior OF PCUnionTb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pcUnion
    PORT(
         rst : IN  std_logic;
         a : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pcUnion PORT MAP (
          rst => rst,
          a => a,
          clk => clk,
          s => s
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a<= "00110011001100110011001100110011";
		rst<= '0';
      wait for 100 ns;	
		a<= "00110011001100110011001100110011";
		rst<= '1';
      wait for 100 ns;	

     

      -- insert stimulus here 

      wait;
   end process;

END;
