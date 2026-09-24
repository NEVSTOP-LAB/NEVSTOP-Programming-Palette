# File

中文：路径和文件辅助工具、文本与 TDMS 日志记录，以及简易 XML 读取器。
English: Path and file helpers, text and TDMS logging, and a small XML reader.

34 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/File`.

中文：说明：以下部分 VI 名称沿用原始文件名，可能包含历史拼写（例如 Non-Existant）；文档按原名保留以便与项目文件一一对应。
English: Note: some VI names below keep original filenames and may include legacy spellings (for example Non-Existant); documentation preserves original names for exact file mapping.

## Append Path to Root if Relative.vim

中文：多态 VI：输入路径为绝对路径时原样返回；为相对路径时，则将其追加到 Root Path。Scale、数组及其他路径形式均采用相同的处理逻辑。
English: Polymorphic VI that returns the input path unchanged when it is absolute, and appends it to Root Path when it is relative. Scale, array and other path shapes are handled by the same logic.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Append Path to Root if Relative.vim`
- **Kind**: polymorphic VI (.vim); polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Absolute or Relative Path(Scale or Array)` : `path` *(required)*
  - `Root Path` : `path` *(required)*
- **Outputs**:
  - `Absolute or Appended Path` : `path`
- **Calls**: `Path Type -- Enum.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Ouputs "Absolute or Relative Path".  If "Absolute or Relative Path" is relative it is appended to "Root Path". If "Absolute or Relative Path" is absolute it is passed straight through.
</pre>

</details>

## Application Directory 2.vi

中文：返回应用程序目录，并追加 Relative path (.)。若相对路径为空，则直接返回应用程序目录。
English: Returns the application directory with Relative path (.) appended. An empty relative path returns the application directory itself.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Application Directory 2.vi`
- **Kind**: VI
- **Inputs**:
  - `Relative path (.)` : `path`
- **Outputs**:
  - `Application Directory (+ Relative)` : `path`
- **Calls**: `Path Type -- Enum.vi`, `Application Directory.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Application directory path.
</pre>

</details>

## Build FilePath By Rule.vi

中文：根据 FileNameRule 构建文件路径；该规则可选择固定名称、带索引的名称或基于时间的名称。相对路径以应用程序目录为基准解析，缺失的文件夹会自动创建，Time 输入默认为当前时间。
English: Builds a file path from FileNameRule, which selects a fixed name, an indexed name or a time-based name. Relative paths are resolved against the application directory, missing folders are created, and the Time input defaults to the current time.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Build FilePath By Rule.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Time(Empty to Use Current Time)` : `timestamp`
  - `FileNameRule` : `cluster{uint16{Fixed File Name,Indexed File Name,TimeBased File Name}.Rule,path.Path,string.filename}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `File` : `path`
