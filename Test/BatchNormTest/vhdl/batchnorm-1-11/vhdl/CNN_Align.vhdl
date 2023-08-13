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

entity CNN_Align is
    generic(
        reset_weights: in Align_weights_type;
        reset_outValues: in T_UINT7;
        reset_i: in T_UINT9;
        reset_c: in T_UINT3;
        reset_numOutChannels: in T_UINT3
    );
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL;
        Input_Value: in T_SYSTEM_FLOAT;
        Input_LastValue: in T_SYSTEM_BOOL;

        -- Output bus OutputValue signals
        OutputValue_enable: out T_SYSTEM_BOOL;
        OutputValue_LastValue: out T_SYSTEM_BOOL;
        OutputValue_Value: out T_SYSTEM_FLOAT;
        -- Output bus OutputWeight signals
        OutputWeight_enable: out T_SYSTEM_BOOL;
        OutputWeight_LastValue: out T_SYSTEM_BOOL;
        OutputWeight_Value: out T_SYSTEM_FLOAT;

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
end CNN_Align;

architecture RTL of CNN_Align is 

    -- User defined signals, procedures and components here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin

    -- Custom processes go here
    -- #### USER-DATA-PROCESSES-START
    -- #### USER-DATA-PROCESSES-END

    process(
        -- Custom sensitivity signals here
        -- #### USER-DATA-SENSITIVITY-START
        -- #### USER-DATA-SENSITIVITY-END
        CLK,
        RST
    )
        -- Internal variables
        variable local_var_0 : T_SYSTEM_BOOL;
        variable weights : Align_weights_type (0 to 2) := reset_weights;
        variable outValues : T_UINT7 := reset_outValues;
        variable i : T_UINT9 := reset_i;
        variable c : T_UINT3 := reset_c;
        variable numOutChannels : T_UINT3 := reset_numOutChannels;


        -- #### USER-DATA-NONCLOCKEDVARIABLES-START
        -- #### USER-DATA-NONCLOCKEDVARIABLES-END
    begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            OutputValue_enable <= '0';
            OutputValue_LastValue <= '0';
            OutputValue_Value <= std_logic_vector'(x"00000000");
            OutputWeight_enable <= '0';
            OutputWeight_LastValue <= '0';
            OutputWeight_Value <= std_logic_vector'(x"00000000");
            local_var_0 := '0';
            weights := reset_weights;
            outValues := reset_outValues;
            i := reset_i;
            c := reset_c;
            numOutChannels := reset_numOutChannels;
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END

            OutputValue_enable <= '0';
            OutputValue_LastValue <= '0';
            OutputWeight_enable <= '0';
            OutputWeight_LastValue <= '0';
            if Input_enable = '1' then
                OutputValue_Value <= Input_Value;
                OutputWeight_Value <= weights(TO_INTEGER(SIGNED(resize(c, T_SYSTEM_INT32'length))));
                local_var_0 := Input_enable;
                OutputValue_enable <= local_var_0;
                OutputWeight_enable <= local_var_0;
                OutputValue_LastValue <= Input_LastValue;
                i := i + TO_UNSIGNED(1, 9);
                if (i mod resize(outValues, T_UINT9'length)) = TO_UNSIGNED(0, 9) then
                    c := c + TO_UNSIGNED(1, 3);
                end if;
                if c = numOutChannels then
                    i := TO_UNSIGNED(0, 9);
                    c := TO_UNSIGNED(0, 3);
                end if;
            end if;

            FIN <= not RDY;

        end if;

        -- Non-clocked process actions here
        -- #### USER-DATA-CODE-START
        -- #### USER-DATA-CODE-END

    end process;

end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END
