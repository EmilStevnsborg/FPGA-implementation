library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

package CUSTOM_TYPES is

    -- User defined types here
    -- #### USER-DATA-CORETYPES-START
    -- #### USER-DATA-CORETYPES-END

    -- Type definitions
    subtype TrueDualPortMemory_1_Single_m_memory_type is T_SYSTEM_FLOAT_ARRAY;
    subtype CNN_ValueArrayCtrl_vhdl_buffer_type is T_SYSTEM_FLOAT_ARRAY;
    subtype CNN_KernelCtrl_weights_type is T_SYSTEM_FLOAT_ARRAY;

    -- User defined types here
    -- #### USER-DATA-TRAILTYPES-START
    -- #### USER-DATA-TRAILTYPES-END

end CUSTOM_TYPES;

package body CUSTOM_TYPES is

    -- User defined bodies here
    -- #### USER-DATA-BODY-START
    -- #### USER-DATA-BODY-END

end CUSTOM_TYPES;