- **Calls**: `Application Directory.vi`, `Append Path to Root if Relative.vim`, `Create Directory if Non-Existant.vi`, `Make String Safe in Path.vi`, `Use Current Time If Input is Empty.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Build file path with timestamp.
</pre>

</details>

## Check if File or Folder Exists 2.vi

中文：当 path 存在时返回 TRUE，并原样传递该路径。此 VI 增加了错误处理，并允许 path 为空；vi.lib 版本在这种情况下会返回错误。
English: Returns TRUE when path exists, and passes the path through. It adds error handling and tolerates an empty path, where the vi.lib version returns an error.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Check if File or Folder Exists 2.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `file or folder exists?` : `bool`
  - `path out` : `path`
- **Calls**: `Check if File or Folder Exists.vi`

## Convert File Extension.vim

中文：多态 VI：替换文件名或路径的扩展名。新扩展名可带或不带前导句点；也可以为空字符串，以移除扩展名。此 VI 还会返回原扩展名。
English: Polymorphic VI that replaces the extension of a file name or path. The new ending may be given with or without a leading period, or as an empty string to remove the extension, and the previous extension is returned.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Convert File Extension.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `new ending (none)` : `string`
  - `String/Path` : `string` *(required)*
- **Outputs**:
  - `prev ending` : `string`
  - `new filename` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Converts the file extension of a file. "new ending" will accept an extension prefixed with or without a period, or a blank ("") string.
For example:

file name =&gt; c:\\temp\\data.txt
new ending =&gt; "csv" or ".csv"
new filename =&gt; c:\\temp\\data.csv
prev ending =&gt; ".txt"

file name =&gt; c:\\temp\\data.txt
new ending =&gt; ""
new filename =&gt; c:\\temp\\data
prev ending =&gt; ".txt"
</pre>

</details>

## Create Directory if Non-Existant.vi

中文：创建连线到 Directory Path 的目录以及所有缺失的父目录，并返回创建的目录列表。
English: Creates the directory wired to Directory Path together with every missing parent directory, and returns the list of directories it created.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Create Directory if Non-Existant.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `permissions (0755)` : `int16`
  - `Directory Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Created Directories` : `array{path.dup directory path}`
  - `Directory Path out` : `path`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Will create all directories above and including the directory defined by the "Directory Path" input, if they do not already exist.
</pre>

</details>

## Filter Contained Paths.vi

中文：从 Output Array 中移除已包含在同一数组其他路径中的路径，只保留最外层路径。
English: Removes from Output Array every path that is already contained in another path in the same array, so only the outermost paths remain.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Filter Contained Paths.vi`
- **Kind**: VI
- **Inputs**:
  - `Output Array` : `array{path.Path}` *(required)*
- **Outputs**:
  - `Array` : `array{path.Path}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Filter contained paths.
</pre>

</details>

## Filter Paths if Folder matches Pattern.vi

中文：筛除其相对于 Root Dir 的文件夹路径匹配 REP 中正则表达式的路径。默认模式 ^[_.] 会排除位于隐藏文件夹或下划线开头文件夹中的路径；模式为空时不进行筛选。
English: Filters out the paths whose folder, relative to Root Dir, matches the regular expression in REP. The default pattern ^[_.] removes paths inside hidden or underscore-prefixed folders; an empty pattern disables the filter.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Filter Paths if Folder matches Pattern.vi`
- **Kind**: VI
- **Inputs**:
  - `REP (^[_.] default, empty disables)` : `string` *(required)*
  - `Root Dir` : `path` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Paths` : `array{path.Path}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Filtered Paths` : `array{path.Path}`
- **Calls**: `Compare Two Paths.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Filter path if folder matches pattern.
</pre>

</details>

## First Matched Config File with Ext Options.vi

中文：在 Searching Directory 中查找第一个名称与 Function Name 匹配且扩展名属于 exts 的文件。将 Recrusively(F) 设为 TRUE，可同时搜索子文件夹。
English: Searches Searching Directory for the first file whose name matches Function Name with any of the extensions in exts. Set Recrusively(F) to search subfolders as well.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/First Matched Config File with Ext Options.vi`
- **Kind**: VI
- **Inputs**:
  - `exts` : `array{string.new ending (none)}` *(required)*
  - `Function Name` : `string` *(required)*
  - `Recursively(F)` : `bool` *(required)*
  - `Searching Directory` : `path` *(required)*
- **Outputs**:
  - `Config File` : `path`
- **Calls**: `Use Application Directory if Input is Empty.vi`, `Convert File Extension.vim`, `Recursive File List.vi`, `Clear Errors.vi`

## First Matched Config File.vi

中文：在 Searching Directory 中查找第一个匹配 pattern 的文件，并返回其路径。默认 pattern 为 *.ini；Recrusively(F) 可将搜索范围扩展到子文件夹。
English: Searches Searching Directory for the first file matching pattern and returns its path. The default pattern is *.ini, and Recrusively(F) extends the search to subfolders.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/First Matched Config File.vi`
- **Kind**: VI
- **Inputs**:
  - `pattern(ini by default)` : `string`
  - `Recursively(F)` : `bool`
  - `Searching Directory` : `path`
