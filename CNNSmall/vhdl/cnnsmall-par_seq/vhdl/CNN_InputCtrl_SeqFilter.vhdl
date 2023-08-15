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

entity CNN_InputCtrl_SeqFilter is
    generic(
        reset_ii: in T_UINT4;
        reset_jj: in T_UINT4;
        reset_i: in T_UINT3;
        reset_j: in T_UINT3;
        reset_k: in T_UINT3;
        reset_numOutChannels: in T_UINT3;
        reset_c: in T_UINT3;
        reset_inputAdress: in T_UINT9;
        reset_kernelIdx: in T_UINT5;
        reset_weightAdress: in T_UINT9;
        reset_channelHeight: in T_UINT4;
        reset_channelWidth: in T_UINT4;
        reset_padHeight: in T_UINT1;
        reset_padWidth: in T_UINT1;
        reset_newHeight: in T_UINT4;
        reset_newWidth: in T_UINT4;
        reset_kernelHeight: in T_UINT3;
        reset_kernelWidth: in T_UINT3;
        reset_strideRow: in T_UINT1;
        reset_strideCol: in T_UINT1;
        reset_startRow: in T_UINT4;
        reset_startCol: in T_UINT4;
        reset_bufferValid: in T_SYSTEM_BOOL;
        reset_ramValid: in T_SYSTEM_BOOL;
        reset_loaded: in T_SYSTEM_BOOL;
        reset_wholeChannel: in T_SYSTEM_BOOL;
        reset_lastKernelValue: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL;
        Input_Value: in T_SYSTEM_FLOAT;
        Input_LastValue: in T_SYSTEM_BOOL;
        -- Input bus ram_readValue signals
        ram_readValue_Data: in T_SYSTEM_FLOAT;
        -- Input bus ram_readWeight signals
        ram_readWeight_Data: in T_SYSTEM_FLOAT;

        -- Output bus OutputValue signals
        OutputValue_enable: out T_SYSTEM_BOOL;
        OutputValue_LastValue: out T_SYSTEM_BOOL;
        OutputValue_Value: out T_SYSTEM_FLOAT;
        -- Output bus OutputWeight signals
        OutputWeight_enable: out T_SYSTEM_BOOL;
        OutputWeight_Value: out T_SYSTEM_FLOAT;
        OutputWeight_LastValue: out T_SYSTEM_BOOL;
        -- Output bus ram_ctrlValue signals
        ram_ctrlValue_Enabled: out T_SYSTEM_BOOL;
        ram_ctrlValue_Address: out T_SYSTEM_INT32;
        ram_ctrlValue_IsWriting: out T_SYSTEM_BOOL;
        ram_ctrlValue_Data: out T_SYSTEM_FLOAT;
        -- Output bus ram_ctrlWeight signals
        ram_ctrlWeight_Enabled: out T_SYSTEM_BOOL;
        ram_ctrlWeight_Address: out T_SYSTEM_INT32;
        ram_ctrlWeight_IsWriting: out T_SYSTEM_BOOL;
        ram_ctrlWeight_Data: out T_SYSTEM_FLOAT;

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
end CNN_InputCtrl_SeqFilter;

architecture RTL of CNN_InputCtrl_SeqFilter is 

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
        variable local_var_0 : T_UINT4;
        variable ii : T_UINT4 := reset_ii;
        variable jj : T_UINT4 := reset_jj;
        variable i : T_UINT3 := reset_i;
        variable j : T_UINT3 := reset_j;
        variable k : T_UINT3 := reset_k;
        variable numOutChannels : T_UINT3 := reset_numOutChannels;
        variable c : T_UINT3 := reset_c;
        variable inputAdress : T_UINT9 := reset_inputAdress;
        variable kernelIdx : T_UINT5 := reset_kernelIdx;
        variable weightAdress : T_UINT9 := reset_weightAdress;
        variable channelHeight : T_UINT4 := reset_channelHeight;
        variable channelWidth : T_UINT4 := reset_channelWidth;
        variable padHeight : T_UINT1 := reset_padHeight;
        variable padWidth : T_UINT1 := reset_padWidth;
        variable newHeight : T_UINT4 := reset_newHeight;
        variable newWidth : T_UINT4 := reset_newWidth;
        variable kernelHeight : T_UINT3 := reset_kernelHeight;
        variable kernelWidth : T_UINT3 := reset_kernelWidth;
        variable strideRow : T_UINT1 := reset_strideRow;
        variable strideCol : T_UINT1 := reset_strideCol;
        variable startRow : T_UINT4 := reset_startRow;
        variable startCol : T_UINT4 := reset_startCol;
        variable bufferValid : T_SYSTEM_BOOL := reset_bufferValid;
        variable ramValid : T_SYSTEM_BOOL := reset_ramValid;
        variable loaded : T_SYSTEM_BOOL := reset_loaded;
        variable wholeChannel : T_SYSTEM_BOOL := reset_wholeChannel;
        variable lastKernelValue : T_SYSTEM_BOOL := reset_lastKernelValue;


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
            OutputWeight_Value <= std_logic_vector'(x"00000000");
            OutputWeight_LastValue <= '0';
            ram_ctrlValue_Enabled <= '0';
            ram_ctrlValue_Address <= TO_SIGNED(0, 32);
            ram_ctrlValue_IsWriting <= '0';
            ram_ctrlValue_Data <= std_logic_vector'(x"00000000");
            ram_ctrlWeight_Enabled <= '0';
            ram_ctrlWeight_Address <= TO_SIGNED(0, 32);
            ram_ctrlWeight_IsWriting <= '0';
            ram_ctrlWeight_Data <= std_logic_vector'(x"00000000");
            local_var_0 := TO_UNSIGNED(0, 4);
            ii := reset_ii;
            jj := reset_jj;
            i := reset_i;
            j := reset_j;
            k := reset_k;
            numOutChannels := reset_numOutChannels;
            c := reset_c;
            inputAdress := reset_inputAdress;
            kernelIdx := reset_kernelIdx;
            weightAdress := reset_weightAdress;
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
            lastKernelValue := reset_lastKernelValue;
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
                    k := TO_UNSIGNED(0, 3);
                    c := TO_UNSIGNED(0, 3);
                    inputAdress := TO_UNSIGNED(0, 9);
                    kernelIdx := TO_UNSIGNED(0, 5);
                    weightAdress := TO_UNSIGNED(0, 9);
                end if;
                if Input_enable = '1' then
                    ram_ctrlValue_Enabled <= '1';
                    ram_ctrlValue_Address <= SIGNED(resize((resize((ii + resize(padHeight, T_UINT4'length)) * newWidth, 4)) + (jj + resize(padWidth, T_UINT4'length)), T_SYSTEM_INT32'length));
                    ram_ctrlValue_IsWriting <= '1';
                    ram_ctrlValue_Data <= Input_Value;
                    jj := (jj + TO_UNSIGNED(1, 4)) mod channelWidth;
                    if jj = TO_UNSIGNED(0, 4) then
                        local_var_0 := (ii + TO_UNSIGNED(1, 4)) mod channelHeight;
                    else
                        local_var_0 := ii;
                    end if;
                    ii := local_var_0;
                    if (ii = TO_UNSIGNED(0, 4)) and (jj = TO_UNSIGNED(0, 4)) then
                        loaded := '1';
                    else
                        loaded := '0';
                    end if;
                end if;
            end if;
            OutputValue_enable <= '0';
            OutputWeight_enable <= '0';
            OutputValue_LastValue <= '0';
            if bufferValid = '1' then
                inputAdress := resize(((resize((startRow + resize(i, T_UINT4'length)) * newWidth, 4)) + (startCol + resize(j, T_UINT4'length))), T_UINT9'length);
                if not (wholeChannel = '1') then
                    ram_ctrlValue_Enabled <= '1';
                else
                    ram_ctrlValue_Enabled <= '0';
                end if;
                ram_ctrlValue_Address <= SIGNED(resize(inputAdress, T_SYSTEM_INT32'length));
                ram_ctrlValue_IsWriting <= '0';
                ram_ctrlValue_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                weightAdress := resize((((resize(newWidth * newHeight, 4)) + resize((resize((resize(c * kernelHeight, 3)) * kernelWidth, 3)), T_UINT4'length)) + resize(kernelIdx, T_UINT4'length)), T_UINT9'length);
                if not (wholeChannel = '1') then
                    ram_ctrlWeight_Enabled <= '1';
                else
                    ram_ctrlWeight_Enabled <= '0';
                end if;
                ram_ctrlWeight_Address <= SIGNED(resize(weightAdress, T_SYSTEM_INT32'length));
                ram_ctrlWeight_IsWriting <= '0';
                ram_ctrlWeight_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(inputAdress, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(newWidth * newHeight, 4)), 32)) then
                        wholeChannel := '1';
                    else
                        wholeChannel := '0';
                    end if;
                else
                    wholeChannel := '1';
                end if;
                if k >= TO_UNSIGNED(2, 3) then
                    ramValid := '1';
                else
                    ramValid := '0';
                end if;
                if not (ramValid = '1') then
                    k := k + TO_UNSIGNED(1, 3);
                end if;
                if not (wholeChannel = '1') then
                    if (SIGNED(resize(j, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(kernelWidth, 32)) then
                        if (SIGNED(resize(i, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(kernelHeight, 32)) then
                            j := TO_UNSIGNED(0, 3);
                            i := TO_UNSIGNED(0, 3);
                            if (startCol + resize(kernelWidth, T_UINT4'length)) = newWidth then
                                startCol := TO_UNSIGNED(0, 4);
                                startRow := startRow + resize(strideRow, T_UINT4'length);
                            else
                                startCol := startCol + resize(strideCol, T_UINT4'length);
                            end if;
                        else
                            j := TO_UNSIGNED(0, 3);
                            i := i + TO_UNSIGNED(1, 3);
                        end if;
                    else
                        j := j + TO_UNSIGNED(1, 3);
                    end if;
                else
                    if (SIGNED(resize(c, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(numOutChannels, 32)) then
                        ii := ii + TO_UNSIGNED(1, 4);
                    else
                        if (SIGNED(resize(c, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(numOutChannels, 32)) then
                            wholeChannel := '1';
                        else
                            wholeChannel := '0';
                        end if;
                        c := c + TO_UNSIGNED(1, 3);
                        i := TO_UNSIGNED(0, 3);
                        j := TO_UNSIGNED(0, 3);
                        startRow := TO_UNSIGNED(0, 4);
                        startCol := TO_UNSIGNED(0, 4);
                    end if;
                end if;
                if lastKernelValue = '1' then
                    jj := jj + TO_UNSIGNED(1, 4);
                else
                    if (SIGNED(resize(kernelIdx, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize((resize(kernelHeight * kernelWidth, 3)), 32)) then
                        lastKernelValue := '1';
                    else
                        lastKernelValue := '0';
                    end if;
                end if;
                kernelIdx := resize(UNSIGNED(((SIGNED(resize(kernelIdx, 32)) + TO_SIGNED(1, 32)) mod SIGNED(resize((resize(kernelHeight * kernelWidth, 3)), 32)))), T_UINT5'length);
                if ramValid = '1' then
                    OutputValue_Value <= ram_readValue_Data;
                    OutputWeight_Value <= ram_readWeight_Data;
                    OutputWeight_enable <= '1';
                    OutputValue_enable <= '1';
                    if jj = TO_UNSIGNED(2, 4) then
                        OutputValue_LastValue <= '1';
                        lastKernelValue := '0';
                        jj := TO_UNSIGNED(0, 4);
                    end if;
                    if (ii = TO_UNSIGNED(3, 4)) and ((SIGNED(resize(c, 32)) + TO_SIGNED(1, 32)) = SIGNED(resize(numOutChannels, 32))) then
                        bufferValid := '0';
                        ramValid := '0';
                        wholeChannel := '0';
                        i := TO_UNSIGNED(0, 3);
                        j := TO_UNSIGNED(0, 3);
                        ii := TO_UNSIGNED(0, 4);
                        k := TO_UNSIGNED(0, 3);
                        startRow := TO_UNSIGNED(0, 4);
                        startCol := TO_UNSIGNED(0, 4);
                        kernelIdx := TO_UNSIGNED(0, 5);
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
