# Application

中文：Windows 和 LabVIEW 应用程序 工具： 进程， 服务， 环境 变量， 引用 和 restart。
English: Windows and LabVIEW application utilities: processes, services, environment variables, references and restart.

18 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Application`.

## Check if Windows Process Exists.vi

中文：a Windows 进程 匹配 str is 运行， 通过 querying the task list through System Exec。 返回 the 匹配的 进程 名称 和 the raw console output。
English: Checks whether a Windows process matching str is running, by querying the task list through System Exec. Returns the matched process name and the raw console output.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Check if Windows Process Exists.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `process name` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `process exist?` : `bool`
  - `process name out` : `string`
  - `console out` : `string`
- **Calls**: `System Exec.vi`, `Trim Whitespace.vi`

## Check if Windows Service Exists.vi

中文：a Windows 服务 匹配 str is installed， 通过 querying the 服务 list through System Exec。 返回 the 匹配的 服务 名称 和 the raw console output。
English: Checks whether a Windows service matching str is installed, by querying the service list through System Exec. Returns the matched service name and the raw console output.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Check if Windows Service Exists.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `service name` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `service exist?` : `bool`
  - `service name out` : `string`
  - `console out` : `string`
- **Calls**: `System Exec.vi`, `Trim Whitespace.vi`, `ini_configuration.lvlib:TextToLines.vi`

## Error File Logger.vi

中文：the 错误 在 the 错误 在 cluster 到 a log 文件， creating the 文件夹 和 文件 当 they do not exist， 和 返回 the log text。 Wire Clear Error? 到 clear the 错误 在…之后 logging， 和 ContainerFolder 到 choose 其中 the log is written (空 使用 the 应用程序 文件夹)。
English: Appends the error on the error in cluster to a log file, creating the folder and file when they do not exist, and returns the log text. Wire Clear Error? to clear the error after logging, and ContainerFolder to choose where the log is written (empty uses the application folder).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Error File Logger.vi`
- **Kind**: VI
- **Inputs**:
  - `Log File Name` : `string`
  - `Module` : `string` *(required)*
  - `Clear Error?` : `bool`
  - `ContainerFolder(Empty for Application Folder)` : `path`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `Error Log` : `string`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Application Directory.vi`, `Check if File or Folder Exists.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Enter a file or an error and this VI will log the error and display the details.
</pre>

</details>

## Generate Start-Up Registry Patch File.vi

中文：a。reg patch 文件 that 添加 EXE 路径 到 one 的 the Windows run 或 run-once registry keys， so the 应用程序 starts automatically。 Key 名称 defaults 到 the executable 名称， 和 Arguments is appended 到 the command line。
English: Writes a .reg patch file that adds EXE Path to one of the Windows run or run-once registry keys, so the application starts automatically. Key Name defaults to the executable name, and Arguments is appended to the command line.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Generate Start-Up Registry Patch File.vi`
- **Kind**: VI
- **Inputs**:
  - `registry path` : `uint16{HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run,HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce,HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Run,HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce}`
  - `Registry File Path` : `path`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Key Name(Empty to use exe name)` : `string`
  - `Arguments` : `string`
  - `EXE Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Get File Extension.vi`, `ini_configuration.lvlib:TextToLines.vi`, `Create Directory if Non-Existant.vi`

## Get Vi Memory Name.vi

中文：the in-memory 名称 的 the VI 连线的 到 VI 在， 其 is how 两个 VIs that share a 文件 名称 can be told apart。
English: Returns the in-memory name of the VI wired to VI in, which is how two VIs that share a file name can be told apart.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Get Vi Memory Name.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI in` : `ref{LV.VI}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Memory Name` : `string`
  - `VI out` : `ref{LV.VI}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Input a VI, get the Memory name of this VI,
</pre>

</details>

## IsUserAnAdmin.vi

中文：the 当前 进程 is 运行 使用 管理员 rights。
English: Returns TRUE when the current process is running with administrator rights.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/IsUserAnAdmin.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Administrator` : `bool`
- **Calls**: `Error Cluster From Error Code.vi`

## Kill Process.vi

中文：Terminates the Windows 进程 named 通过 str 和 返回 its standard 错误 和 console output。
English: Terminates the Windows process named by str and returns its standard error and console output.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Kill Process.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `process name` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `standard error` : `string`
  - `process name out` : `string`
  - `console out` : `string`
- **Calls**: `System Exec.vi`

## Restart LabVIEW.vi

中文：Restarts LabVIEW 当 restart?(T) is TRUE。 It 写入 a small 重启 script， launches it 和 关闭 the 当前 instance。
English: Restarts LabVIEW when restart?(T) is TRUE. It writes a small restart script, launches it and closes the current instance.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Restart LabVIEW.vi`
- **Kind**: VI
- **Inputs**:
  - `restart?(T)` : `bool` *(required)*
