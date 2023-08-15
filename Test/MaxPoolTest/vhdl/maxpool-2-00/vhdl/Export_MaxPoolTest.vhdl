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

entity MaxPoolTest_export is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in STD_LOGIC;
        ValueBus_2_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_2_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_3_enable: out STD_LOGIC;
        ValueBus_3_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_3_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_6_enable: in STD_LOGIC;
        ValueBus_6_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_6_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_7_enable: out STD_LOGIC;
        ValueBus_7_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_7_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_10_enable: in STD_LOGIC;
        ValueBus_10_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_10_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_11_enable: out STD_LOGIC;
        ValueBus_11_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_11_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_14_enable: in STD_LOGIC;
        ValueBus_14_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_14_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_15_enable: out STD_LOGIC;
        ValueBus_15_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_15_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_18_enable: in STD_LOGIC;
        ValueBus_18_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_18_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_19_enable: out STD_LOGIC;
        ValueBus_19_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_19_LastValue: out STD_LOGIC;

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
end MaxPoolTest_export;

architecture RTL of MaxPoolTest_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin
    -- Entity MaxPoolTest signals
    MaxPoolTest: entity work.MaxPoolTest
    port map (
        -- Input bus CNN_ValueBus
        ValueBus_2_enable => ValueBus_2_enable,
        ValueBus_2_Value => ValueBus_2_Value,
        ValueBus_2_LastValue => ValueBus_2_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_3_enable => ValueBus_3_enable,
        ValueBus_3_Value => ValueBus_3_Value,
        ValueBus_3_LastValue => ValueBus_3_LastValue,

        -- Input bus CNN_ValueBus
        ValueBus_6_enable => ValueBus_6_enable,
        ValueBus_6_Value => ValueBus_6_Value,
        ValueBus_6_LastValue => ValueBus_6_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_7_enable => ValueBus_7_enable,
        ValueBus_7_Value => ValueBus_7_Value,
        ValueBus_7_LastValue => ValueBus_7_LastValue,

        -- Input bus CNN_ValueBus
        ValueBus_10_enable => ValueBus_10_enable,
        ValueBus_10_Value => ValueBus_10_Value,
        ValueBus_10_LastValue => ValueBus_10_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_11_enable => ValueBus_11_enable,
        ValueBus_11_Value => ValueBus_11_Value,
        ValueBus_11_LastValue => ValueBus_11_LastValue,

        -- Input bus CNN_ValueBus
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_15_enable => ValueBus_15_enable,
        ValueBus_15_Value => ValueBus_15_Value,
        ValueBus_15_LastValue => ValueBus_15_LastValue,

        -- Input bus CNN_ValueBus
        ValueBus_18_enable => ValueBus_18_enable,
        ValueBus_18_Value => ValueBus_18_Value,
        ValueBus_18_LastValue => ValueBus_18_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_19_enable => ValueBus_19_enable,
        ValueBus_19_Value => ValueBus_19_Value,
        ValueBus_19_LastValue => ValueBus_19_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;