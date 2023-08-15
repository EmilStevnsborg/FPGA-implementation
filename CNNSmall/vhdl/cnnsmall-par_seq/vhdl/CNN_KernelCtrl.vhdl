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

entity CNN_KernelCtrl is
    generic(
        reset_kernelA: in T_UINT5;
        reset_kernelB: in T_UINT5;
        reset_kernelHeight: in T_UINT3;
        reset_kernelWidth: in T_UINT3;
        reset_weights: in CNN_KernelCtrl_weights_type;
        reset_lastKernelVal: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus InputValueA signals
        InputValueA_enable: in T_SYSTEM_BOOL;
        InputValueA_Value: in T_SYSTEM_FLOAT;
        InputValueA_LastValue: in T_SYSTEM_BOOL;
        -- Input bus InputValueB signals
        InputValueB_enable: in T_SYSTEM_BOOL;
        InputValueB_Value: in T_SYSTEM_FLOAT;
        InputValueB_LastValue: in T_SYSTEM_BOOL;

        -- Output bus OutputValueA signals
        OutputValueA_enable: out T_SYSTEM_BOOL;
        OutputValueA_LastValue: out T_SYSTEM_BOOL;
        OutputValueA_Value: out T_SYSTEM_FLOAT;
        -- Output bus OutputWeightA signals
        OutputWeightA_enable: out T_SYSTEM_BOOL;
        OutputWeightA_Value: out T_SYSTEM_FLOAT;
        OutputWeightA_LastValue: out T_SYSTEM_BOOL;
        -- Output bus OutputValueB signals
        OutputValueB_enable: out T_SYSTEM_BOOL;
        OutputValueB_LastValue: out T_SYSTEM_BOOL;
        OutputValueB_Value: out T_SYSTEM_FLOAT;
        -- Output bus OutputWeightB signals
        OutputWeightB_enable: out T_SYSTEM_BOOL;
        OutputWeightB_Value: out T_SYSTEM_FLOAT;
        OutputWeightB_LastValue: out T_SYSTEM_BOOL;

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
end CNN_KernelCtrl;

architecture RTL of CNN_KernelCtrl is 

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
        variable kernelA : T_UINT5 := reset_kernelA;
        variable kernelB : T_UINT5 := reset_kernelB;
        variable kernelHeight : T_UINT3 := reset_kernelHeight;
        variable kernelWidth : T_UINT3 := reset_kernelWidth;
        variable weights : CNN_KernelCtrl_weights_type (0 to 8) := reset_weights;
        variable lastKernelVal : T_SYSTEM_BOOL := reset_lastKernelVal;


        -- #### USER-DATA-NONCLOCKEDVARIABLES-START
        -- #### USER-DATA-NONCLOCKEDVARIABLES-END
    begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            OutputValueA_enable <= '0';
            OutputValueA_LastValue <= '0';
            OutputValueA_Value <= std_logic_vector'(x"00000000");
            OutputWeightA_enable <= '0';
            OutputWeightA_Value <= std_logic_vector'(x"00000000");
            OutputWeightA_LastValue <= '0';
            OutputValueB_enable <= '0';
            OutputValueB_LastValue <= '0';
            OutputValueB_Value <= std_logic_vector'(x"00000000");
            OutputWeightB_enable <= '0';
            OutputWeightB_Value <= std_logic_vector'(x"00000000");
            OutputWeightB_LastValue <= '0';
            kernelA := reset_kernelA;
            kernelB := reset_kernelB;
            kernelHeight := reset_kernelHeight;
            kernelWidth := reset_kernelWidth;
            weights := reset_weights;
            lastKernelVal := reset_lastKernelVal;
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END

            OutputValueA_enable <= '0';
            OutputWeightA_enable <= '0';
            OutputValueA_LastValue <= '0';
            OutputValueB_enable <= '0';
            OutputWeightB_enable <= '0';
            OutputValueB_LastValue <= '0';
            if (InputValueA_enable = '1') and (InputValueB_enable = '1') then
                OutputValueA_Value <= InputValueA_Value;
                OutputWeightA_Value <= weights(TO_INTEGER(SIGNED(resize(kernelA, T_SYSTEM_INT32'length))));
                OutputValueB_Value <= InputValueB_Value;
                OutputWeightB_Value <= weights(TO_INTEGER(SIGNED(resize(kernelB, T_SYSTEM_INT32'length))));
                if ((SIGNED(resize(kernelA, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 3)), 32))) or ((SIGNED(resize(kernelB, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 3)), 32))) then
                    lastKernelVal := '1';
                else
                    lastKernelVal := '0';
                end if;
                OutputValueA_LastValue <= lastKernelVal;
                OutputValueA_enable <= '1';
                OutputWeightA_enable <= '1';
                OutputValueB_enable <= '1';
                OutputWeightB_enable <= '1';
                kernelA := (kernelA + TO_UNSIGNED(2, 5)) mod resize((resize(kernelHeight * kernelWidth, 3)), T_UINT5'length);
                if kernelB = TO_UNSIGNED(0, 5) then
                    kernelA := TO_UNSIGNED(0, 5);
                end if;
                kernelB := (kernelA + TO_UNSIGNED(1, 5)) mod resize((resize(kernelHeight * kernelWidth, 3)), T_UINT5'length);
            else
                lastKernelVal := '0';
                kernelA := TO_UNSIGNED(0, 5);
                kernelB := TO_UNSIGNED(1, 5);
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
