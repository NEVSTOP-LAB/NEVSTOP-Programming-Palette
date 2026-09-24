# Configuration

中文：配置读取与写入工具：簇/字符串配置表、Excel 工作表和 INI 文件。
English: Reading and writing configuration: cluster/string config tables, Excel sheets and INI files.

52 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Configuration`.

## Configuration / ClusterCfgTable

### Filter Unmarked Lines.vi

中文：移除配置表中 Col Index 列的单元格不匹配未标记 RegExp 的行。将 Ignore Empty Cell? 设为 TRUE，可保留包含空单元格的行。
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

中文：将簇转换为二维配置表，并根据 ParentName 下方的数据路径为每一行命名。Format 和 Array delimiters (|) 用于控制值和数组元素的写入格式。
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

中文：根据簇自身的类型信息将簇转换为二维配置表，不使用数据名称。这是 Flatten Cluster To CfgTable(with DataName).vi 的简化入口。
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

中文：多态 VI：将配置簇转换为字符串表，以便写出簇配置。可以设置时间戳格式和数组分隔符。
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

中文：将字符串转换为枚举值。若字符串以数字开头，则按索引选择枚举项；否则按字符串内容进行不区分大小写的匹配来选择枚举项。
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

中文：将 CfgTable Row in 中的行合并到 Reference CfgTable，并根据 Key Index 指定的列匹配行。若某行的键不存在，则将该行追加到表中。
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

中文：将配置表解析回簇，并使用表中记录的数据名称确定每个值的位置。簇类型由 Cluster Configuration Typedef 指定，Elements 用于报告读取的元素数量。
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

中文：将配置表解析为 Cluster Configuration Typedef 所描述的簇。这是 Parse CfgTable(with DataName).vi 的简化入口。
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

中文：多态 VI：将字符串表转换回配置簇。它是 Flatten Cluster To CfgTable.vim 的逆向操作。
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

中文：移除以注释标记开头的配置表行；注释标记默认为 ^#。
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

中文：将两个 Replace Configuration Table By ID 实例归为一组的调色板辅助项；它们根据 ID 列替换单行或多行。
English: Palette helper grouping the two Replace Configuration Table By ID instances, which replace a single row or an array of rows selected by their ID column.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/ClusterCfgTable/Replace Configuration Table By ID.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `_Replace Configuration Table By ID(Element).vi`, `_Replace Configuration Table By ID(Array).vi`

### Replace EmptyCell Mark.vi

中文：将配置表中的空单元格标记替换为空字符串。标记由 EmptyCellToken 指定，默认为 ^[\/]$。
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

中文：将配置表中 Col Index 列的多行单元格拆分为多行，以确保包含换行符的值能够正确往返转换。
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

中文：将字符串转换为枚举值：若字符串以索引数字开头，则按该索引选择；否则将字符串与枚举标签进行不区分大小写的匹配。
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

中文：关闭由 OpenXL_App.vi 打开的 Excel 应用程序引用。
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

中文：关闭已打开的 Excel 工作簿并释放工作簿引用。将 Save? (F) 设为 TRUE，可在关闭前保存工作簿。
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

中文：关闭已打开的 Excel 工作表并释放其 ActiveX 引用。
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

中文：创建新的 Excel 工作簿；若未连线路径，则提示用户选择路径，并将打开的工作簿引用添加到引用簇中。
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

中文：将整个 Excel 工作表读入二维字符串数组。Sheet(First) 按索引选择工作表；读取前后会打开并关闭应用程序、工作簿和工作表引用。
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

中文：将二维字符串数组写入 Excel 工作表；若文件不存在，则创建工作簿。Sheet(First) 按索引选择工作表。
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

中文：将已打开工作表的已用区域读入二维字符串数组。
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

中文：以 double 类型读取单个单元格，或读取 Start 与 End 所界定区域的左上角单元格。
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

中文：以字符串形式读取单个单元格，或读取 Start 与 End 所界定区域的左上角单元格。
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

中文：多态 VI：从已打开的 Excel 工作表中读取单个单元格或二维单元格区域，并以 double 或字符串形式返回数据。
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

中文：以二维 double 数组形式读取已打开工作表中 Start 与 End 所界定的区域。
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

中文：以二维字符串数组形式读取已打开工作表中 Start 与 End 所界定的区域。
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

中文：返回已打开工作表的名称。
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

中文：读取已打开工作表的已用区域大小。
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

中文：返回已打开工作簿中的工作表数量。
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

中文：通过 ActiveX 自动化启动 Excel，并返回其他 Excel VI 使用的应用程序和工作簿引用。
English: Starts Excel through ActiveX automation and returns the application and workbooks references used by the other Excel VIs.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/OpenXL_App.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Refnum Cluster` : `cluster{ref{ActiveX}.Excel._Application,ref{ActiveX}.Workbooks}`

