library ieee;
use ieee.std_logic_1164.all;


package displays is
	procedure display_7seg(signal num_entrada: std_logic_vector(3 downto 0); signal display_salida: std_logic_vector(6 downto 0));
end package displays;

package body displays is
	
	CONSTANT zero : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000000"; -- Constante de cero
	CONSTANT uno : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111001"; -- Constante de uno  
	CONSTANT dos : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0100100"; -- Constante de dos
	CONSTANT tres : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0110000"; -- Constante de tres
	CONSTANT cuatro : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011001"; -- Constante de cuatro
	CONSTANT cinco : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010010"; -- Constante de cinco
	CONSTANT seis : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000010"; -- Constante de seis
	CONSTANT siete : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111000"; -- Constante de siete
	CONSTANT ocho : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000000"; -- Constante de ocho
	CONSTANT nueve : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010000"; -- Constante de Nueve
	CONSTANT alfa : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001000"; -- Constante de A
	CONSTANT beta : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000011"; -- Constante de B
	CONSTANT charlie : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000110"; -- Constante de C
	CONSTANT delta : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0100001"; -- Constante de D
	CONSTANT echo : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000110"; -- Constante de E
	CONSTANT fox : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0001110"; -- Constante de F
	
	CONSTANT OFF: STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111111"; -- Constante de apagado
	
	procedure display_7seg(
		signal num_entrada: std_logic_vector(3 downto 0); 
		signal display_salida: out std_logic_vector(6 downto 0)
	) is 
	begin
			case num_entrada is
				when "0000" => display_salida <= zero;
				when "0001" => display_salida <= uno;
				when "0010" => display_salida <= dos;
				when "0011" => display_salida <= tres;
				when "0100" => display_salida <= cuatro;
				when "0101" => display_salida <= cinco;
				when "0110" => display_salida <= seis;
				when "0111" => display_salida <= siete;
				when "1000" => display_salida <= ocho;
				when "1001" => display_salida <= nueve;
				when "1010" => display_salida <= alfa;
				when "1011" => display_salida <= beta;
				when "1100" => display_salida <= charlie;
				when "1101" => display_salida <= delta;
				when "1110" => display_salida <= echo;
				when "1111" => display_salida <= fox;
				when others => display_salida <= OFF;
			end case;
			
	end procedure;
	
end package body;