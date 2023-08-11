library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;
-- library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

  -- Component declaration and signals

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity SME_Components_TrueDualPortMemory_1_Single is
    generic(
        reset_m_memory: in SME_Components_TrueDualPortMemory_1_Single_m_memory_type
    );
    port(
        -- Input bus ControlA signals
        ControlA_IsWriting: in T_SYSTEM_BOOL;
        ControlA_Enabled: in T_SYSTEM_BOOL;
        ControlA_Address: in T_SYSTEM_INT32;
        ControlA_Data: in T_SYSTEM_FLOAT;
        -- Input bus ControlB signals
        ControlB_IsWriting: in T_SYSTEM_BOOL;
        ControlB_Enabled: in T_SYSTEM_BOOL;
        ControlB_Address: in T_SYSTEM_INT32;
        ControlB_Data: in T_SYSTEM_FLOAT;

        -- Output bus ReadResultA signals
        ReadResultA_Data: out T_SYSTEM_FLOAT;
        -- Output bus ReadResultB signals
        ReadResultB_Data: out T_SYSTEM_FLOAT;

        -- Clock signal
        CLK : in Std_logic;

        -- Ready signal
        RDY : in Std_logic;

        -- Finished signal
        FIN : out Std_logic;

        -- Enable signal
        ENB : in Std_logic;

        -- Reset signal
        RST : in Std_logic
    );
end SME_Components_TrueDualPortMemory_1_Single;

architecture RTL of SME_Components_TrueDualPortMemory_1_Single is 

type ram_type is array (reset_m_memory'range) of std_logic_vector (31 downto 0);
    function load_reset_memory return ram_type is
        variable tmp_arr : ram_type;
    begin
        for i in reset_m_memory'range loop
            tmp_arr(i) := std_logic_vector(reset_m_memory(i));
        end loop;
        return tmp_arr;
    end load_reset_memory;
    signal RAM : ram_type := load_reset_memory;
    signal ControlA_Data_Vector: std_logic_vector (31 downto 0);
    signal ControlB_Data_Vector: std_logic_vector (31 downto 0);
    signal ReadResultA_Data_Vector: std_logic_vector (31 downto 0);
    signal ReadResultB_Data_Vector: std_logic_vector (31 downto 0);
    signal FIN_A : std_logic;
    signal FIN_B : std_logic;
begin

    process (CLK, RST)
    begin
        if RST = '1' then
            ReadResultA_Data_Vector <= (others => '0');
        elsif rising_edge(CLK) then
            if (ControlA_Enabled = '1') then
                ReadResultA_Data_Vector <= RAM(to_integer(ControlA_Address));
            end if;
        end if;

        if RST = '1' then
            ReadResultB_Data_Vector <= (others => '0');
        elsif rising_edge(CLK) then
            if (ControlB_Enabled = '1') then
                ReadResultB_Data_Vector <= RAM(to_integer(ControlB_Address));
            end if;
        end if;

        if RST = '1' then
            FIN_A <= '0';
        elsif rising_edge(CLK) then
            if (ControlA_Enabled = '1') and (ControlA_IsWriting = '1') then
                RAM(to_integer(ControlA_Address)) <= ControlA_Data_Vector;
            end if;
            FIN_A <= not RDY;
        end if;

        if RST = '1' then
            FIN_B <= '0';
        elsif rising_edge(CLK) then
            if (ControlB_Enabled = '1') and (ControlB_IsWriting = '1') then
                RAM(to_integer(ControlB_Address)) <= ControlB_Data_Vector;
            end if;
            FIN_B <= not RDY;
        end if;
    end process;

    SME_Components_TrueDualPortMemory_1_Single_Helper: process(RST, FIN_A, FIN_B)
    begin
        if RST = '1' then
            FIN <= '0';
        elsif FIN_A = FIN_B then
            FIN <= FIN_A;
        end if;
    end process;

    ControlA_Data_Vector <= ControlA_Data;
    ReadResultA_Data <= ReadResultA_Data_Vector;
    ControlB_Data_Vector <= ControlB_Data;
    ReadResultB_Data <= ReadResultB_Data_Vector;


end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END
