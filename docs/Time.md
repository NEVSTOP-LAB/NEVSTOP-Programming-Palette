# Time

Timing helpers: periodic triggers, timeouts, elapsed time and pacing.

9 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Time`.

## Background UI Trigger Timer.vi

Monitors a VI in the background and returns TRUE when its front panel is maximised, restored or updated, checked at the Backstage Update Period (ms) interval.

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

Returns the time in seconds since the previous call, measured with the high-resolution relative seconds counter.

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

Returns the current time in seconds as a timestamp and passes the error cluster through.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Get Time in Second with Error Input.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `current time` : `timestamp`

## Periodic Trigger Timer.vi

Returns TRUE once per time interval and FALSE the rest of the time. Wire reset to restart the interval.

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

Returns the millisecond timer value of the Tick Count (ms) primitive with error in and error out terminals added.

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

Holds for the configured period while returning the elapsed time, so a loop can be paced to a fixed period. Wire Reset?(F) to restart.

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

Reports whether the configured timeout has elapsed and returns the time since the timer was last reset.

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

Passes a timestamp through unchanged, and substitutes the current time when the input timestamp is empty.

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

Waits the given number of milliseconds and passes the error cluster through unchanged.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Time/Wait If Error(ms).vi`
- **Kind**: VI
- **Inputs**:
  - `milliseconds to wait(100ms)` : `uint32` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `millisecond timer value` : `uint32`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
