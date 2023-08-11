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
        -- Top-level bus ValueBus signals
        ValueBus_7_enable: out STD_LOGIC;
        ValueBus_7_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_7_LastValue: out STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_10_enable: in STD_LOGIC;
        ValueBus_10_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_10_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_14_enable: in STD_LOGIC;
        ValueBus_14_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_14_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_18_enable: in STD_LOGIC;
        ValueBus_18_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_18_LastValue: in STD_LOGIC;

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
        -- Output bus ValueBus
        ValueBus_7_enable => ValueBus_7_enable,
        ValueBus_7_Value => ValueBus_7_Value,
        ValueBus_7_LastValue => ValueBus_7_LastValue,

        -- Input bus ValueBus
        ValueBus_10_enable => ValueBus_10_enable,
        ValueBus_10_Value => ValueBus_10_Value,
        ValueBus_10_LastValue => ValueBus_10_LastValue,

        -- Input bus ValueBus
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,

        -- Input bus ValueBus
        ValueBus_18_enable => ValueBus_18_enable,
        ValueBus_18_Value => ValueBus_18_Value,
        ValueBus_18_LastValue => ValueBus_18_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;