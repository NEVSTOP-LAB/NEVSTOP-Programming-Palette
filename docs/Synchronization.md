# Synchronization

中文：Synchronisation primitives： the locker 队列 和 the SyncStart barrier。
English: Synchronisation primitives: the locker queue and the SyncStart barrier.

7 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization`.

## Second Call.vi

中文：TRUE 仅 在 the second call 在…之后 the Run 按钮 is clicked， 和 FALSE 在 每个 其他 call。
English: Returns TRUE only on the second call after the Run button is clicked, and FALSE on every other call.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Second Call.vi`
- **Kind**: VI
- **Outputs**:
  - `second call?` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Indicates that a subVI or section of a block diagram is running for the second time. The Second Call? function returns TRUE only the second time you call it after you click the Run button.
</pre>

</details>

## Synchronization / Locker

### locker-Create.vi

中文：a locker， a queue-based mutual exclusion object， 和 返回 its reference。 The 队列 is seeded 使用 one element so the 第一个 locker-lock call can take it。
English: Creates a locker, a queue-based mutual exclusion object, and returns its reference. The queue is seeded with one element so the first locker-lock call can take it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-Create.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `locker out` : `ref{Queue}{variant}`

### locker-Destroy.vi

中文：Releases a locker created 通过 locker-Create。vi。 Call it once 用于 每个 locker-Create。
English: Releases a locker created by locker-Create.vi. Call it once for every locker-Create.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-Destroy.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `locker` : `ref{Queue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`

### locker-lock.vi

中文：the locker is free 和 then takes it。 每个 locker-lock must be paired 使用 a locker-unlock。
English: Blocks until the locker is free and then takes it. Every locker-lock must be paired with a locker-unlock.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-lock.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `queue` : `ref{Queue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `locker out` : `ref{Queue}{variant}`

### locker-unlock.vi

中文：the locker so that a waiting locker-lock call can proceed。
English: Returns the locker so that a waiting locker-lock call can proceed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-unlock.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `locker` : `ref{Queue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `locker out` : `ref{Queue}{variant}`

## Synchronization / SyncStart

### SyncStart-TriggerStart.vim

中文：Sends a software start trigger 到 每个 SyncStart-Wait waiting 在 the 相同 名称 和 state。
English: Sends a software start trigger to every SyncStart-Wait waiting on the same name and state.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/SyncStart/SyncStart-TriggerStart.vim`
- **Kind**: polymorphic VI (.vim); member of SyncStart.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `state(Enum or Int)` : `int32`
  - `Name("" to use topmostVI Name)` : `string`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `SyncStart.lvlib:_Obtain SyncStart Queue.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Send a software trigger start.
</pre>

</details>

### SyncStart-Wait.vim

中文：a 匹配 SyncStart-TriggerStart arrives， then returns。 Wire force destroy(F) 到 abandon the wait， 和 名称 到 select the 队列 (an 空 名称 使用 the 顶层 VI 名称)。
English: Blocks until a matching SyncStart-TriggerStart arrives, then returns. Wire force destroy(F) to abandon the wait, and Name to select the queue (an empty name uses the top-level VI name).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/SyncStart/SyncStart-Wait.vim`
- **Kind**: polymorphic VI (.vim); member of SyncStart.lvlib
- **Inputs**:
  - `force destroy(F)` : `bool`
  - `state(Enum or Int)` : `int32`
  - `Name("" to use topmostVI Name)` : `string`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `SyncStart.lvlib:_Obtain SyncStart Queue.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Wait a software trigger start.
</pre>

</details>
