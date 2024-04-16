library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_pakage.all;

entity task is
    port (
        A, B : in matrix_t;
        C : out matrix_t
    );
end entity task;

architecture Behavioral of task is

    procedure matrix_multiply (
        A, B : in matrix_t;
        C : out matrix_t
    ) is
        variable sum : integer range 0 to 255;
    begin
        for i in 0 to N-1 loop
            for j in 0 to N-1 loop
                sum := 0;
                for k in 0 to N-1 loop
                    sum := sum + to_integer(unsigned(A(i, k))) * to_integer(unsigned(B(k, j)));
                end loop;
                C(i, j) := std_logic_vector(to_unsigned(sum, 8));
            end loop;
        end loop;
    end procedure matrix_multiply;

begin
    process(A, B)
        variable temp_C : matrix_t; -- ����������� ���������� ��� �������� �������
    begin
        matrix_multiply(A, B, temp_C); -- ����� ���������, ��������� ����������� � temp_C
        C <= temp_C; -- ������������ temp_C ��������� ������� C
    end process;
end architecture Behavioral;