- **Outputs**:
  - `Matched Config File` : `path`
- **Calls**: `Use Application Directory if Input is Empty.vi`, `Recursive File List.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Search first matched file. The default match pattern is *.ini.
</pre>

</details>

## Make String Safe in Path.vi

中文：移除 Windows 文件名或文件夹名中不允许使用的字符，使结果可用于路径。将 replace string 连线后，可用指定字符串替换这些字符，而不是直接删除。
English: Removes the characters that Windows does not allow in a file or folder name, so the result can be used inside a path. Wire replace string to substitute those characters instead of deleting them.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Make String Safe in Path.vi`
- **Kind**: VI
- **Inputs**:
  - `replace string ("")` : `string`
  - `String In` : `string`
- **Outputs**:
  - `File Safe String Out` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Remove characters that are not allowed in File or Folder names.

Authored by Shawn Walpole
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## Move Contained Files to Folder.vi

中文：将 Folder Path 中直接包含的文件移动到 Dest Foder Path，并跳过 exclued files 中列出的名称。将 overwrite (F) 设为 TRUE 可替换现有文件；将 Clear Empty Folder?(T) 设为 TRUE 可删除移动后为空的源文件夹。
English: Moves the files directly inside Folder Path into Dest Foder Path, skipping the names listed in exclued files. Set overwrite (F) to replace existing files and Clear Empty Folder?(T) to delete source folders left empty.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Move Contained Files to Folder.vi`
- **Kind**: VI
- **Inputs**:
  - `Clear Empty Folder?(T)` : `bool`
  - `excluded files` : `array{string.exclued files}`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `overwrite (F)` : `bool`
  - `Dest Folder Path` : `path` *(required)*
  - `Folder Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Recursive File List.vi`, `Compare Two Paths.vi`, `Check if File or Folder Exists 2.vi`, `Create Directory if Non-Existant.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Move files in source folder to destination folder.
</pre>

</details>

## Path Type -- Enum.vi

中文：将路径分类为绝对路径、相对路径或 &lt;Not A Path&gt;。
English: Classifies a path as an absolute path, a relative path or &lt;Not A Path&gt;.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Path Type -- Enum.vi`
- **Kind**: VI
- **Inputs**:
  - `Value` : `path` *(required)*
- **Outputs**:
  - `Enum` : `uint16{Absolute path,Relative path,&lt;Not A Path&gt;}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return path type "&lt;Not A Path&gt;", "Absolute path", or "Relative path".
</pre>

</details>

## Recursive Build Path.vi

中文：若 file name 尚不是现有文件路径，则将其追加到 Path；否则原样返回 Path。
English: Appends file name to Path when that name is not already an existing file path, and returns Path unchanged otherwise.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Recursive Build Path.vi`
- **Kind**: VI
- **Inputs**:
  - `file name` : `string`
  - `Path` : `path`
- **Outputs**:
  - `file path name` : `path`
- **Calls**: `Recursive File List.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Build path or return file path.
</pre>

</details>

## Recursive File List2.vi

中文：递归列出 Folder Path 下名称匹配 pattern 的所有文件，并遵循文件夹排除正则表达式。将 Treat LLBs as Folders? 设为 TRUE，可同时搜索 LLB 内部；将 Continue Recursing on Error? (F) 设为 TRUE，可在文件夹无法读取时继续搜索。
English: Recursively lists every file under Folder Path whose name matches pattern, honouring the folder exclusion regular expression. Set Treat LLBs as Folders? to look inside LLBs as well, and Continue Recursing on Error? (F) to carry on past a folder that cannot be read.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Recursive File List2.vi`
- **Kind**: VI
- **Inputs**:
  - `Folders to Exclude (REP, empty disables)` : `string`
  - `pattern` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Continue Recursing on Error? (F)` : `bool`
  - `Treat LLBs as Folders?` : `bool`
  - `Folder Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Number of Files` : `int32`
  - `All Files in Dir` : `array{path}`
  - `Folder Path out` : `path`
  - `All Folders` : `array{path.Folder Path}`
