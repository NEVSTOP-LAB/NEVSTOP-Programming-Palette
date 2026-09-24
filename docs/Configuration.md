# Configuration

中文：Reading 和 writing configuration： cluster/string config 表， Excel sheets 和 INI files。
English: Reading and writing configuration: cluster/string config tables, Excel sheets and INI files.

52 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Configuration`.

## Configuration / ClusterCfgTable

### Filter Unmarked Lines.vi

中文：移除 the 行 的 a configuration 表 whose 单元格 在 Col 索引 does not match unmarked RegExp。 Set Ignore 空 Cell? 到 leave 行 使用 an 空 单元格 在 place。
English: Removes the rows of a configuration table whose cell in Col Index does not match unmarked RegExp. Set Ignore Empty Cell? to leave rows with an empty cell in place.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Filter Unmarked Lines.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Ignore Empty Cell?` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `unmarked RegExp` : `string`
  - `Col Index` : `int32` *(required)*
  - `CfgTable in` : `array.2{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable out` : `array.2{string}`
- **Calls**: `Trim Whitespace.vi`

### Flatten Cluster To CfgTable(with DataName).vi

中文：a cluster 到 a 二维 configuration 表， naming 每个 行 在…之后 its 数据 路径 below ParentName。 Format 和 数组 delimiters (|) control how 值 和 数组 elements are written。
English: Converts a cluster into a two-dimensional configuration table, naming each row after its data path below ParentName. Format and Array delimiters (|) control how values and array elements are written.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Flatten Cluster To CfgTable(with DataName).vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Format` : `string`
  - `Array delimiters (|)` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `ParentName` : `string`
  - `Cluster Configuration Typedef` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row Header` : `array{string}`
  - `CfgTable Row` : `array{string}`
- **Calls**: `ClusterToArray.vi`, `NI_Data Type.lvlib:Get Type Information.vi`, `_reuse_openG.lvlib:Error From Error Code.vi`, `NI_Data Type.lvlib:Get Refnum Information.vi`, `Format Variant into String Advance.vi`, `Trim Unnecessary Zeros of Numeric String.vi`, `_reuse_openG.lvlib:Get Strings from Enum.vi`, `ClusterCfgTable.lvlib:Flatten Cluster To CfgTable(with DataName).vi`, `NI_Data Type.lvlib:Get Array Information.vi`, `_reuse_openG.lvlib:1D Array to String.vi`

### Flatten Cluster To CfgTable.vi

中文：a cluster 到 a 二维 configuration 表 从 the cluster's own 类型 information， 不使用 数据 names。 It is the simple entry point 到 Flatten Cluster 到 CfgTable(使用 DataName)。vi。
English: Converts a cluster into a two-dimensional configuration table from the cluster's own type information, without data names. It is the simple entry point to Flatten Cluster To CfgTable(with DataName).vi.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Flatten Cluster To CfgTable.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Cluster Configuration Typedef` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row` : `array{string}`
- **Calls**: `ClusterCfgTable.lvlib:Flatten Cluster To CfgTable(with DataName).vi`

### Flatten Cluster To CfgTable.vim

中文：VI，转换 a configuration cluster 到 a 字符串 表， 其 is how a cluster configuration is written out。 The timestamp format 和 the 数组 delimiters can be set。
English: Polymorphic VI that converts a configuration cluster into a string table, which is how a cluster configuration is written out. The timestamp format and the array delimiters can be set.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Flatten Cluster To CfgTable.vim`
- **Kind**: polymorphic VI (.vim); member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Timestamp Format` : `string`
  - `Array delimiters (|)` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Cluster Configuration Typedef` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row Header` : `array{string}`
  - `CfgTable Row` : `array{string}`
