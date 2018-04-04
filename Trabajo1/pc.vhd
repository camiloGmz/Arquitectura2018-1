----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:20 04/03/2018 
-- Design Name: 
-- Module Name:    pc - arqpc 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pc is
    Port ( pcadder : in  STD_LOGIC_vector (31 downto 0);
           rst : in  STD_LOGIC;
			  clk : in STD_LOGIC;
           pcout : out  STD_LOGIC_vector (31 downto 0));
end pc;

architecture arqpc of pc is

begin

	process(rst, clk, pcadder)
		begin 
			if(rst='1')then
				pcout <= (others => '0');
			elsif(rising_edge(clk)) then
					pcout  <= pcadder;
			end if;
		
	end process;
			
	

end arqpc;

