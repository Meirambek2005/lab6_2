library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_pakage.all;

entity tb_task is
end entity tb_task;

architecture Behavioral of tb_task is
    signal A, B, C : matrix_t;
begin
    A <= (
        (X"01", X"02", X"03"),
        (X"04", X"05", X"06"),
        (X"07", X"08", X"09")
    );

    B <= (
        (X"09", X"08", X"07"),
        (X"06", X"05", X"04"),
        (X"03", X"02", X"01")
    );

    dut: entity work.task
        port map (
            A => A,
            B => B,
            C => C
        );

end architecture Behavioral;