- **Calls**: `ClusterCfgTable.lvlib:Flatten Cluster To CfgTable(with DataName).vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Convert cluster to string array. Usually it's used for convert configurations to a string table.
</pre>

</details>

### Indexed String To Enum.vi

中文：a 字符串 到 an enum value。 A leading number selects the entry 通过 索引， otherwise the entry is chosen 通过 匹配 the 字符串 内容 case-insensitively。
English: Converts a string into an enum value. A leading number selects the entry by index, otherwise the entry is chosen by matching the string content case-insensitively.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Indexed String To Enum.vi`
- **Kind**: VI
- **Inputs**:
  - `Variant` : `variant` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `String` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Enum` : `variant`
- **Calls**: `String To Indexed Enum.vi`, `Indexed String To Enum_old_version.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Convert String to enum. If string starts with numbers. The conversion is based on number.  Otherwise, the conversion is based on the string content. For example: Enum(Spring,Summer,Autumn,Winter). Summer" could be converted to Enum(Summer). "1 - anydescription" could be convert to Enum(Summer) too.
</pre>

</details>

### Merge CfgTables.vi

中文：Merges the 行 的 CfgTable 行 在 到 引用 CfgTable， 匹配 行 在 the 列 给定的 通过 Key Index。 行 whose key is not present are appended。
English: Merges the rows of CfgTable Row in into Reference CfgTable, matching rows on the column given by Key Index. Rows whose key is not present are appended.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Merge CfgTables.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Reference CfgTable` : `array.2{string}` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Key Index` : `int32` *(required)*
  - `CfgTable Row in` : `array.2{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row out` : `array.2{string}`

### Parse CfgTable(with DataName).vi

中文：解析 a configuration 表 back 到 a cluster， using the 数据 名称 recorded 在 the 表 到 place 每个 value。 The cluster 类型 comes 从 Cluster Configuration Typedef， 和 Elements 报告 how many elements were read。
English: Parses a configuration table back into a cluster, using the data names recorded in the table to place each value. The cluster type comes from Cluster Configuration Typedef, and Elements reports how many elements were read.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Parse CfgTable(with DataName).vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Format` : `string`
  - `Array delimiters (|)` : `string`
  - `Cluster Configuration Typedef` : `variant`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row` : `array{string}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Elements` : `int32`
  - `Cluster Configuration Out` : `variant`
