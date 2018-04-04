----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:18 04/03/2018 
-- Design Name: 
-- Module Name:    pcUnion - Behavioral 
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

entity pcUnion is
    Port ( rst : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (31 downto 0));
end pcUnion;

architecture Behavioral of pcUnion is
	
	component adder is 
	port ( A : in std_logic_vector (31 downto 0);
	  B : in  STD_LOGIC_vector  (31 downto 0);
           C : out  STD_LOGIC_vector (31 downto 0));
		end component;
		
	component pc is 
	port (pcadder : in  STD_LOGIC_vector (31 downto 0);
           rst : in  STD_LOGIC;
			  clk : in STD_LOGIC;
           pcout : out  STD_LOGIC_vector (31 downto 0));
	end component;
	
signal c0: std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
signal c1: std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
signal c2: std_logic_vector (31 downto 0) := "00000000000000000000000000000000";

begin

	inst_adder: adder PORT MAP(
		A => a,
		B =>c2,
		C => c0
	);
	
	inst_pc1: pc PORT MAP(
		pcadder => c0,
		rst  => rst,
		clk => clk,
		pcout => c1
	);
	
	inst_pc2: pc PORT MAP(
		pcadder => c1,
		rst  => rst,
		clk => clk,
		pcout => c2
	);
	
s <= c2;

end Behavioral;