- **Calls**: `List Directory and LLBs.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Lists the contents of a folder or LLB.
</pre>

</details>

## Recursive Folder List.vi

中文：递归列出 Folder Path 下名称匹配 pattern 的所有文件夹，并跳过 Folders to Exclude 中列出的名称。
English: Recursively lists every folder under Folder Path whose name matches pattern, skipping the names listed in Folders to Exclude.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Recursive Folder List.vi`
- **Kind**: VI
- **Inputs**:
  - `Folders to Exclude` : `array{string.String}`
  - `pattern` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Continue Recursing on Error? (F)` : `bool`
  - `Folder Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Number of Folders` : `int32`
  - `All Folders` : `array{path.Folder Path}`
  - `Folder Path out` : `path`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Lists the contents of a folder or LLB.
</pre>

</details>

## Recursive Folder List2.vi

中文：递归列出 Folder Path 下名称匹配 pattern 的所有文件夹。Folders to Exclude 接受正则表达式，默认值为 ^[_.]，因此会跳过隐藏文件夹和以下划线开头的文件夹。
English: Recursively lists every folder under Folder Path whose name matches pattern. Folders to Exclude takes a regular expression and defaults to ^[_.], so hidden and underscore-prefixed folders are skipped.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Recursive Folder List2.vi`
- **Kind**: VI
- **Inputs**:
  - `Folders to Exclude (REP, empty disables)` : `string`
  - `pattern` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Continue Recursing on Error? (F)` : `bool`
  - `Folder Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Number of Folders` : `int32`
  - `All Folders` : `array{path.Folder Path}`
  - `Folder Path out` : `path`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Lists the contents of a folder or LLB.
</pre>

</details>

## Recursive Remove Contained Empty Folders.vi

中文：删除 Path 下的所有空文件夹，并从最深层开始向上处理，因此因删除下层内容而变为空的文件夹也会一并删除。
English: Deletes every empty folder below Path, working from the deepest level upwards so folders that only become empty are removed as well.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Recursive Remove Contained Empty Folders.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Check if File or Folder Exists 2.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Remove empty folders.
</pre>

</details>

## Topmost VI Directory.vi

中文：返回顶层 VI 所在目录，并追加 Relative path (.)。在开发环境中，若无法获取该目录，则回退到应用程序目录。
English: Returns the directory of the top-level VI with Relative path (.) appended. In the development environment it falls back to the application directory.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Topmost VI Directory.vi`
- **Kind**: VI
- **Inputs**:
  - `Relative path (.)` : `path`
- **Outputs**:
  - `Application Directory (+ Relative)` : `path`
- **Calls**: `Path Type -- Enum.vi`, `Application Directory.vi`, `Topmost VI Reference.vi`, `Safely Close Reference - Half Height.vim`

## Use Application Directory if Input is Empty.vi

中文：原样返回 Directory；若输入路径为空，则替换为应用程序目录。
English: Returns Directory unchanged, and substitutes the application directory when the input path is empty.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/Use Application Directory if Input is Empty.vi`
- **Kind**: VI
- **Inputs**:
  - `Directory(Use Application Directory if Input is Empty)` : `path` *(required)*
- **Outputs**:
  - `Directory` : `path`
- **Calls**: `Application Directory.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Use application directory if input path is not exist.
</pre>

</details>

## File / TDMS

### Log Channels to TDMS.vi

