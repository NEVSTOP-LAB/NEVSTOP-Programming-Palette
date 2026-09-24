# Time

中文：计时辅助工具：周期性触发、超时、已用时间和循环节拍控制。
English: Timing helpers: periodic triggers, timeouts, elapsed time and pacing.

9 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Time`.

## Background UI Trigger Timer.vi

中文：在后台监视 VI，并按 Backstage Update Period (ms) 指定的间隔检查其前面板是否最大化、还原或更新；发生这些情况时返回 TRUE。
English: Monitors a VI in the background and returns TRUE when its front panel is maximised, restored or updated, checked at the Backstage Update Period (ms) interval.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Background UI Trigger Timer.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Backstage Update Period (ms)` : `int32`
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Triggered` : `bool`
  - `VI Ref (calling VI) out` : `ref{LV.VI}`
- **Calls**: `Periodic Trigger Timer.vi`, `Using ParentVIRef If Input Invalid.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Detects the running state of the VI in the background and triggers when the VI is maximized, standardized or updated.
</pre>

</details>

## Diff Timer.vi

中文：返回自上次调用以来经过的时间（秒），该时间由高分辨率相对秒计数器测得。
English: Returns the time in seconds since the previous call, measured with the high-resolution relative seconds counter.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Diff Timer.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `time diff(s)` : `double`
- **Calls**: `High Resolution Relative Seconds.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Detects the time difference of each cycle of VI operation.
</pre>

</details>

## Get Time in Second with Error Input.vi

中文：以时间戳形式返回当前时间（秒），并原样传递错误簇。
English: Returns the current time in seconds as a timestamp and passes the error cluster through.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Get Time in Second with Error Input.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `current time` : `timestamp`

## Periodic Trigger Timer.vi

中文：每个时间间隔返回一次 TRUE，其余时间返回 FALSE。将 reset 连线可重新开始计时。
English: Returns TRUE once per time interval and FALSE the rest of the time. Wire reset to restart the interval.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Periodic Trigger Timer.vi`
- **Kind**: VI
- **Inputs**:
  - `time (ms)` : `uint32` *(required)*
  - `reset` : `bool`
- **Outputs**:
  - `Triggered` : `bool`
  - `time since last call` : `uint32`
  - `timer value` : `uint32`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI will periodically output a Boolean TRUE on a specified time interval.  The internal timer's counter can be reset to zero, via the "reset" Boolean input. 
</pre>

</details>

## Tick Count (ms).vi

中文：返回 Tick Count (ms) 原语的毫秒计时值，并增加 error in 和 error out 端子。
English: Returns the millisecond timer value of the Tick Count (ms) primitive with error in and error out terminals added.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Tick Count (ms).vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `millisecond timer value` : `uint32`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Tick Count (ms) primitive with added error handling
</pre>

</details>

## TimeKeeper(ms).vi

中文：等待指定的周期，同时返回已用时间，从而使循环按固定周期运行。将 Reset?(F) 连线可重新开始计时。
English: Holds for the configured period while returning the elapsed time, so a loop can be paced to a fixed period. Wire Reset?(F) to restart.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/TimeKeeper(ms).vi`
- **Kind**: VI
- **Inputs**:
  - `Reset?(F)` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Period(ms)` : `int32` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Idle(ms)` : `int32`
  - `Used(ms)` : `int32`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Enter a period and this VI will hold for a period of time based on the input while returning the elapsed time.
</pre>

</details>

## Timeout Timer.vi

中文：报告指定的超时是否已经到期，并返回自计时器上次重置以来经过的时间。
English: Reports whether the configured timeout has elapsed and returns the time since the timer was last reset.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Timeout Timer.vi`
- **Kind**: VI
- **Inputs**:
  - `reset?(F)` : `bool`
  - `timeout(s)` : `double` *(required)*
- **Outputs**:
  - `timeout?` : `bool`
  - `time elapsed?` : `double`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Enter the desired timeout and this VI will tell you whether to time out or not.
</pre>

</details>

## Use Current Time If Input is Empty.vi

中文：原样传递时间戳；若输入时间戳为空，则替换为当前时间。
English: Passes a timestamp through unchanged, and substitutes the current time when the input timestamp is empty.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Use Current Time If Input is Empty.vi`
- **Kind**: VI
- **Inputs**:
  - `Time(Empty to Use Current Time)` : `timestamp` *(required)*
- **Outputs**:
  - `Time out` : `timestamp`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Input a timestamp and output it directly when the timestamp is normal, and output the correct timestamp according to the current time when the timestamp is empty.
</pre>

</details>

## Wait If Error(ms).vi

中文：等待指定的毫秒数，并原样传递错误簇。
English: Waits the given number of milliseconds and passes the error cluster through unchanged.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Wait If Error(ms).vi`
- **Kind**: VI
- **Inputs**:
  - `milliseconds to wait(100ms)` : `uint32` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `millisecond timer value` : `uint32`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
