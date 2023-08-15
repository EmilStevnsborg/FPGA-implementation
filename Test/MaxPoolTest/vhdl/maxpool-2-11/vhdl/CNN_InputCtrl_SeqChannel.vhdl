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

entity CNN_InputCtrl_SeqChannel is
    generic(
        reset_ii: in T_UINT4;
        reset_jj: in T_UINT4;
        reset_c: in T_UINT3;
        reset_i: in T_UINT2;
        reset_j: in T_UINT2;
        reset_k: in T_UINT2;
        reset_kernelA: in T_UINT4;
        reset_kernelB: in T_UINT4;
        reset_numInChannels: in T_UINT3;
        reset_channelHeight: in T_UINT4;
        reset_channelWidth: in T_UINT4;
        reset_padHeight: in T_UINT1;
        reset_padWidth: in T_UINT1;
        reset_newHeight: in T_UINT4;
        reset_newWidth: in T_UINT4;
        reset_kernelHeight: in T_UINT2;
        reset_kernelWidth: in T_UINT2;
        reset_strideRow: in T_UINT2;
        reset_strideCol: in T_UINT2;
        reset_startRow: in T_UINT4;
        reset_startCol: in T_UINT4;
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
end CNN_InputCtrl_SeqChannel;

architecture RTL of CNN_InputCtrl_SeqChannel is 

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
        variable OnTick_startIdx : T_UINT9;
        variable OnTick_bufferA : T_UINT7;
        variable OnTick_addrA : T_UINT9;
        variable OnTick_w : T_UINT2;
        variable OnTick_h : T_UINT2;
        variable OnTick_bufferB : T_UINT7;
        variable local_var_0 : T_UINT4;
        variable local_var_1 : T_UINT2;
        variable local_var_2 : T_UINT9;
        variable local_var_3 : T_SYSTEM_INT32;
        variable ii : T_UINT4 := reset_ii;
        variable jj : T_UINT4 := reset_jj;
        variable c : T_UINT3 := reset_c;
        variable i : T_UINT2 := reset_i;
        variable j : T_UINT2 := reset_j;
        variable k : T_UINT2 := reset_k;
        variable kernelA : T_UINT4 := reset_kernelA;
        variable kernelB : T_UINT4 := reset_kernelB;
        variable numInChannels : T_UINT3 := reset_numInChannels;
        variable channelHeight : T_UINT4 := reset_channelHeight;
        variable channelWidth : T_UINT4 := reset_channelWidth;
        variable padHeight : T_UINT1 := reset_padHeight;
        variable padWidth : T_UINT1 := reset_padWidth;
        variable newHeight : T_UINT4 := reset_newHeight;
        variable newWidth : T_UINT4 := reset_newWidth;
        variable kernelHeight : T_UINT2 := reset_kernelHeight;
        variable kernelWidth : T_UINT2 := reset_kernelWidth;
        variable strideRow : T_UINT2 := reset_strideRow;
        variable strideCol : T_UINT2 := reset_strideCol;
        variable startRow : T_UINT4 := reset_startRow;
        variable startCol : T_UINT4 := reset_startCol;
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
            OnTick_startIdx := TO_UNSIGNED(0, 9);
            OnTick_bufferA := TO_UNSIGNED(0, 7);
            OnTick_addrA := TO_UNSIGNED(0, 9);
            OnTick_w := TO_UNSIGNED(0, 2);
            OnTick_h := TO_UNSIGNED(0, 2);
            OnTick_bufferB := TO_UNSIGNED(0, 7);
            local_var_0 := TO_UNSIGNED(0, 4);
            local_var_1 := TO_UNSIGNED(0, 2);
            local_var_2 := TO_UNSIGNED(0, 9);
            local_var_3 := TO_SIGNED(0, 32);
            ii := reset_ii;
            jj := reset_jj;
            c := reset_c;
            i := reset_i;
            j := reset_j;
            k := reset_k;
            kernelA := reset_kernelA;
            kernelB := reset_kernelB;
            numInChannels := reset_numInChannels;
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
                    c := TO_UNSIGNED(0, 3);
                    i := TO_UNSIGNED(0, 2);
                    j := TO_UNSIGNED(0, 2);
                    k := TO_UNSIGNED(0, 2);
                    kernelA := TO_UNSIGNED(0, 4);
                    kernelB := TO_UNSIGNED(1, 4);
                end if;
                if Input_enable = '1' then
                    ram_ctrlA_Enabled <= '1';
                    ram_ctrlA_Address <= SIGNED(resize(((resize((ii + resize(padHeight, T_UINT4'length)) * newWidth, 4)) + (jj + resize(padWidth, T_UINT4'length))) + resize((resize((resize(c * resize(newHeight, T_UINT3'length), 3)) * resize(newWidth, T_UINT3'length), 3)), T_UINT4'length), T_SYSTEM_INT32'length));
                    ram_ctrlA_IsWriting <= '1';
                    ram_ctrlA_Data <= Input_Value;
                    jj := resize(UNSIGNED(((SIGNED(resize(jj, 32)) + TO_SIGNED(1, 32)) mod SIGNED(resize(channelWidth, 32)))), T_UINT4'length);
                    if jj = TO_UNSIGNED(0, 4) then
                        local_var_0 := resize(UNSIGNED(((SIGNED(resize(ii, 32)) + TO_SIGNED(1, 32)) mod SIGNED(resize(channelHeight, 32)))), T_UINT4'length);
                    else
                        local_var_0 := ii;
                    end if;
                    ii := local_var_0;
                    if (ii = TO_UNSIGNED(0, 4)) and (jj = TO_UNSIGNED(0, 4)) then
                        if (SIGNED(resize(c, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(numInChannels, 32)) then
                            loaded := '1';
                        else
                            c := c + TO_UNSIGNED(1, 3);
                        end if;
                    end if;
                end if;
            end if;
            OutputValueA_enable <= '0';
            OutputValueB_enable <= '0';
            OutputValueA_LastValue <= '0';
            if bufferValid = '1' then
                OnTick_startIdx := resize((resize((resize(c * resize(newHeight, T_UINT3'length), 3)) * resize(newWidth, T_UINT3'length), 3)), T_UINT9'length);
                OnTick_bufferA := resize(((resize((startRow + resize(i, T_UINT4'length)) * newWidth, 4)) + (startCol + resize(j, T_UINT4'length))), T_UINT7'length);
                OnTick_addrA := OnTick_startIdx + resize(OnTick_bufferA, T_UINT9'length);
                if not (wholeChannel = '1') then
                    ram_ctrlA_Enabled <= '1';
                else
                    ram_ctrlA_Enabled <= '0';
                end if;
                ram_ctrlA_Address <= SIGNED(resize(OnTick_addrA, T_SYSTEM_INT32'length));
                ram_ctrlA_IsWriting <= '0';
                ram_ctrlA_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(OnTick_bufferA, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(newWidth * newHeight, 4)), 32)) then
                        wholeChannel := '1';
                    else
                        wholeChannel := '0';
                    end if;
                else
                    wholeChannel := '1';
                end if;
                OnTick_w := (j + TO_UNSIGNED(1, 2)) mod kernelWidth;
                if OnTick_w = TO_UNSIGNED(0, 2) then
                    local_var_1 := i + TO_UNSIGNED(1, 2);
                else
                    local_var_1 := i;
                end if;
                OnTick_h := local_var_1;
                OnTick_bufferB := resize(((resize((startRow + resize(OnTick_h, T_UINT4'length)) * newWidth, 4)) + (startCol + resize(OnTick_w, T_UINT4'length))), T_UINT7'length);
                if not (wholeChannel = '1') then
                    ram_ctrlB_Enabled <= '1';
                else
                    ram_ctrlB_Enabled <= '0';
                end if;
                if OnTick_bufferB < resize((resize(newHeight * newWidth, 4)), T_UINT7'length) then
                    local_var_2 := OnTick_startIdx + resize(OnTick_bufferB, T_UINT9'length);
                else
                    local_var_2 := OnTick_startIdx;
                end if;
                ram_ctrlB_Address <= SIGNED(resize(local_var_2, T_SYSTEM_INT32'length));
                ram_ctrlB_IsWriting <= '0';
                ram_ctrlB_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(OnTick_bufferB, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(newWidth * newHeight, 4)), 32)) then
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
                            j := TO_UNSIGNED(0, 2);
                            i := TO_UNSIGNED(0, 2);
                            if (startCol + resize(kernelWidth, T_UINT4'length)) = newWidth then
                                startCol := TO_UNSIGNED(0, 4);
                                startRow := startRow + resize(strideRow, T_UINT4'length);
                            else
                                startCol := startCol + resize(strideCol, T_UINT4'length);
                            end if;
                        else
                            j := (j + TO_UNSIGNED(2, 2)) mod kernelWidth;
                            i := i + TO_UNSIGNED(1, 2);
                        end if;
                    else
                        j := j + TO_UNSIGNED(2, 2);
                    end if;
                else
                    if (SIGNED(resize(c, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(numInChannels, 32)) then
                        ii := ii + TO_UNSIGNED(1, 4);
                    else
                        if (SIGNED(resize(c, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(numInChannels, 32)) then
                            wholeChannel := '1';
                        else
                            wholeChannel := '0';
                        end if;
                        c := c + TO_UNSIGNED(1, 3);
                        i := TO_UNSIGNED(0, 2);
                        j := TO_UNSIGNED(0, 2);
                        startRow := TO_UNSIGNED(0, 4);
                        startCol := TO_UNSIGNED(0, 4);
                    end if;
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
                    if ((SIGNED(resize(kernelA, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 2)), 32))) or ((SIGNED(resize(kernelB, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 2)), 32))) then
                        lastKernelVal := '1';
                    else
                        lastKernelVal := '0';
                    end if;
                    OutputValueA_LastValue <= lastKernelVal;
                    if (lastKernelVal = '1') and (ii = TO_UNSIGNED(3, 4)) then
                        bufferValid := '0';
                        ramValid := '0';
                        wholeChannel := '0';
                        lastKernelVal := '0';
                        i := TO_UNSIGNED(0, 2);
                        j := TO_UNSIGNED(0, 2);
                        ii := TO_UNSIGNED(0, 4);
                        k := TO_UNSIGNED(0, 2);
                        startRow := TO_UNSIGNED(0, 4);
                        startCol := TO_UNSIGNED(0, 4);
                        kernelA := TO_UNSIGNED(0, 4);
                        kernelB := TO_UNSIGNED(1, 4);
                    else
                        kernelA := (kernelA + TO_UNSIGNED(2, 4)) mod resize((resize(kernelHeight * kernelWidth, 2)), T_UINT4'length);
                        if kernelB = TO_UNSIGNED(0, 4) then
                            kernelA := TO_UNSIGNED(0, 4);
                        end if;
                        kernelB := (kernelA + TO_UNSIGNED(1, 4)) mod resize((resize(kernelHeight * kernelWidth, 2)), T_UINT4'length);
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