中文：打开 TDMS 文件，将每个通道的名称和类型信息写入 channel names，并写入 Array 中对应的值，然后关闭文件。Limit 限制每个通道的样本数；TimeChannel 指定用于时间轴的通道名称（为空时跳过该通道）。
English: Opens a TDMS file and writes the name and type information of every channel in channel names together with the matching values from Array, then closes the file. Limit caps the number of samples per channel, and TimeChannel names the channel used for the time axis (empty to skip it).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/TDMS/Log Channels to TDMS.vi`
- **Kind**: VI
- **Inputs**:
  - `group name in (Group)` : `string`
  - `Limit(-1)` : `int32` *(required)*
  - `NameRule` : `cluster{cluster{uint16{Fixed File Name,Indexed File Name,TimeBased File Name}.Rule,path.Path,string.filename}.FileNameRule,uint16{open,open or create,create or replace,create,open (read-only)}.FileOperation,uint16{big-endian\2C network order,native\2C host order,little-endian}.byte order (2:little-endian),bool.disable buffering? (T)}` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `TimeChannel("" Empty to Skip)` : `string` *(required)*
  - `Array` : `array{variant.Variant}`
  - `channel names` : `array{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `DataCount` : `int32`
  - `File` : `path`
- **Calls**: `Build FilePath By Rule.vi`, `NI_Data Type.lvlib:Get Type Information.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Log channels data and channel group information.
</pre>

</details>

## File / TextFile

### TxtFile Append.vi

中文：将 Content 追加到 Config File dir 中的文本文件；若文件夹或文件不存在，则创建它们。
English: Appends Content to the text file in Config File dir, creating the folder and the file when they are missing.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/TextFile/TxtFile Append.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Content` : `string` *(required)*
  - `Config File dir` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `config file path` : `path`
- **Calls**: `Create Directory if Non-Existant.vi`, `Check if File or Folder Exists 2.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Append text file.
</pre>

</details>

### TxtFile Load.vi

中文：读取文本文件并返回其内容。UTF-8 编码的文件会转换为文本，因此非 ASCII 字符也能正确读取。
English: Reads a text file and returns its contents. A file encoded as UTF-8 is converted to text, so non-ASCII characters are read correctly.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/TextFile/TxtFile Load.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `text` : `string`
- **Calls**: `is UTF-8.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Read text file.
</pre>

</details>

### TxtFile Save.vi

中文：将文本写入 Path 指定的文件；若其所在文件夹不存在，则创建该文件夹。
English: Writes text to the file at Path, creating the containing folder when it does not exist.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/TextFile/TxtFile Save.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `text` : `string` *(required)*
  - `Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Create Directory if Non-Existant.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Write text file.
</pre>

</details>

## File / XML

### XML_AppendSubContent.vi

中文：将 Append Content 添加到 XML in 最外层元素的结束标签之前，以便向现有文档添加子元素。
English: Appends Append Content before the closing tag of the outermost element in XML in, so a child element can be added to an existing document.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_AppendSubContent.vi`
- **Kind**: VI
- **Inputs**:
  - `Append Content` : `string` *(required)*
  - `XML in` : `string` *(required)*
- **Outputs**:
  - `XML out` : `string`
- **Calls**: `Trim Whitespace.vi`, `_reuse_openG.lvlib:1D Array to String.vi`

### XML_CheckExist.vi

中文：报告 XML in 是否包含指定 label 的元素。
English: Reports whether XML in contains an element with the given label.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_CheckExist.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `label` : `string` *(required)*
  - `XML in` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `exist?` : `bool`
  - `label out` : `string`
  - `XML out` : `string`
- **Calls**: `XML_MatchPatten.vi`

### XML_FoundValueByKey.vi

中文：在键值对数组中查找 key，并同时返回 found? 和匹配的值。
English: Searches an array of key-value pairs for key and returns found? together with the matching value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_FoundValueByKey.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `key` : `string` *(required)*
  - `keyValues` : `array{cluster{string.key,string.value}}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `found?` : `bool`
  - `value` : `string`
  - `keyValues out` : `array{cluster{string.key,string.value}}`

### XML_GetTag.vi

中文：返回 XML 中最外层标签的名称。
English: Returns the name of the outermost tag in XML.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_GetTag.vi`
- **Kind**: VI
- **Inputs**:
  - `XML` : `string` *(required)*
- **Outputs**:
  - `TAG` : `string`
  - `XML out` : `string`
- **Calls**: `Trim Whitespace.vi`

### XML_Load.vi

中文：读取 XML 文件并以字符串数组形式返回其内容，同时移除换行符和缩进。
English: Reads an XML file and returns its content as an array of strings, with the line breaks and indentation removed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_Load.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `XML File Path` : `path`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `xml Data` : `array{string. }`
- **Calls**: `Search and Replace Pattern.vi`, `Trim Whitespace.vi`

### XML_MatchLabel.vi

中文：使用正则表达式检查属性文本，并将 XML 片段中的每个键值对提取到数组中。
English: Extracts every key-value pair found in an XML fragment into an array, using a regular expression over the attribute text.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_MatchLabel.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `String` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `keyValues` : `array{cluster{string.whole match,string.whole match}}`
- **Calls**: `Match Regular Expression.xnode`

### XML_MatchPatten.vi

中文：从 offset 开始搜索，在 XML in 中第一个或最后一个匹配 Tag 指定元素的位置处分割，并返回匹配前后的文本以及匹配后的偏移量。
English: Splits XML at the first or last occurrence of the element named by tag, starting the search at offset, and returns the text before and after the match together with the offset past it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_MatchPatten.vi`
- **Kind**: VI
- **Inputs**:
  - `first(T)/Last(F)` : `bool` *(required)*
  - `offset (0)` : `int32`
  - `tag` : `string` *(required)*
  - `XML` : `string` *(required)*
- **Outputs**:
  - `offset past match` : `int32`
  - `after substring` : `string`
  - `concatenated string out` : `string`
  - `before substring` : `string`
- **Calls**: `_REP_BackLabel.vi`, `_REP_FrontLabel.vi`, `Match Regular Expression.xnode`

### XML_Parse.vi

中文：从 XML 中解析出名为 Tag 的元素，并返回其内容、前后文本片段以及以键值对形式表示的元素属性。
English: Parses the element named Tag out of XML and returns its content, the surrounding before and after substrings, and the element's attributes as key-value pairs.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_Parse.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Tag` : `string` *(required)*
  - `XML` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `keyValues` : `array{cluster{string.key,string.value}}`
  - `match substring` : `string`
  - `content` : `string`
  - `after substring` : `string`
  - `before substring` : `string`
- **Calls**: `XML_MatchPatten.vi`, `Trim Whitespace.vi`, `XML_MatchLabel.vi`

### XML_StripContent.vi

中文：从 XML 中移除名为 Tag 的元素，并单独返回该元素的内容。
English: Removes the element named Tag from XML and returns the content of that element separately.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_StripContent.vi`
- **Kind**: VI
- **Inputs**:
  - `Tag` : `string` *(required)*
  - `XML` : `string` *(required)*
- **Outputs**:
  - `Left` : `string`
  - `Content` : `string`
- **Calls**: `Trim Whitespace.vi`, `_REP_FrontLabel.vi`, `_REP_BackLabel.vi`

### XML_ValidateCompleteness.vi

中文：当 XML 同时包含名为 Tag 的元素的开始标签和结束标签时返回 TRUE，可用于检测文档是否被截断。
English: Returns TRUE when XML contains both the opening and the closing tag of the element named Tag, which detects a truncated document.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/File/XML/XML_ValidateCompleteness.vi`
- **Kind**: VI
- **Inputs**:
  - `Tag` : `string` *(required)*
  - `XML` : `string` *(required)*
- **Outputs**:
  - `valid?` : `bool`
  - `XML out` : `string`
- **Calls**: `Trim Whitespace.vi`, `_REP_FrontLabel.vi`, `_REP_BackLabel.vi`