- **Calls**: `ClusterToArray.vi`, `NI_Data Type.lvlib:Get Type Information.vi`, `String To Number(I8).vi`, `String To Number(I16).vi`, `String To Number(I32).vi`, `String To Number(I64).vi`, `String To Number(U8).vi`, `String To Number(U16).vi`, `String To Number(U32).vi`, `String To Number(U64).vi`, `String To Float.vi`, `String To Indexed Enum.vi`, `String to Boolean.vi`, `NI_Data Type.lvlib:Get Array Information.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
NEVSTOP-Programming-Palette 2021.12.23.1

NEVSTOP - NEVSTOP

Copyright (c) 2021, NEVSTOP
</pre>

</details>

### Parse CfgTable.vi

中文：解析 a configuration 表 back 到 the cluster described 通过 Cluster Configuration Typedef。 It is the simple entry point 到 Parse CfgTable(使用 DataName)。vi。
English: Parses a configuration table back into the cluster described by Cluster Configuration Typedef. It is the simple entry point to Parse CfgTable(with DataName).vi.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Parse CfgTable.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Cluster Configuration Typedef` : `variant`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row` : `array{string}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Elements` : `int32`
  - `Cluster Configuration Out` : `variant`
- **Calls**: `ClusterCfgTable.lvlib:Parse CfgTable(with DataName).vi`

### Parse CfgTable.vim

中文：VI，转换 a 字符串 表 back 到 a configuration cluster。 It is the inverse 的 Flatten Cluster 到 CfgTable。vim。
English: Polymorphic VI that converts a string table back into a configuration cluster. It is the inverse of Flatten Cluster To CfgTable.vim.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Parse CfgTable.vim`
- **Kind**: polymorphic VI (.vim); member of ClusterCfgTable.lvlib
- **Inputs**:
  - `Timestamp Format` : `string`
  - `Array delimiters (|)` : `string`
  - `Cluster Configuration Typedef` : `variant` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable Row` : `array{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Cluster Configuration Out` : `variant`
- **Calls**: `ClusterCfgTable.lvlib:Parse CfgTable(with DataName).vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Convert String Array to Cluster. Usually this VI is used to convert a table configuration to cluster array.
</pre>

</details>

### Remove Comments Lines.vi

中文：移除 the 行 的 a configuration 表 that start 使用 the comment token， whose 默认 is ^#。
English: Removes the rows of a configuration table that start with the comment token, whose default is ^#.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Remove Comments Lines.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Comment Token(^#)` : `string`
  - `CfgTable in` : `array.2{string}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable out` : `array.2{string}`
- **Calls**: `Trim Whitespace.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Remove Comment Rows from 2D Array String Table. 
</pre>

</details>

### Replace Configuration Table By ID.vi

中文：Palette helper grouping the 两个 Replace Configuration 表 通过 ID instances， 其 replace a 单个 行 或 an 数组 的 行 selected 通过 their ID column。
English: Palette helper grouping the two Replace Configuration Table By ID instances, which replace a single row or an array of rows selected by their ID column.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Replace Configuration Table By ID.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `_Replace Configuration Table By ID(Element).vi`, `_Replace Configuration Table By ID(Array).vi`

### Replace EmptyCell Mark.vi

中文：Replaces the empty-cell marker 在 a configuration 表 使用 an 空 string。 The marker is 给定的 通过 EmptyCellToken 和 defaults 到 ^[\/]$。
English: Replaces the empty-cell marker in a configuration table with an empty string. The marker is given by EmptyCellToken and defaults to ^[\/]$.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Replace EmptyCell Mark.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `EmptyCellToken(^[\/]$)` : `string`
  - `CfgTable in` : `array.2{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable out` : `array.2{string}`
- **Calls**: `Trim Whitespace.vi`

### Splite MultiLine Cell.vi

中文：a multi-line 单元格 在 列 Col 索引 的 a configuration 表 back 到 separate 行， so a 值 containing 行 breaks round-trips。
English: Splits a multi-line cell in column Col Index of a configuration table back into separate rows, so a value containing line breaks round-trips.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Splite MultiLine Cell.vi`
- **Kind**: VI; member of ClusterCfgTable.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Col Index` : `int32` *(required)*
  - `CfgTable in` : `array.2{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `CfgTable out` : `array.2{string}`

### String To Indexed Enum.vi

中文：a 字符串 到 an enum 值， either 从 a leading 索引 number 或 通过 匹配 the 字符串 against the enum labels case-insensitively。
English: Converts a string into an enum value, either from a leading index number or by matching the string against the enum labels case-insensitively.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/String To Indexed Enum.vi`
- **Kind**: VI
- **Inputs**:
  - `Variant` : `variant` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `String` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Enum` : `variant`
- **Calls**: `_reuse_openG.lvlib:Get Strings from Enum.vi`, `Trim Whitespace.vi`, `String To Number(I64).vi`, `_reuse_openG.lvlib:Set Enum String Value.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Convert String to enum. If string starts with numbers. The conversion is based on number.  Otherwise, the conversion is based on the string content. For example: Enum(Spring,Summer,Autumn,Winter). Summer" could be converted to Enum(Summer). "1 - anydescription" could be convert to Enum(Summer) too.
</pre>

</details>

## Configuration / Excel

### CloseXL_App.vi

中文：关闭 the Excel 应用程序 引用 已打开 通过 OpenXL_App。vi。
English: Closes the Excel application reference opened by OpenXL_App.vi.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/CloseXL_App.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `excel_configuration.lvlib:_Safely Close Reference.vim`

### CloseXL_Workbook.vi

中文：关闭 the 打开 Excel 工作簿 和 releases the 工作簿 reference。 Set Save? (F) 到 save the 工作簿 在…之前 closing。
English: Closes the open Excel workbook and releases the workbook reference. Set Save? (F) to save the workbook before closing.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/CloseXL_Workbook.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Save? (F)` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks}`
- **Calls**: `excel_configuration.lvlib:_Safely Close Reference.vim`

### CloseXL_Worksheet.vi

中文：关闭 the 打开 Excel 工作表 和 releases its ActiveX reference。
English: Closes the open Excel worksheet and releases its ActiveX reference.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/CloseXL_Worksheet.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Calls**: `excel_configuration.lvlib:_Safely Close Reference.vim`

### CreateXL_Workbook.vi

中文：a new Excel 工作簿， prompting 用于 a 路径 当 none is 连线的， 和 添加 the 已打开 工作簿 引用 到 the 引用 cluster。
English: Creates a new Excel workbook, prompting for a path when none is wired, and adds the opened workbook reference to the reference cluster.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/CreateXL_Workbook.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `path` : `path`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Calls**: `Get File Extension.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### Excel - Read Sheet.vi

中文：a whole Excel 工作表 到 a 二维 字符串 array。 Sheet(第一个) selects the 工作表 通过 索引， 和 the 应用程序， 工作簿 和 工作表 引用 are 已打开 和 已关闭 around the read。
English: Reads a whole Excel worksheet into a two-dimensional string array. Sheet(First) selects the worksheet by index, and the application, workbook and worksheet references are opened and closed around the read.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/Excel - Read Sheet.vi`
- **Kind**: VI
- **Inputs**:
  - `Sheet(First)` : `int32`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `array.2{string}`
- **Calls**: `excel_configuration.lvlib:OpenXL_App.vi`, `excel_configuration.lvlib:OpenXL_Workbook.vi`, `excel_configuration.lvlib:OpenXL_WorkSheet.vi`, `excel_configuration.lvlib:GetXL_AllCellValues.vi`, `excel_configuration.lvlib:CloseXL_Worksheet.vi`, `excel_configuration.lvlib:CloseXL_Workbook.vi`, `excel_configuration.lvlib:CloseXL_App.vi`

### Excel - Write Sheet.vi

中文：a 二维 字符串 数组 到 an Excel 工作表， creating the 工作簿 当 the 文件 does not exist。 Sheet(第一个) selects the 工作表 通过 index。
English: Writes a two-dimensional string array into an Excel worksheet, creating the workbook when the file does not exist. Sheet(First) selects the worksheet by index.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/Excel - Write Sheet.vi`
- **Kind**: VI
- **Inputs**:
  - `Sheet(First)` : `int32`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `array.2{string}` *(required)*
  - `path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `excel_configuration.lvlib:OpenXL_App.vi`, `Check if File or Folder Exists.vi`, `excel_configuration.lvlib:CreateXL_Workbook.vi`, `excel_configuration.lvlib:OpenXL_Workbook.vi`, `excel_configuration.lvlib:OpenXL_WorkSheet.vi`, `excel_configuration.lvlib:SetXL_AllCellValues.vi`, `excel_configuration.lvlib:CloseXL_Worksheet.vi`, `excel_configuration.lvlib:CloseXL_Workbook.vi`, `excel_configuration.lvlib:CloseXL_App.vi`

### GetXL_AllCellValues.vi

中文：the used 范围 的 the 打开 工作表 到 a 二维 字符串 array。
English: Reads the used range of the open worksheet into a two-dimensional string array.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_AllCellValues.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `array.2{string}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:GetXL_WorkSheetSize.vi`, `excel_configuration.lvlib:GetXL_CellValues.vi`

### GetXL_CellValue_Dbl.vi

中文：a 单个 单元格， 或 the top-left 单元格 的 the 范围 between Start 和 End， 作为 a double。
English: Reads a single cell, or the top-left cell of the range between Start and End, as a double.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_CellValue_Dbl.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `End` : `cluster{int32.Column,int32.Row}`
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `double`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### GetXL_CellValue_String.vi

中文：a 单个 单元格， 或 the top-left 单元格 的 the 范围 between Start 和 End， 作为 a string。
English: Reads a single cell, or the top-left cell of the range between Start and End, as a string.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_CellValue_String.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `End` : `cluster{int32.Column,int32.Row}`
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `string`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### GetXL_CellValues.vi

中文：VI，读取 a 单个 单元格 或 a 二维 范围 的 cells 从 the 打开 Excel 工作表， 作为 either double 或 字符串 data。
English: Polymorphic VI that reads a single cell or a two-dimensional range of cells from the open Excel worksheet, as either double or string data.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_CellValues.vi`
- **Kind**: VI; member of excel_configuration.lvlib; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `excel_configuration.lvlib:GetXL_CellValue_Dbl.vi`, `excel_configuration.lvlib:GetXL_CellValue_String.vi`, `excel_configuration.lvlib:GetXL_CellValues_2D_Dbl.vi`, `excel_configuration.lvlib:GetXL_CellValues_2D_String.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This polymorphic VI reads in either a single cell or a 2D range of cells from an Excel spreadsheet. The spreadsheet data is either interpreted as string or numeric data depending on the polymorphic instance of this VI. The possible selections include:

1. Dbl (Single Cell)
2. 2D Dbl
3. String (Single Cell)
4. 2D String

</pre>

</details>

### GetXL_CellValues_2D_Dbl.vi

中文：the 范围 between Start 和 End 从 the 打开 工作表 作为 a 二维 数组 的 doubles。
English: Reads the range between Start and End from the open worksheet as a two-dimensional array of doubles.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_CellValues_2D_Dbl.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `End` : `cluster{int32.Column,int32.Row}`
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `array.2{double}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### GetXL_CellValues_2D_String.vi

中文：the 范围 between Start 和 End 从 the 打开 工作表 作为 a 二维 数组 的 strings。
English: Reads the range between Start and End from the open worksheet as a two-dimensional array of strings.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_CellValues_2D_String.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `End` : `cluster{int32.Column,int32.Row}`
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `array.2{string}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### GetXL_WorkSheetName.vi

中文：the 名称 的 the 打开 worksheet。
English: Returns the name of the open worksheet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_WorkSheetName.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Name` : `string`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`

### GetXL_WorkSheetSize.vi

中文：the 大小 的 the used 范围 的 the 打开 worksheet。
English: Reads the size of the used range of the open worksheet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_WorkSheetSize.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `# Columns` : `int32`
  - `# Rows` : `int32`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:_Safely Close Reference.vim`

### GetXL_WorkSheetsNum.vi

中文：the number 的 worksheets 在 the 打开 workbook。
English: Returns the number of worksheets in the open workbook.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/GetXL_WorkSheetsNum.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `size(s)` : `int32`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Calls**: `Clear Errors.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### OpenXL_App.vi

中文：Starts Excel through ActiveX automation 和 返回 the 应用程序 和 workbooks 引用 used 通过 the 其他 Excel VIs。
English: Starts Excel through ActiveX automation and returns the application and workbooks references used by the other Excel VIs.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/OpenXL_App.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks}`

### OpenXL_Workbook.vi

中文：打开 the Excel 工作簿 在 路径， prompting 用于 a 文件 当 the 路径 is 空， 和 添加 the 已打开 工作簿 引用 到 the 引用 cluster。
English: Opens the Excel workbook at path, prompting for a file when the path is empty, and adds the opened workbook reference to the reference cluster.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/OpenXL_Workbook.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `path` : `path`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Calls**: `Check if File or Folder Exists.vi`

### OpenXL_WorkSheet.vi

中文：打开 a 工作表 的 the 当前 workbook。 Sheet accepts either the 工作表 索引 或 its name。
English: Opens a worksheet of the current workbook. Sheet accepts either the worksheet index or its name.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/OpenXL_WorkSheet.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Sheet` : `variant` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`

### Row Col To Range Format.vi

中文：a zero-based 行 和 列 pair 到 the A1-style 范围 字符串 Excel expects， such 作为 A1 或 AB12。
English: Converts a zero-based row and column pair into the A1-style range string Excel expects, such as A1 or AB12.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/Row Col To Range Format.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Column` : `int32` *(required)*
  - `Row` : `int32` *(required)*
- **Outputs**:
  - `Output String` : `string`

### SetXL_AllCellValues.vi

中文：a 二维 字符串 数组 到 the used 范围 的 the 打开 worksheet。
English: Writes a two-dimensional string array into the used range of the open worksheet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/SetXL_AllCellValues.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `data` : `array.2{string}` *(required)*
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
- **Calls**: `excel_configuration.lvlib:SetXL_CellValues.vi`

### SetXL_CellValue_Dbl.vi

中文：a double 到 a 单元格， 或 到 the 范围 between Start 和 End， 的 the 打开 worksheet。
English: Writes a double into a cell, or into the range between Start and End, of the open worksheet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/SetXL_CellValue_Dbl.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `End` : `cluster{int32.Column,int32.Row}` *(required)*
  - `data` : `double` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### SetXL_CellValue_String.vi

中文：a 字符串 到 a 单元格， 或 到 the 范围 between Start 和 End， 的 the 打开 worksheet。
English: Writes a string into a cell, or into the range between Start and End, of the open worksheet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/SetXL_CellValue_String.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `End` : `cluster{int32.Column,int32.Row}` *(required)*
  - `data` : `string` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### SetXL_CellValues.vi

中文：VI，写入 a 单个 单元格 或 a 二维 范围 的 cells 到 the 打开 Excel 工作表， 作为 either double 或 字符串 data。
English: Polymorphic VI that writes a single cell or a two-dimensional range of cells into the open Excel worksheet, as either double or string data.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/SetXL_CellValues.vi`
- **Kind**: VI; member of excel_configuration.lvlib; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `excel_configuration.lvlib:SetXL_CellValue_Dbl.vi`, `excel_configuration.lvlib:SetXL_CellValue_String.vi`, `excel_configuration.lvlib:SetXL_CellValues_2D_Dbl.vi`, `excel_configuration.lvlib:SetXL_CellValues_2D_String.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This polymorphic VI reads in either a single cell or a 2D range of cells from an Excel spreadsheet. The spreadsheet data is either interpreted as string or numeric data depending on the polymorphic instance of this VI. The possible selections include:

1. Dbl (Single Cell)
2. 2D Dbl
3. String (Single Cell)
4. 2D String

</pre>

</details>

### SetXL_CellValues_2D_Dbl.vi

中文：a 二维 数组 的 doubles 到 the 打开 工作表， starting 在 Start。
English: Writes a two-dimensional array of doubles into the open worksheet, starting at Start.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/SetXL_CellValues_2D_Dbl.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `data` : `array.2{double}` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

### SetXL_CellValues_2D_String.vi

中文：a 二维 数组 的 字符串 到 the 打开 工作表， starting 在 Start。
English: Writes a two-dimensional array of strings into the open worksheet, starting at Start.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/SetXL_CellValues_2D_String.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Refnum Cluster In` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}` *(required)*
  - `Start` : `cluster{int32.Column,int32.Row}`
  - `data` : `array.2{string}` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `Refnum Cluster Out` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks,ref{ActiveX}.Open,ref{ActiveX}.Worksheets,ref{ActiveX}.Excel._Worksheet}`
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `excel_configuration.lvlib:Row Col To Range Format.vi`, `excel_configuration.lvlib:_Safely Close Reference.vim`

## Configuration / Ini

### Lines Filter-[].vi

中文：保留 仅 the 行 的 a configuration 文件 that contain a section header 在 square brackets， 和 trims them。
English: Keeps only the lines of a configuration file that contain a section header in square brackets, and trims them.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/Lines Filter-[].vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Lines` : `array{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Config Text List` : `array{string.trimmed string}`

