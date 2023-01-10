library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.displays.all;

-- Paquete que contiene la logica de verificacion de codigo de operacion
-- y ejecucion de la operacion dada
-- Codigos:
-- 00: Operacion AND entre ambos numeros --> AND W1, W2
-- 01: Operacion OR entre ambos numeros --> OR W1, W2
-- 10: Suma --> ADD W1, W2
-- 11: Resta --> SUB W1, W2

package parser is
	procedure op_parser(
		signal op_code: std_logic_vector(1 downto 0); 
		signal num_1: std_logic_vector(2 downto 0);
		signal num_2: std_logic_vector(2 downto 0);
		signal res: out std_logic_vector(3 downto 0));
end package parser;

package body parser is
	signal temp_num1: std_logic_vector(3 downto 0);
	signal temp_num2: std_logic_vector(3 downto 0);
	
	procedure op_parser(
		signal op_code: std_logic_vector(1 downto 0); 
		signal num_1: std_logic_vector(2 downto 0);
		signal num_2: std_logic_vector(2 downto 0);
		signal res: out std_logic_vector(3 downto 0)) is
		begin
			
			temp_num1 <= std_logic_vector('0' & num_1);
			temp_num2 <= std_logic_vector('0' & num_2);
			
			case (op_code) is
				when "00" => res <= std_logic_vector('0' & num_1 and num_2); -- AND
				when "01" => res <= std_logic_vector('0' & num_1 or num_2); -- OR
				when "10" => res <= std_logic_vector(UNSIGNED(temp_num1) + UNSIGNED(temp_num2)); -- SUMA
				when "11" => res <= std_logic_vector(UNSIGNED(temp_num1) - UNSIGNED(temp_num2)); -- RESTA
				when others => res <= "1111";
			end case;
	end procedure;

end package body parser;