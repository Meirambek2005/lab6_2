library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package my_pakage is
    constant N : natural := 3; -- Размерность матрицы

    subtype data_t is std_logic_vector(7 downto 0); -- Тип для элементов матриц (байт беззнаковый)
    type matrix_t is array (0 to N-1, 0 to N-1) of data_t; -- Тип для матриц

end package my_pakage;