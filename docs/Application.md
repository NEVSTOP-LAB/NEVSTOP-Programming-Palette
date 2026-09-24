# Application

中文：Windows 和 LabVIEW 应用程序工具：进程、服务、环境变量、引用和重启。
English: Windows and LabVIEW application utilities: processes, services, environment variables, references and restart.

18 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Application`.

## Check if Windows Process Exists.vi

中文：通过 System Exec 查询任务列表，检查与 str 匹配的 Windows 进程是否正在运行。返回匹配的进程名称和原始控制台输出。
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

中文：通过 System Exec 查询服务列表，检查与 str 匹配的 Windows 服务是否已安装。返回匹配的服务名称和原始控制台输出。
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

中文：将 error in 簇中的错误追加到日志文件；若文件夹或文件不存在，则创建它们，并返回日志文本。将 Clear Error? 连线后，可在记录日志后清除错误；ContainerFolder 用于指定日志写入位置（为空时使用应用程序文件夹）。
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

中文：写入 .reg 补丁文件，将 EXE Path 添加到 Windows Run 或 RunOnce 注册表项之一，使应用程序能够自动启动。Key Name 默认为可执行文件名称，Arguments 会追加到命令行。
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

中文：返回连线到 VI in 的 VI 在内存中的名称，用于区分文件名相同的两个 VI。
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

中文：当当前进程以管理员权限运行时返回 TRUE。
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

中文：终止由 str 指定的 Windows 进程，并返回其标准错误和控制台输出。
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

中文：当 restart?(T) 为 TRUE 时重启 LabVIEW。此操作会写入一个小型重启脚本、启动该脚本，并关闭当前实例。
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

中文：关闭连线到 Reference 的引用；若发生错误 1055，则清除该错误而不报告。这是 Safely Close Reference.vim 的半高连接器窗格变体。
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

中文：关闭连线到 Reference 的引用；若发生错误 1055，则清除该错误而不报告。
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

中文：等待 VI Refnum(Null) 的调用链执行完毕，然后根据 Kill Process? 决定停止该调用链或终止进程。ms timeout (500ms) 输入用于限定等待时间。
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

中文：返回当前调用链中顶层 VI 的引用。
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

中文：返回连线到 VI in 的 VI 引用；若输入引用无效，则改用调用方 VI 的引用。Using Parent Ref 输出用于报告实际使用了哪个引用，以便调用方判断是否需要销毁该引用。
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

中文：多态 VI：当连线的数值、路径或 refnum 有效时返回 TRUE。
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

中文：当连线到 VI Refnum 的 VI 引用有效时返回 TRUE。
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

中文：读取指定 Windows 环境变量的值。
English: Reads the value of the named Windows environment variable.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/SysEnvVar/Get System Environment Variable.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Environment Variable Name` : `string`
- **Outputs**:
  - `Value` : `string`
- **Calls**: `Error Cluster From Error Code.vi`, `Simple Error Handler.vi`

### Set Permanent SysEnvVariable.vi

中文：通过运行 setx 永久设置 Windows 环境变量，使该值在重启后仍然保留。值可以直接指定，也可以引用另一个环境变量。
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

中文：为当前进程及其启动的所有子进程设置 Windows 环境变量。
English: Sets a Windows environment variable for the current process and any child processes it starts.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Application/SysEnvVar/Set System Environment Variable.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Value` : `string`
  - `Environment Variable Name` : `string`
- **Calls**: `Error Cluster From Error Code.vi`, `Simple Error Handler.vi`
