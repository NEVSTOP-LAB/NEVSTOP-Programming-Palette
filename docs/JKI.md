# JKI

中文：JKI state machine helpers and state iterators.
English: JKI state machine helpers and state iterators.

5 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/JKI`.

## JKI Insert State by Bool.vi

中文：Builds the next JKI state string from a boolean: the string wired to TRUE(Empty) or False(Empty) is inserted, before or after Remaining States depending on High Priority(FALSE).
English: Builds the next JKI state string from a boolean: the string wired to TRUE(Empty) or False(Empty) is inserted, before or after Remaining States depending on High Priority(FALSE).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/JKI/JKI Insert State by Bool.vi`
- **Kind**: VI
- **Inputs**:
  - `False(Empty)` : `string`
  - `TRUE(Empty)` : `string`
  - `High Priority(FALSE)` : `bool`
  - `Bool` : `bool` *(required)*
  - `Remaining States` : `string` *(required)*
- **Outputs**:
  - `States Out` : `string`
- **Calls**: `Add State(s) to Queue__JKI_lib_State_Machine.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Depending on the High Priority and Bool input, this VI generates a concatenated state of TRUE/False and Remaning States. The High Priority input determines if the TRUE or False string concatenates before/after the remaining states. The Bool input determines whether TRUE or False string to be concatenated.
</pre>

</details>

## JKI State Machine.vi

中文：JKI State Machine template with linked message, data and error tunnels and the OK button event case removed. Use it as the starting point for a JKI state machine.
English: JKI State Machine template with linked message, data and error tunnels and the OK button event case removed. Use it as the starting point for a JKI state machine.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/JKI/JKI State Machine.vi`
- **Kind**: VI
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Add State(s) to Queue__JKI_lib_State_Machine.vi`, `Parse State Queue__JKI_lib_State_Machine.vi`, `Error Cluster From Error Code.vi`, `General Error Handler.vi`, `Unset Busy.vi`, `Set Busy.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Same as JKI State Machine Template. Linked message,data and error tunnels. Remove OK button Event case.
</pre>

</details>

## State Iterator With Stop.vim

中文：Iterates a state enum from Start State to End State one value per call. When Stop? is TRUE the current iteration is still completed, so the iteration always ends on End State.
English: Iterates a state enum from Start State to End State one value per call. When Stop? is TRUE the current iteration is still completed, so the iteration always ends on End State.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/JKI/State Iterator With Stop.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Start State` : `int32`
  - `SM Typedef` : `uint16{读取输入物理通道数据,处理逻辑通道,更新输出物理通道,时间控制}` *(required)*
  - `Stop?` : `bool`
  - `End State` : `int32`
- **Outputs**:
  - `State` : `uint16{读取输入物理通道数据,处理逻辑通道,更新输出物理通道,时间控制}`
  - `Terminal Loop?` : `bool`
- **Calls**: `_reuse_openG.lvlib:Get Strings from Enum.vi`, `Number To Enum.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI iterates the states specified from Start State to End State in StateMachine Enum input sequentially. If the Stop Button is triggered, the VI continues to finish the current iteration, that is to the end state of StateMachine Enum.
</pre>

</details>

## State Iterator(Advance).vim

中文：Iterates a state enum from Start State to End State, one value per call, advancing by index.
English: Iterates a state enum from Start State to End State, one value per call, advancing by index.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/JKI/State Iterator(Advance).vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Start State` : `int32`
  - `SM Typedef` : `uint16{读取输入物理通道数据,处理逻辑通道,更新输出物理通道,时间控制}` *(required)*
  - `End State` : `int32`
- **Outputs**:
  - `State` : `uint16{读取输入物理通道数据,处理逻辑通道,更新输出物理通道,时间控制}`
- **Calls**: `_reuse_openG.lvlib:Get Strings from Enum.vi`, `Number To Enum.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI iterates states specified by the indexes in StateMachine Enum input sequentially.
</pre>

</details>

## State Iterator.vim

中文：Iterates a state enum one value per call, wrapping back to the first state after the last one.
English: Iterates a state enum one value per call, wrapping back to the first state after the last one.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/JKI/State Iterator.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `StateMachine Typedef` : `uint16{读取输入物理通道数据,处理逻辑通道,更新输出物理通道,时间控制}` *(required)*
- **Outputs**:
  - `State` : `uint16{读取输入物理通道数据,处理逻辑通道,更新输出物理通道,时间控制}`
- **Calls**: `_reuse_openG.lvlib:Get Strings from Enum.vi`, `Number To Enum.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI iterates states in StateMachine Enum input sequentially.
</pre>

</details>