### OpenXL_Workbook.vi

中文：打开路径指定的 Excel 工作簿；若路径为空，则提示用户选择文件，并将打开的工作簿引用添加到引用簇中。
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

中文：打开当前工作簿中的工作表。Sheet 可以是工作表索引，也可以是工作表名称。
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

中文：将从零开始计数的行、列索引对转换为 Excel 所需的 A1 样式区域字符串，例如 A1 或 AB12。
English: Converts a zero-based row and column pair into the A1-style range string Excel expects, such as A1 or AB12.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Configuration/Excel/Row Col To Range Format.vi`
- **Kind**: VI; member of excel_configuration.lvlib
- **Inputs**:
  - `Column` : `int32` *(required)*
  - `Row` : `int32` *(required)*
- **Outputs**:
  - `Output String` : `string`

### SetXL_AllCellValues.vi

中文：将二维字符串数组写入已打开工作表的已用区域。
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

中文：将 double 值写入已打开工作表中的单元格，或写入 Start 与 End 所界定的区域。
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

中文：将字符串写入已打开工作表中的单元格，或写入 Start 与 End 所界定的区域。
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

中文：多态 VI：将单个单元格或二维单元格区域写入已打开的 Excel 工作表，数据可以是 double 或字符串。
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

中文：从 Start 开始，将二维 double 数组写入已打开的工作表。
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

中文：从 Start 开始，将二维字符串数组写入已打开的工作表。
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

中文：仅保留配置文件中包含方括号节标题的行，并去除这些行首尾的空白。
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

中文：从配置文件中移除以 Annotation Seperator(#) 开头的注释行，并去除其余行首尾的空白。
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

中文：从配置文件中提取属于 [] Session Name 所指定会话的行，同时返回剩余的行。
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

中文：列出配置文件中所有会话的名称，同时返回剩余的行。
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

中文：从 Lines 中加载名为 Session Name 的会话，并同时以行列表和键值对数组的形式返回；注释行会被移除。
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

中文：加载 Lines 中名称与正则表达式 Session Name(Rxp) 匹配的所有会话，并将其键值对追加到 Array in，从而构建二维配置矩阵。
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

中文：将行数组合并为单个字符串。若连线了 Section name，则在行内容前写入节标题。
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

中文：将字符串拆分为多行。将 Remove Empty Lines?(T) 设为 TRUE，可移除空行。
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

中文：将配置文件文本拆分为多个块，每个会话对应一个块。
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

中文：从标准 LabVIEW 配置（INI）文件中读取 VI Ref 前面板控件的值。可与 Write Controls of Panel to INI.vi 配合使用。
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

中文：多态 VI：从配置节中读取簇；对于该节未提供的键，保留 cfg cluster in 中已有的值。
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

中文：多态 VI：打开 INI 文件，使用 Default Settings 为缺失的键提供默认值，从指定节读取簇，然后关闭文件。
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

中文：将 VI Ref 前面板控件的值以键值对形式写入 LabVIEW 配置（INI）文件。可与 Read Controls of Panel from INI.vi 配合使用。
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
