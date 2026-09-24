# Signal

中文：布尔值和数值信号处理工具：边沿检测、延迟、滤波和倒计数。
English: Signal conditioning on booleans and numbers: edges, latency, filtering and countdown.

9 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Signal`.

## Change Keeped Value.vim

中文：在多次调用之间保留一个值：当 change? 为 TRUE 时，输出采用新值；当 change? 为 FALSE 时，输出保持上一次接受的值。
English: Holds a value across calls: the output follows the new value while change? is TRUE, and keeps the last accepted value while change? is FALSE.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Change Keeped Value.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `change?` : `bool` *(required)*
  - `new value` : `double` *(required)*
- **Outputs**:
  - `keeped value` : `double`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
If the change? terminal is set to TRUE, the VI outputs the keeped value that is same as the input new value. If the change? terminal is set to FALSE, the VI ignores the incoming latest new value and returns the value from the last execution or iteration when the change? terminal is set to TRUE.


</pre>

</details>

## Falling Edge.vi

中文：当 Signal 从 TRUE 变为 FALSE 时，仅在一次调用中返回 TRUE。
English: Returns TRUE for one call when signal changes from TRUE to FALSE.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Falling Edge.vi`
- **Kind**: VI
- **Inputs**:
  - `signal` : `bool` *(required)*
- **Outputs**:
  - `falling edge` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
To detect signal falling edge from boolean 1 to 0.
</pre>

</details>

## Number Count Down.vi

中文：多态封装 VI：每次调用将数值减一，既可处理单个值，也可处理数组中的每个元素。
English: Polymorphic wrapper that counts a number down once per call, for a single value or for every element of an array.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Number Count Down.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `_Number Count Down(Element).vi`, `_Number Count Down(Array).vi`

## Rising Edge.vi

中文：当 Signal 从 FALSE 变为 TRUE 时，仅在一次调用中返回 TRUE。
English: Returns TRUE for one call when signal changes from FALSE to TRUE.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Rising Edge.vi`
- **Kind**: VI
- **Inputs**:
  - `signal` : `bool` *(required)*
- **Outputs**:
  - `rising edge` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
To detect signal rising edge from boolean 0 to 1.
</pre>

</details>

## Signal Change Detector with Period.vim

中文：测量 Signal 保持不变的时长；当该时长仍在目标周期 (ms) 内时返回 TRUE。将 reset(F) 连线可重新开始测量。
English: Measures how long Signal has been unchanged and returns TRUE while that time is still within the target period (ms). Wire reset(F) to restart the measurement.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Signal Change Detector with Period.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `reset(F)` : `bool`
  - `Target Period(ms)` : `uint32`
  - `Signal` : `bool`
- **Outputs**:
  - `Elapsed Time(ms)` : `uint32`
  - `Unchanged in Period?` : `bool`
- **Calls**: `Change Keeped Value.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Indicates the time that has elapsed since signal changed and also reture true if the setting time period elapsed.
</pre>

</details>

## Signal Change with Latency.vim

中文：跟随 Signal，但对两个方向的状态转换都应用 timing duration (ms)，因此持续时间短于该时长的变化会被滤除。此 VI 还会返回自上次变化以来经过的时间。
English: Follows Signal but applies the timing duration (ms) to both transitions, so a change shorter than that duration is filtered out. The time elapsed since the last change is returned as well.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Signal Change with Latency.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `reset(F)` : `bool` *(required)*
  - `Duration(ms)` : `uint32` *(required)*
  - `reset value` : `bool` *(required)*
  - `Signal` : `bool` *(required)*
- **Outputs**:
  - `Elapsed Time(ms)` : `uint32`
  - `signal(safe)` : `bool`
- **Calls**: `Change Keeped Value.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
The output signal(safe) follows input signal. Signal(safe) turns F and T with a delay of setting time.
</pre>

</details>

## Toggle Output(U64).vi

中文：每当迭代计数达到设定周期时，切换 Signal 输出。将 reset(F) 连线可重新开始切换周期。
English: Toggles the Signal output every time the iteration count reaches the configured period. Wire reset(F) to restart the toggle period.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Toggle Output(U64).vi`
- **Kind**: VI
- **Inputs**:
  - `Iteration Count` : `uint64` *(required)*
  - `reset(F)` : `bool`
- **Outputs**:
  - `Signal` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Setting numbers of iteration as toggle period.
</pre>

</details>

## Turn F Immediatly But Ture T with Latency.vi

中文：跟随 Signal；输出立即变为 FALSE，但变为 TRUE 的转换会延迟 timing duration (ms)。
English: Follows Signal, turning the output FALSE immediately but delaying the transition to TRUE by the timing duration (ms).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Turn F Immediatly But Ture T with Latency.vi`
- **Kind**: VI
- **Inputs**:
  - `Reset(F)` : `bool`
  - `Duration(ms)` : `uint32` *(required)*
  - `Signal` : `bool` *(required)*
- **Outputs**:
  - `Elapsed Time(ms)` : `uint32`
  - `signal(safe)` : `bool`
- **Calls**: `Change Keeped Value.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
The output signal(safe) follows input signal. Signal(safe) turns F immediately and turns T with a delay of setting time.
</pre>

</details>

## Turn T Immediatly But Ture F with Latency.vi

中文：跟随 Signal；输出立即变为 TRUE，但变为 FALSE 的转换会延迟 timing duration (ms)。
English: Follows Signal, turning the output TRUE immediately but delaying the transition to FALSE by the timing duration (ms).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Signal/Turn T Immediatly But Ture F with Latency.vi`
- **Kind**: VI
- **Inputs**:
  - `Reset(F)` : `bool`
  - `Duration(ms)` : `uint32` *(required)*
  - `Signal` : `bool` *(required)*
- **Outputs**:
  - `Elapsed Time(ms)` : `uint32`
  - `signal(safe)` : `bool`
- **Calls**: `Change Keeped Value.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
The output signal(safe) follows input signal. Signal(safe) turns T immediately and turns F with a delay of setting time.
</pre>

</details>
