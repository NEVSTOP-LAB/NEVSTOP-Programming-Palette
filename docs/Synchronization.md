# Synchronization

中文：同步原语：locker 队列和 SyncStart 屏障。
English: Synchronisation primitives: the locker queue and the SyncStart barrier.

7 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization`.

## Second Call.vi

中文：单击 Run 按钮后，仅在第二次调用时返回 TRUE；其他调用均返回 FALSE。
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

中文：创建一个 locker（一种基于队列的互斥对象）并返回其引用。队列中预先放入一个元素，因此首次调用 locker-lock 时即可取得该元素。
English: Creates a locker, a queue-based mutual exclusion object, and returns its reference. The queue is seeded with one element so the first locker-lock call can take it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-Create.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `locker out` : `ref{Queue}{variant}`

### locker-Destroy.vi

中文：释放由 locker-Create.vi 创建的 locker。每个 locker-Create 只需调用一次。
English: Releases a locker created by locker-Create.vi. Call it once for every locker-Create.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-Destroy.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `locker` : `ref{Queue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`

### locker-lock.vi

中文：等待 locker 空闲后将其取出。每次调用 locker-lock 都必须与一次 locker-unlock 配对。
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

中文：归还 locker，以便等待中的 locker-lock 调用继续执行。
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

中文：向所有正在等待相同 Name 和 state 的 SyncStart-Wait 发送软件启动触发信号。
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

中文：阻塞等待，直到收到匹配的 SyncStart-TriggerStart 后返回。将 force destroy(F) 连线可放弃等待；Name 用于选择队列（名称为空时使用顶层 VI 名称）。
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
