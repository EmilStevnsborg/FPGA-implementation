library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

-- library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity Linear_export is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_6_enable: in STD_LOGIC_VECTOR(4 downto 0);
        ValueBus_6_Value: in STD_LOGIC_VECTOR(159 downto 0);
        ValueBus_6_LastValue: in STD_LOGIC_VECTOR(4 downto 0);

        -- Top-level bus CNN_ValueBus signals
        ValueBus_9_enable: out STD_LOGIC;
        ValueBus_9_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_9_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_14_enable: out STD_LOGIC;
        ValueBus_14_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_14_LastValue: out STD_LOGIC;

        -- User defined signals here
        -- #### USER-DATA-ENTITYSIGNALS-START
        -- #### USER-DATA-ENTITYSIGNALS-END

        -- Enable signal
        ENB : in STD_LOGIC;

        -- Reset signal
        RST : in STD_LOGIC;

        -- Finished signal
        FIN : out Std_logic;

        -- Clock signal
        CLK : in STD_LOGIC
    );
end Linear_export;

architecture RTL of Linear_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    pure function ValueBus_6_enable_conversion(slv : in std_logic_vector) return T_SYSTEM_BOOL_ARRAY is
        variable tmp : T_SYSTEM_BOOL_ARRAY(0 to 4);
    begin
        for i in 0 to 4 loop
            tmp(i) := STD_LOGIC(slv(i));
        end loop;
        return tmp;
    end function;

    pure function ValueBus_6_Value_conversion(slv : in std_logic_vector) return T_SYSTEM_FLOAT_ARRAY is
        variable tmp : T_SYSTEM_FLOAT_ARRAY(0 to 4);
    begin
        for i in 0 to 4 loop
            tmp(i) := std_logic_vector(slv((i*32)+31 downto (i*32)));
        end loop;
        return tmp;
    end function;

    pure function ValueBus_6_LastValue_conversion(slv : in std_logic_vector) return T_SYSTEM_BOOL_ARRAY is
        variable tmp : T_SYSTEM_BOOL_ARRAY(0 to 4);
    begin
        for i in 0 to 4 loop
            tmp(i) := STD_LOGIC(slv(i));
        end loop;
        return tmp;
    end function;
begin
    -- Entity Linear signals
    Linear: entity work.Linear
    port map (
        -- Input bus CNN_ValueBus
        ValueBus_6_enable => ValueBus_6_enable_conversion(ValueBus_6_enable),
        ValueBus_6_Value => ValueBus_6_Value_conversion(ValueBus_6_Value),
        ValueBus_6_LastValue => ValueBus_6_LastValue_conversion(ValueBus_6_LastValue),

        -- Output bus CNN_ValueBus
        ValueBus_9_enable => ValueBus_9_enable,
        ValueBus_9_Value => ValueBus_9_Value,
        ValueBus_9_LastValue => ValueBus_9_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;