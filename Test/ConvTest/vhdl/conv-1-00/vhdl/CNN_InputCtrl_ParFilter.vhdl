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

entity CNN_InputCtrl_ParFilter is
    generic(
        reset_ii: in T_UINT5;
        reset_jj: in T_UINT5;
        reset_i: in T_UINT3;
        reset_j: in T_UINT3;
        reset_k: in T_UINT2;
        reset_kernelA: in T_UINT5;
        reset_kernelB: in T_UINT5;
        reset_channelHeight: in T_UINT5;
        reset_channelWidth: in T_UINT5;
        reset_padHeight: in T_UINT1;
        reset_padWidth: in T_UINT1;
        reset_newHeight: in T_UINT5;
        reset_newWidth: in T_UINT5;
        reset_kernelHeight: in T_UINT3;
        reset_kernelWidth: in T_UINT3;
        reset_strideRow: in T_UINT2;
        reset_strideCol: in T_UINT2;
        reset_startRow: in T_UINT5;
        reset_startCol: in T_UINT5;
        reset_bufferValid: in T_SYSTEM_BOOL;
        reset_ramValid: in T_SYSTEM_BOOL;
        reset_loaded: in T_SYSTEM_BOOL;
        reset_wholeChannel: in T_SYSTEM_BOOL;
        reset_lastKernelVal: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL;
        Input_Value: in T_SYSTEM_FLOAT;
        Input_LastValue: in T_SYSTEM_BOOL;
        -- Input bus ram_readA signals
        ram_readA_Data: in T_SYSTEM_FLOAT;
        -- Input bus ram_readB signals
        ram_readB_Data: in T_SYSTEM_FLOAT;

        -- Output bus OutputValueA signals
        OutputValueA_enable: out T_SYSTEM_BOOL;
        OutputValueA_LastValue: out T_SYSTEM_BOOL;
        OutputValueA_Value: out T_SYSTEM_FLOAT;
        -- Output bus OutputValueB signals
        OutputValueB_enable: out T_SYSTEM_BOOL;
        OutputValueB_Value: out T_SYSTEM_FLOAT;
        OutputValueB_LastValue: out T_SYSTEM_BOOL;
        -- Output bus ram_ctrlA signals
        ram_ctrlA_Enabled: out T_SYSTEM_BOOL;
        ram_ctrlA_Address: out T_SYSTEM_INT32;
        ram_ctrlA_IsWriting: out T_SYSTEM_BOOL;
        ram_ctrlA_Data: out T_SYSTEM_FLOAT;
        -- Output bus ram_ctrlB signals
        ram_ctrlB_Enabled: out T_SYSTEM_BOOL;
        ram_ctrlB_Address: out T_SYSTEM_INT32;
        ram_ctrlB_IsWriting: out T_SYSTEM_BOOL;
        ram_ctrlB_Data: out T_SYSTEM_FLOAT;

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
end CNN_InputCtrl_ParFilter;

architecture RTL of CNN_InputCtrl_ParFilter is 

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
        variable OnTick_bufferA : T_UINT10;
        variable OnTick_w : T_UINT3;
        variable OnTick_h : T_UINT3;
        variable OnTick_bufferB : T_UINT10;
        variable local_var_0 : T_UINT5;
        variable local_var_1 : T_UINT3;
        variable local_var_2 : T_UINT10;
        variable local_var_3 : T_SYSTEM_INT32;
        variable ii : T_UINT5 := reset_ii;
        variable jj : T_UINT5 := reset_jj;
        variable i : T_UINT3 := reset_i;
        variable j : T_UINT3 := reset_j;
        variable k : T_UINT2 := reset_k;
        variable kernelA : T_UINT5 := reset_kernelA;
        variable kernelB : T_UINT5 := reset_kernelB;
        variable channelHeight : T_UINT5 := reset_channelHeight;
        variable channelWidth : T_UINT5 := reset_channelWidth;
        variable padHeight : T_UINT1 := reset_padHeight;
        variable padWidth : T_UINT1 := reset_padWidth;
        variable newHeight : T_UINT5 := reset_newHeight;
        variable newWidth : T_UINT5 := reset_newWidth;
        variable kernelHeight : T_UINT3 := reset_kernelHeight;
        variable kernelWidth : T_UINT3 := reset_kernelWidth;
        variable strideRow : T_UINT2 := reset_strideRow;
        variable strideCol : T_UINT2 := reset_strideCol;
        variable startRow : T_UINT5 := reset_startRow;
        variable startCol : T_UINT5 := reset_startCol;
        variable bufferValid : T_SYSTEM_BOOL := reset_bufferValid;
        variable ramValid : T_SYSTEM_BOOL := reset_ramValid;
        variable loaded : T_SYSTEM_BOOL := reset_loaded;
        variable wholeChannel : T_SYSTEM_BOOL := reset_wholeChannel;
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
            OutputValueB_enable <= '0';
            OutputValueB_Value <= std_logic_vector'(x"00000000");
            OutputValueB_LastValue <= '0';
            ram_ctrlA_Enabled <= '0';
            ram_ctrlA_Address <= TO_SIGNED(0, 32);
            ram_ctrlA_IsWriting <= '0';
            ram_ctrlA_Data <= std_logic_vector'(x"00000000");
            ram_ctrlB_Enabled <= '0';
            ram_ctrlB_Address <= TO_SIGNED(0, 32);
            ram_ctrlB_IsWriting <= '0';
            ram_ctrlB_Data <= std_logic_vector'(x"00000000");
            OnTick_bufferA := TO_UNSIGNED(0, 10);
            OnTick_w := TO_UNSIGNED(0, 3);
            OnTick_h := TO_UNSIGNED(0, 3);
            OnTick_bufferB := TO_UNSIGNED(0, 10);
            local_var_0 := TO_UNSIGNED(0, 5);
            local_var_1 := TO_UNSIGNED(0, 3);
            local_var_2 := TO_UNSIGNED(0, 10);
            local_var_3 := TO_SIGNED(0, 32);
            ii := reset_ii;
            jj := reset_jj;
            i := reset_i;
            j := reset_j;
            k := reset_k;
            kernelA := reset_kernelA;
            kernelB := reset_kernelB;
            channelHeight := reset_channelHeight;
            channelWidth := reset_channelWidth;
            padHeight := reset_padHeight;
            padWidth := reset_padWidth;
            newHeight := reset_newHeight;
            newWidth := reset_newWidth;
            kernelHeight := reset_kernelHeight;
            kernelWidth := reset_kernelWidth;
            strideRow := reset_strideRow;
            strideCol := reset_strideCol;
            startRow := reset_startRow;
            startCol := reset_startCol;
            bufferValid := reset_bufferValid;
            ramValid := reset_ramValid;
            loaded := reset_loaded;
            wholeChannel := reset_wholeChannel;
            lastKernelVal := reset_lastKernelVal;
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END

            if not (bufferValid = '1') then
                if loaded = '1' then
                    bufferValid := '1';
                    loaded := '0';
                    i := TO_UNSIGNED(0, 3);
                    j := TO_UNSIGNED(0, 3);
                    k := TO_UNSIGNED(0, 2);
                    kernelA := TO_UNSIGNED(0, 5);
                    kernelB := TO_UNSIGNED(1, 5);
                end if;
                if Input_enable = '1' then
                    ram_ctrlA_Enabled <= '1';
                    ram_ctrlA_Address <= SIGNED(resize((resize((ii + resize(padHeight, T_UINT5'length)) * newWidth, 5)) + (jj + resize(padWidth, T_UINT5'length)), T_SYSTEM_INT32'length));
                    ram_ctrlA_IsWriting <= '1';
                    ram_ctrlA_Data <= Input_Value;
                    jj := (jj + TO_UNSIGNED(1, 5)) mod channelWidth;
                    if jj = TO_UNSIGNED(0, 5) then
                        local_var_0 := (ii + TO_UNSIGNED(1, 5)) mod channelHeight;
                    else
                        local_var_0 := ii;
                    end if;
                    ii := local_var_0;
                    if (ii = TO_UNSIGNED(0, 5)) and (jj = TO_UNSIGNED(0, 5)) then
                        loaded := '1';
                    else
                        loaded := '0';
                    end if;
                end if;
            end if;
            OutputValueA_enable <= '0';
            OutputValueB_enable <= '0';
            OutputValueA_LastValue <= '0';
            if bufferValid = '1' then
                OnTick_bufferA := resize(((resize((startRow + resize(i, T_UINT5'length)) * newWidth, 5)) + (startCol + resize(j, T_UINT5'length))), T_UINT10'length);
                if not (wholeChannel = '1') then
                    ram_ctrlA_Enabled <= '1';
                else
                    ram_ctrlA_Enabled <= '0';
                end if;
                ram_ctrlA_Address <= SIGNED(resize(OnTick_bufferA, T_SYSTEM_INT32'length));
                ram_ctrlA_IsWriting <= '0';
                ram_ctrlA_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(OnTick_bufferA, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(newWidth * newHeight, 5)), 32)) then
                        wholeChannel := '1';
                    else
                        wholeChannel := '0';
                    end if;
                else
                    wholeChannel := '1';
                end if;
                OnTick_w := (j + TO_UNSIGNED(1, 3)) mod kernelWidth;
                if OnTick_w = TO_UNSIGNED(0, 3) then
                    local_var_1 := i + TO_UNSIGNED(1, 3);
                else
                    local_var_1 := i;
                end if;
                OnTick_h := local_var_1;
                OnTick_bufferB := resize(((resize((startRow + resize(OnTick_h, T_UINT5'length)) * newWidth, 5)) + (startCol + resize(OnTick_w, T_UINT5'length))), T_UINT10'length);
                if not (wholeChannel = '1') then
                    ram_ctrlB_Enabled <= '1';
                else
                    ram_ctrlB_Enabled <= '0';
                end if;
                if OnTick_bufferB < resize((resize(newHeight * newWidth, 5)), T_UINT10'length) then
                    local_var_2 := OnTick_bufferB;
                else
                    local_var_2 := TO_UNSIGNED(0, 10);
                end if;
                ram_ctrlB_Address <= SIGNED(resize(local_var_2, T_SYSTEM_INT32'length));
                ram_ctrlB_IsWriting <= '0';
                ram_ctrlB_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(OnTick_bufferB, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(newWidth * newHeight, 5)), 32)) then
                        wholeChannel := '1';
                    else
                        wholeChannel := '0';
                    end if;
                else
                    wholeChannel := '1';
                end if;
                if k >= TO_UNSIGNED(2, 2) then
                    ramValid := '1';
                else
                    ramValid := '0';
                end if;
                if not (ramValid = '1') then
                    k := k + TO_UNSIGNED(1, 2);
                end if;
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(j, 32)) + TO_SIGNED(2, 32)) >= SIGNED(resize(kernelWidth, 32)) then
                        if (SIGNED(resize(i, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(kernelHeight, 32)) then
                            j := TO_UNSIGNED(0, 3);
                            i := TO_UNSIGNED(0, 3);
                            if (startCol + resize(kernelWidth, T_UINT5'length)) = newWidth then
                                startCol := TO_UNSIGNED(0, 5);
                                startRow := startRow + resize(strideRow, T_UINT5'length);
                            else
                                startCol := startCol + resize(strideCol, T_UINT5'length);
                            end if;
                        else
                            j := (j + TO_UNSIGNED(2, 3)) mod kernelWidth;
                            i := i + TO_UNSIGNED(1, 3);
                        end if;
                    else
                        j := j + TO_UNSIGNED(2, 3);
                    end if;
                else
                    ii := ii + TO_UNSIGNED(1, 5);
                end if;
                if ramValid = '1' then
                    OutputValueA_Value <= ram_readA_Data;
                    if kernelA > kernelB then
                        local_var_3 := TO_SIGNED(0, 32);
                    else
                        local_var_3 := SIGNED(ram_readB_Data);
                    end if;
                    OutputValueB_Value <= STD_LOGIC_VECTOR(local_var_3);
                    OutputValueB_enable <= '1';
                    OutputValueA_enable <= '1';
                    if ((SIGNED(resize(kernelA, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 3)), 32))) or ((SIGNED(resize(kernelB, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 3)), 32))) then
                        lastKernelVal := '1';
                    else
                        lastKernelVal := '0';
                    end if;
                    OutputValueA_LastValue <= lastKernelVal;
                    if (lastKernelVal = '1') and (ii = TO_UNSIGNED(3, 5)) then
                        bufferValid := '0';
                        ramValid := '0';
                        wholeChannel := '0';
                        lastKernelVal := '0';
                        i := TO_UNSIGNED(0, 3);
                        j := TO_UNSIGNED(0, 3);
                        ii := TO_UNSIGNED(0, 5);
                        k := TO_UNSIGNED(0, 2);
                        startRow := TO_UNSIGNED(0, 5);
                        startCol := TO_UNSIGNED(0, 5);
                        kernelA := TO_UNSIGNED(0, 5);
                        kernelB := TO_UNSIGNED(1, 5);
                    else
                        kernelA := (kernelA + TO_UNSIGNED(2, 5)) mod resize((resize(kernelHeight * kernelWidth, 3)), T_UINT5'length);
                        if kernelB = TO_UNSIGNED(0, 5) then
                            kernelA := TO_UNSIGNED(0, 5);
                        end if;
                        kernelB := (kernelA + TO_UNSIGNED(1, 5)) mod resize((resize(kernelHeight * kernelWidth, 3)), T_UINT5'length);
                    end if;
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