### Lines Filter-Annotation.vi

中文：移除 the annotation 行， 其 start 使用 Annotation Seperator(#)， 从 a configuration 文件 和 trims the remaining lines。
English: Removes the annotation lines, which start with Annotation Seperator(#), from a configuration file and trims the remaining lines.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/Lines Filter-Annotation.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `Annotation Separator(#)` : `string` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Lines` : `array{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Config Text List` : `array{string.trimmed string}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
[Covers: REQ-KeyPoint-I-CommentInBarcodeFile]
[Covers: REQ-KeyPoint-I-CommentInEnv_Config]
[Covers: REQ-KeyPoint-I-CommentInRecipe]
</pre>

</details>

### Lines GetSessionByName.vi

中文：Extracts the 行 belonging 到 the 会话 named [] 会话 名称 从 a configuration 文件， 和 返回 the 行 that were left over 作为 well。
English: Extracts the lines belonging to the session named [] Session Name from a configuration file, and returns the lines that were left over as well.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/Lines GetSessionByName.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `[] Session Name` : `string` *(required)*
  - `Config Text List` : `array{string.trimmed string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Session` : `array{string.trimmed string}`
  - `Config Text List out` : `array{string.trimmed string}`
- **Calls**: `Trim Whitespace.vi`

### Lines ListSessions.vi

中文：the 名称 的 每个 会话 found 在 a configuration 文件， 和 返回 the 行 that were left over 作为 well。
English: Lists the names of every session found in a configuration file, and returns the lines that were left over as well.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/Lines ListSessions.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Config Text List` : `array{string.trimmed string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Sessions` : `array{string.trimmed string}`
  - `Config Text List out` : `array{string.trimmed string}`
- **Calls**: `Trim Whitespace.vi`

### Lines LoadArrayOfSessions.vi

中文：Loads the 会话 named 会话 名称 从 行 和 返回 it 两者 作为 a list 的 行 和 作为 an 数组 的 key-value pairs， 使用 the annotation 行 removed。
English: Loads the session named Session Name from Lines and returns it both as a list of lines and as an array of key-value pairs, with the annotation lines removed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/Lines LoadArrayOfSessions.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `Annotation Separator(#)` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Session Name` : `string` *(required)*
  - `Lines` : `array{string. }` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Matched Sessions` : `array{string.trimmed string}`
  - `String Config Group` : `array{cluster{string.Key,string.Value}}`
  - `Config Text List out` : `array{string.trimmed string}`
- **Calls**: `ini_configuration.lvlib:Lines ListSessions.vi`, `ini_configuration.lvlib:Lines GetSessionByName.vi`, `ini_configuration.lvlib:Lines Filter-Annotation.vi`, `_reuse_openG.lvlib:String to 1D Array.vi`, `Trim Whitespace.vi`

### Lines LoadMatrixOfSessions.vi

中文：Loads 每个 会话 在 行 whose 名称 matches the regular expression 会话 名称(Rxp) 和 追加 its key-value pairs 到 数组 在， building a 二维 configuration matrix。
English: Loads every session in Lines whose name matches the regular expression Session Name(Rxp) and appends its key-value pairs to Array in, building a two-dimensional configuration matrix.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/Lines LoadMatrixOfSessions.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `Annotation Separator(#)` : `string` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Session Name(Rxp)` : `string` *(required)*
  - `Array in` : `array{string. }` *(required)*
  - `Lines` : `array{string. }` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Array out` : `array.2{string.cfg}`
  - `Config Text List out` : `array{string.trimmed string}`
- **Calls**: `ini_configuration.lvlib:Lines LoadArrayOfSessions.vi`

### LinesToText.vi

中文：an 数组 的 行 到 a 单个 string。 当 a Section 名称 is 连线的， the section header is written 在 前 的 the lines。
English: Joins an array of lines into a single string. When a Section name is wired, the section header is written in front of the lines.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/LinesToText.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Section(Empty)` : `string`
  - `Lines` : `array{string}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `string` : `string`
- **Calls**: `Trim Whitespace.vi`, `_reuse_openG.lvlib:1D Array to String.vi`

### TextToLines.vi

中文：a 字符串 到 its lines。 Set Remove 空 Lines?(T) 到 drop the 空 ones。
English: Splits a string into its lines. Set Remove Empty Lines?(T) to drop the empty ones.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/TextToLines.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `Remove Empty Lines?(T)` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `string` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Lines` : `array{string}`
- **Calls**: `_reuse_openG.lvlib:String to 1D Array.vi`, `Trim Whitespace.vi`

### TextToSessionBlocks.vi

中文：the 文本 的 a configuration 文件 到 blocks， one per session。
English: Splits the text of a configuration file into blocks, one per session.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Ini/TextToSessionBlocks.vi`
- **Kind**: VI; member of ini_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `string` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Blocks` : `array{string}`

## Configuration / OpenG Variant Configuration File

### Read Controls of Panel from INI.vi

中文：the 值 的 the 前 面板 controls 的 VI Ref 从 a standard LabVIEW configuration (INI) file。 Use it together 使用 Write Controls 的 面板 到 INI。vi。
English: Reads the values of the front panel controls of VI Ref from a standard LabVIEW configuration (INI) file. Use it together with Write Controls of Panel to INI.vi.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/OpenG Variant Configuration File/Read Controls of Panel from INI.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI Ref (calling VI)` : `ref{LV.VI}`
  - `refnum` : `ref{DataLog}{uint16{config data}.refnum}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `refnum out` : `ref{DataLog}{uint16{config data}.refnum}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `OpenG Variant Configuration File.lvlib:Read Key (Variant).vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Read the front panel controls' values on the Front Panel of &lt;B&gt;VI ref&lt;/B&gt; from a standard LabVIEW configuration (INI) file.

Use this VI in conjunction with the &lt;B&gt;Write Panel to INI&lt;/B&gt; from the OpenG Variant Config palette.
</pre>

</details>

### Read Session Cluster with Initial Value.vim

中文：VI，读取 a cluster 从 a configuration section， keeping the 值 的 cfg cluster 在 用于 每个 key the section does not provide。
English: Polymorphic VI that reads a cluster from a configuration section, keeping the values of cfg cluster in for every key the section does not provide.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/OpenG Variant Configuration File/Read Session Cluster with Initial Value.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `cfg cluster in` : `variant` *(required)*
  - `section` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum in` : `ref{DataLog}{uint16{config data}.refnum}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `cfg cluster` : `variant`
  - `Refnum out` : `ref{DataLog}{uint16{config data}.refnum}`
- **Calls**: `NI_Data Type.lvlib:Get Type Information.vi`, `NI_LVConfig.lvlib:Get Section Names.vi`, `OpenG Variant Configuration File.lvlib:Write Section Cluster.vi`, `OpenG Variant Configuration File.lvlib:Read Section Cluster.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Read INI file section to variant.
</pre>

</details>

### Simple Load Ini Configuraton.vim

中文：VI，打开 an INI 文件， 读取 the cluster 从 the named section using 默认 Settings 用于 缺失 keys， 和 关闭 the 文件 again。
English: Polymorphic VI that opens an INI file, reads the cluster from the named section using Default Settings for missing keys, and closes the file again.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/OpenG Variant Configuration File/Simple Load Ini Configuraton.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Session` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Default Settings` : `variant` *(required)*
  - `file path name` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Settings out` : `variant`
- **Calls**: `NI_LVConfig.lvlib:Open Config Data.vi`, `Read Session Cluster with Initial Value.vim`, `NI_LVConfig.lvlib:Close Config Data.vi`

### Write Controls of Panel to INI.vi

中文：the 值 的 the 前 面板 controls 的 VI Ref 到 a LabVIEW configuration (INI) 文件 作为 key-value pairs。 Use it together 使用 Read Controls 的 面板 从 INI。vi。
English: Writes the values of the front panel controls of VI Ref to a LabVIEW configuration (INI) file as key-value pairs. Use it together with Read Controls of Panel from INI.vi.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/OpenG Variant Configuration File/Write Controls of Panel to INI.vi`
- **Kind**: VI
- **Inputs**:
  - `float number format (optional)` : `string`
  - `Rep` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI Ref (calling VI)` : `ref{LV.VI}`
  - `refnum` : `ref{DataLog}{uint16{config data}.refnum}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `refnum out` : `ref{DataLog}{uint16{config data}.refnum}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `OpenG Variant Configuration File.lvlib:Write Key (Variant).vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Writes the values of the controls on the Front Panel of &lt;B&gt;VI ref&lt;/B&gt; to a standard LabVIEW configuration (INI) file as key-value pairs.s

Use this VI in conjunction with the &lt;B&gt;Read Panel from INI&lt;/B&gt; from the OpenG Variant Config palette.
</pre>

</details>
