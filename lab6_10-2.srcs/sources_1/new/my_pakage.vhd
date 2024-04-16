library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package my_pakage is
    constant N : natural := 3; -- ����������� �������

    subtype data_t is std_logic_vector(7 downto 0); -- ��� ��� ��������� ������ (���� �����������)
    type matrix_t is array (0 to N-1, 0 to N-1) of data_t; -- ��� ��� ������

end package my_pakage;