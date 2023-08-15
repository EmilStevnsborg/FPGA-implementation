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

entity SoftmaxTest_export is
    port(
        -- Top-level bus ValueBus signals
        ValueBus_4_enable: in STD_LOGIC;
        ValueBus_4_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_4_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_5_enable: in STD_LOGIC;
        ValueBus_5_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_5_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_6_enable: out STD_LOGIC;
        ValueBus_6_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_6_LastValue: out STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_7_enable: out STD_LOGIC;
        ValueBus_7_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_7_LastValue: out STD_LOGIC;

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
end SoftmaxTest_export;

architecture RTL of SoftmaxTest_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin
    -- Entity SoftmaxTest signals
    SoftmaxTest: entity work.SoftmaxTest
    port map (
        -- Input bus ValueBus
        ValueBus_4_enable => ValueBus_4_enable,
        ValueBus_4_Value => ValueBus_4_Value,
        ValueBus_4_LastValue => ValueBus_4_LastValue,

        -- Input bus ValueBus
        ValueBus_5_enable => ValueBus_5_enable,
        ValueBus_5_Value => ValueBus_5_Value,
        ValueBus_5_LastValue => ValueBus_5_LastValue,

        -- Output bus ValueBus
        ValueBus_6_enable => ValueBus_6_enable,
        ValueBus_6_Value => ValueBus_6_Value,
        ValueBus_6_LastValue => ValueBus_6_LastValue,

        -- Output bus ValueBus
        ValueBus_7_enable => ValueBus_7_enable,
        ValueBus_7_Value => ValueBus_7_Value,
        ValueBus_7_LastValue => ValueBus_7_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;