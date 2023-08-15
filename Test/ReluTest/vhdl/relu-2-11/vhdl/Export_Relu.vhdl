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

entity Relu_export is
    port(
        -- Top-level bus ValueBus signals
        ValueBus_1_enable: in STD_LOGIC;
        ValueBus_1_Value: in STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_1_LastValue: in STD_LOGIC;

        -- Top-level bus ValueBus signals
        ValueBus_0_enable: out STD_LOGIC;
        ValueBus_0_Value: out STD_LOGIC_VECTOR(31 downto 0);
        ValueBus_0_LastValue: out STD_LOGIC;

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
end Relu_export;

architecture RTL of Relu_export is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin
    -- Entity Relu signals
    Relu: entity work.Relu
    port map (
        -- Input bus ValueBus
        ValueBus_1_enable => ValueBus_1_enable,
        ValueBus_1_Value => ValueBus_1_Value,
        ValueBus_1_LastValue => ValueBus_1_LastValue,

        -- Output bus ValueBus
        ValueBus_0_enable => ValueBus_0_enable,
        ValueBus_0_Value => ValueBus_0_Value,
        ValueBus_0_LastValue => ValueBus_0_LastValue,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;