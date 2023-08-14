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

entity ConvTest_export is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in STD_LOGIC;
        ValueBus_2_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_2_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_5_enable: in STD_LOGIC;
        ValueBus_5_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_5_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_8_enable: in STD_LOGIC;
        ValueBus_8_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_8_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_14_enable: out STD_LOGIC;
        ValueBus_14_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_14_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_41_enable: out STD_LOGIC;
        ValueBus_41_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_41_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_68_enable: out STD_LOGIC;
        ValueBus_68_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_68_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_95_enable: out STD_LOGIC;
        ValueBus_95_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_95_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_122_enable: out STD_LOGIC;
        ValueBus_122_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_122_LastValue: out STD_LOGIC;

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
end ConvTest_export;

architecture RTL of ConvTest_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin
    -- Entity ConvTest signals
    ConvTest: entity work.ConvTest
    port map (
        -- Input bus CNN_ValueBus
        ValueBus_2_enable => ValueBus_2_enable,
        ValueBus_2_Value => ValueBus_2_Value,
        ValueBus_2_LastValue => ValueBus_2_LastValue,

        -- Input bus CNN_ValueBus
        ValueBus_5_enable => ValueBus_5_enable,
        ValueBus_5_Value => ValueBus_5_Value,
        ValueBus_5_LastValue => ValueBus_5_LastValue,

        -- Input bus CNN_ValueBus
        ValueBus_8_enable => ValueBus_8_enable,
        ValueBus_8_Value => ValueBus_8_Value,
        ValueBus_8_LastValue => ValueBus_8_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_41_enable => ValueBus_41_enable,
        ValueBus_41_Value => ValueBus_41_Value,
        ValueBus_41_LastValue => ValueBus_41_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_68_enable => ValueBus_68_enable,
        ValueBus_68_Value => ValueBus_68_Value,
        ValueBus_68_LastValue => ValueBus_68_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_95_enable => ValueBus_95_enable,
        ValueBus_95_Value => ValueBus_95_Value,
        ValueBus_95_LastValue => ValueBus_95_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_122_enable => ValueBus_122_enable,
        ValueBus_122_Value => ValueBus_122_Value,
        ValueBus_122_LastValue => ValueBus_122_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;