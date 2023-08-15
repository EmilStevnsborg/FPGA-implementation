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

entity BatchNormTest_export is
    port(
        -- Top-level bus ValueBus signals
        ValueBus_1_enable: in STD_LOGIC;
        ValueBus_1_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_1_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_4_enable: out STD_LOGIC;
        ValueBus_4_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_4_LastValue: out STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_6_enable: in STD_LOGIC;
        ValueBus_6_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_6_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_9_enable: out STD_LOGIC;
        ValueBus_9_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_9_LastValue: out STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_11_enable: in STD_LOGIC;
        ValueBus_11_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_11_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_14_enable: out STD_LOGIC;
        ValueBus_14_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_14_LastValue: out STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_16_enable: in STD_LOGIC;
        ValueBus_16_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_16_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_19_enable: out STD_LOGIC;
        ValueBus_19_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_19_LastValue: out STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_21_enable: in STD_LOGIC;
        ValueBus_21_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_21_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_24_enable: out STD_LOGIC;
        ValueBus_24_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_24_LastValue: out STD_LOGIC;

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
end BatchNormTest_export;

architecture RTL of BatchNormTest_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin
    -- Entity BatchNormTest signals
    BatchNormTest: entity work.BatchNormTest
    port map (
        -- Input bus ValueBus
        ValueBus_1_enable => ValueBus_1_enable,
        ValueBus_1_Value => ValueBus_1_Value,
        ValueBus_1_LastValue => ValueBus_1_LastValue,

        -- Output bus ValueBus
        ValueBus_4_enable => ValueBus_4_enable,
        ValueBus_4_Value => ValueBus_4_Value,
        ValueBus_4_LastValue => ValueBus_4_LastValue,

        -- Input bus ValueBus
        ValueBus_6_enable => ValueBus_6_enable,
        ValueBus_6_Value => ValueBus_6_Value,
        ValueBus_6_LastValue => ValueBus_6_LastValue,

        -- Output bus ValueBus
        ValueBus_9_enable => ValueBus_9_enable,
        ValueBus_9_Value => ValueBus_9_Value,
        ValueBus_9_LastValue => ValueBus_9_LastValue,

        -- Input bus ValueBus
        ValueBus_11_enable => ValueBus_11_enable,
        ValueBus_11_Value => ValueBus_11_Value,
        ValueBus_11_LastValue => ValueBus_11_LastValue,

        -- Output bus ValueBus
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,

        -- Input bus ValueBus
        ValueBus_16_enable => ValueBus_16_enable,
        ValueBus_16_Value => ValueBus_16_Value,
        ValueBus_16_LastValue => ValueBus_16_LastValue,

        -- Output bus ValueBus
        ValueBus_19_enable => ValueBus_19_enable,
        ValueBus_19_Value => ValueBus_19_Value,
        ValueBus_19_LastValue => ValueBus_19_LastValue,

        -- Input bus ValueBus
        ValueBus_21_enable => ValueBus_21_enable,
        ValueBus_21_Value => ValueBus_21_Value,
        ValueBus_21_LastValue => ValueBus_21_LastValue,

        -- Output bus ValueBus
        ValueBus_24_enable => ValueBus_24_enable,
        ValueBus_24_Value => ValueBus_24_Value,
        ValueBus_24_LastValue => ValueBus_24_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;