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

entity CNNSmall_export is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in STD_LOGIC;
        ValueBus_2_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_2_LastValue: in STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_107_enable: out STD_LOGIC;
        ValueBus_107_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_107_LastValue: out STD_LOGIC;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_108_enable: out STD_LOGIC;
        ValueBus_108_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_108_LastValue: out STD_LOGIC;

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
end CNNSmall_export;

architecture RTL of CNNSmall_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin
    -- Entity CNNSmall signals
    CNNSmall: entity work.CNNSmall
    port map (
        -- Input bus CNN_ValueBus
        ValueBus_2_enable => ValueBus_2_enable,
        ValueBus_2_Value => ValueBus_2_Value,
        ValueBus_2_LastValue => ValueBus_2_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_107_enable => ValueBus_107_enable,
        ValueBus_107_Value => ValueBus_107_Value,
        ValueBus_107_LastValue => ValueBus_107_LastValue,

        -- Output bus CNN_ValueBus
        ValueBus_108_enable => ValueBus_108_enable,
        ValueBus_108_Value => ValueBus_108_Value,
        ValueBus_108_LastValue => ValueBus_108_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;