- **Calls**: `Clear Errors.vi`, `System Exec.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Restart LabVIEW.
</pre>

</details>

## Safely Close Reference - Half Height.vim

中文：关闭 the 引用 连线的 到 引用， clearing 错误 instead 的 reporting it。 This is the half-height 连接器 窗格 variant 的 Safely 关闭 Reference。vim。
English: Closes the reference wired to Reference, clearing error 1055 instead of reporting it. This is the half-height connector pane variant of Safely Close Reference.vim.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Safely Close Reference - Half Height.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Reference` : `ref{LV.LVClassLibrary}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Clear the error when the error code is 1055, otherwise report the error and close the reference safely.
</pre>

</details>

## Safely Close Reference.vim

中文：关闭 the 引用 连线的 到 引用， clearing 错误 instead 的 reporting it。
English: Closes the reference wired to Reference, clearing error 1055 instead of reporting it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Safely Close Reference.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Reference` : `ref{LV.LVClassLibrary}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Clear the error when the error code is 1055, otherwise report the error and close the reference safely.
</pre>

</details>

## Terminate Vi CallStack Chain.vi

中文：Waits 用于 the call chain 的 VI Refnum(Null) 到 finish 和 then either stops it 或 kills the 进程， depending 在 Kill Process?。 The 毫秒 超时 (毫秒) input bounds the wait。
English: Waits for the call chain of VI Refnum(Null) to finish and then either stops it or kills the process, depending on Kill Process?. The ms timeout (500ms) input bounds the wait.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Terminate Vi CallStack Chain.vi`
- **Kind**: VI
- **Inputs**:
  - `VI Refnum(Null)` : `ref{LV.VI}` *(required)*
  - `ms timeout (500ms)` : `int32` *(required)*
  - `Kill Process?` : `bool` *(required)*
- **Calls**: `Valid VI Reference.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Use this VI to choose whether to let the program end normally or to terminate it when all runs are complete.
</pre>

</details>

## Topmost VI Reference.vi

中文：a 引用 到 the 顶层 VI 在 the 当前 call chain。
English: Returns a reference to the top-level VI in the current call chain.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Topmost VI Reference.vi`
- **Kind**: VI
- **Outputs**:
  - `Topmost VI's Reference` : `ref{LV.VI}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Returns the top-level VI reference in the call chain.
</pre>

</details>

## Using ParentVIRef If Input Invalid.vi

中文：the VI 引用 连线的 在， 和 substitutes the 引用 的 the calling VI 当 the input 引用 is invalid。 The Using 父 Ref output 报告 其 的 the 两个 was used， so the caller knows 是否 the 引用 has 到 be destroyed。
English: Returns the VI reference wired in, and substitutes the reference of the calling VI when the input reference is invalid. The Using Parent Ref output reports which of the two was used, so the caller knows whether the reference has to be destroyed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Using ParentVIRef If Input Invalid.vi`
- **Kind**: VI
- **Inputs**:
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `Using Parent Ref(Need to Destroy)` : `bool`
  - `VI Ref` : `ref{LV.VI}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This utility will fit (resize and center) a VI (defined by the "VI Ref" input) about the largest decoration in that VI.  It will add a border defined by border spacing in units of pixels.  If there are no decorations found in the VI it is a no-op and will not produce an error.  Unfortunately, this VI can not find locked decorations (yet).
</pre>

</details>

## Valid Refnum.vim

中文：VI，返回 TRUE 当 the 连线的 number， 路径 或 refnum is valid。
English: Polymorphic VI that returns TRUE when the wired number, path or refnum is valid.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Valid Refnum.vim`
- **Kind**: polymorphic VI (.vim); polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `number/path/refnum` : `double` *(required)*
- **Outputs**:
  - `Valid Number/Path/Refnum` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Determine if the entered number/path/refnum is invalid.
</pre>

</details>

## Valid VI Reference.vi

中文：the VI 引用 连线的 到 VI Refnum is valid。
English: Returns TRUE when the VI reference wired to VI Refnum is valid.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/Valid VI Reference.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `VI Refnum` : `ref{LV.VI}` *(required)*
- **Outputs**:
  - `Valid?` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Determine if the entered VI Refnum is invalid.
</pre>

</details>

## Application / SysEnvVar

### Get System Environment Variable.vi

中文：the 值 的 the named Windows 环境 variable。
English: Reads the value of the named Windows environment variable.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/SysEnvVar/Get System Environment Variable.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Environment Variable Name` : `string`
- **Outputs**:
  - `Value` : `string`
- **Calls**: `Error Cluster From Error Code.vi`, `Simple Error Handler.vi`

### Set Permanent SysEnvVariable.vi

中文：a Windows 环境 变量 permanently 通过 运行 setx， so the 值 survives a restart。 The 值 may be 给定的 literally 或 作为 a 引用 到 another 环境 variable。
English: Sets a Windows environment variable permanently by running setx, so the value survives a restart. The value may be given literally or as a reference to another environment variable.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/SysEnvVar/Set Permanent SysEnvVariable.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Value` : `string` *(required)*
  - `Key` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `standard output` : `string`
- **Calls**: `System Exec.vi`, `Error Cluster From Error Code.vi`

### Set System Environment Variable.vi

中文：a Windows 环境 变量 用于 the 当前 进程 和 任意 子 进程 it starts。
English: Sets a Windows environment variable for the current process and any child processes it starts.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/SysEnvVar/Set System Environment Variable.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Value` : `string`
  - `Environment Variable Name` : `string`
- **Calls**: `Error Cluster From Error Code.vi`, `Simple Error Handler.vi`
