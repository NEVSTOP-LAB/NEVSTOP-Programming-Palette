# Synchronization

中文：Synchronisation primitives: the locker queue and the SyncStart barrier.
English: Synchronisation primitives: the locker queue and the SyncStart barrier.

7 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization`.

## Second Call.vi

中文：Returns TRUE only on the second call after the Run button is clicked, and FALSE on every other call.
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

中文：Creates a locker, a queue-based mutual exclusion object, and returns its reference. The queue is seeded with one element so the first locker-lock call can take it.
English: Creates a locker, a queue-based mutual exclusion object, and returns its reference. The queue is seeded with one element so the first locker-lock call can take it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-Create.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `locker out` : `ref{Queue}{variant}`

### locker-Destroy.vi

中文：Releases a locker created by locker-Create.vi. Call it once for every locker-Create.
English: Releases a locker created by locker-Create.vi. Call it once for every locker-Create.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Synchronization/Locker/locker-Destroy.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `locker` : `ref{Queue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`

### locker-lock.vi

中文：Blocks until the locker is free and then takes it. Every locker-lock must be paired with a locker-unlock.
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

中文：Returns the locker so that a waiting locker-lock call can proceed.
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

中文：Sends a software start trigger to every SyncStart-Wait waiting on the same name and state.
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

中文：Blocks until a matching SyncStart-TriggerStart arrives, then returns. Wire force destroy(F) to abandon the wait, and Name to select the queue (an empty name uses the top-level VI name).
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
