# Data

中文：数据 类型 inspection 和 conversion， plus the 标签 reader 和 writer XNodes。
English: Data type inspection and conversion, plus the Tag reader and writer XNodes.

37 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Data`.

## ArrayToCluster.vi

中文：an 数组 到 a cluster， taking the element 类型 从 the 数组's own 类型 information。
English: Converts an array into a cluster, taking the element types from the array's own type information.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/ArrayToCluster.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Array` : `array{variant.Variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Cluster` : `variant`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI converts an array to a cluster.
</pre>

</details>

## Change Data With Attributes.vim

中文：VI，copies the attributes 的 Variant 在 onto the 数据 input 和 返回 the result 作为 a variant， so a new 值 can be carried together 使用 the original attributes。
English: Polymorphic VI that copies the attributes of Variant in onto the Data input and returns the result as a variant, so a new value can be carried together with the original attributes.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Change Data With Attributes.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Data` : `int32` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Variant in` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Variant out` : `variant`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI retrieves the names and data from Variant in and sets them in the Data input and outputs them as Variant out.
</pre>

</details>

## Changed Data Filter(FNiN).vim

中文：筛选 variant 数据 according 到 the length 的 checked 数据， padding shorter inputs 使用 zeros。 Wire Reset(F) 到 control 是否 the filtering runs 在 this call。
English: Filters variant data according to the length of checked data, padding shorter inputs with zeros. Wire Reset(F) to control whether the filtering runs on this call.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Changed Data Filter(FNiN).vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Reset(F)` : `bool`
  - `checked data` : `array{variant.Variant}` *(required)*
  - `Data 3` : `array{variant.Variant}`
  - `Data 2` : `array{variant.Variant}`
  - `Data 1` : `array{variant.Variant}`
- **Outputs**:
  - `data` : `array{variant.Variant}`
  - `Data 3 out` : `array{variant.Variant}`
  - `Data 2 out` : `array{variant.Variant}`
  - `Data 1 out` : `array{variant.Variant}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI is used to gilter the input variant data according to the length of checked data. If any input variant data has smaller length, the 0 will be padded. The Reset button is used to control whether the filtering process implements.
</pre>

</details>

## Clear Mutation History of lvClass.vi

中文：清除 the mutation history stored 在 the LabVIEW 类 在 路径 和 返回 the history records that were removed。
English: Clears the mutation history stored in the LabVIEW class at Path and returns the history records that were removed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Clear Mutation History of lvClass.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Path` : `path` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Mutation History` : `array{cluster{cluster{uint16.Major,uint16.Minor,uint16.Fix,uint16.Build}.Library Version,uint8.Old Name Index,variant.Class Default Data,array{uint32.Numeric}.Cluster Order Map,string.Parent Name,path.Parent Path,uint32.LabVIEW Version,string.User Comments,uint8.Mutation Flags,uint8.Parent Old Name Index,uint16.Parent Levels Added,uint16.Parent Levels Removed}.Mutation Record}`
- **Calls**: `Get LV Class Default Value.vi`, `Edit LVLibs.lvlib:Get Mutation History.vi`, `Edit LVLibs.lvlib:Set Mutation History.vi`

## ClusterToArray.vi

中文：a cluster 到 an 数组， taking the element 类型 从 the cluster's 类型 information so it works 用于 任意 cluster。
English: Converts a cluster into an array, taking the element type from the cluster's type information so it works for any cluster.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/ClusterToArray.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Cluster` : `variant`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Array` : `array{variant.Variant}`
- **Calls**: `TD_Get Cluster Information.vi`, `Get Type Code from I16 Array And Pos.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI converts a cluster to an array by specifying it to the array type.
</pre>

</details>

## Data To SingleElementsArray.vi

中文：Flattens a cluster 到 an 数组 的 its individual elements， naming 每个 通过 its 路径 below parentUrl joined 使用 Seperator。 The flat 名称 list 和 a 二维 tree description are returned 作为 well。
English: Flattens a cluster into an array of its individual elements, naming each by its path below parentUrl joined with Seperator. The flat name list and a two-dimensional tree description are returned as well.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Data To SingleElementsArray.vi`
- **Kind**: VI
- **Inputs**:
  - `Separator(/)` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `parentUrl` : `string`
  - `Cluster` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Tree Description` : `array.2{string.Data}`
  - `Full NameList` : `array{string.Data}`
  - `DataElementArray` : `array{variant.Data dup}`
- **Calls**: `NI_Data Type.lvlib:Get Type Information.vi`, `Format Variant into String Advance.vi`, `Concatenate Strings If not Empty.vi`, `ClusterToArray.vi`, `Data To SingleElementsArray.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI converts a Cluster to a DataElementArray with each elements specified by parentUrl and Seperator in the form of Tree Description.
</pre>

</details>

## Enum Data Patch.vi

中文：Patches the 字符串 值 的 an enum carried 在 数据 在， using the enum 类型 information 在 Ref， so an enum whose labels have changed still 解码 correctly。
English: Patches the string values of an enum carried in data in, using the enum type information in Ref, so an enum whose labels have changed still decodes correctly.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Enum Data Patch.vi`
- **Kind**: VI
- **Inputs**:
  - `Ref` : `variant` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `data in` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `data out` : `variant`
- **Calls**: `NI_Data Type.lvlib:Get Type Information.vi`, `_reuse_openG.lvlib:Get Strings from Enum.vi`, `_reuse_openG.lvlib:Set Enum String Value.vi`, `ClusterToArray.vi`, `Enum Data Patch.vi`, `_reuse_openG.lvlib:Array of VData to VCluster.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI patches the Enum Data by setting the string value specified by Ref.
</pre>

</details>

## Feedback Node with Reset.vim

中文：VI，stores 和 返回 the previous 值 的 checked 数据， 使用 a Reset(F) input that 清除 the stored value。
English: Polymorphic VI that stores and returns the previous value of checked data, with a Reset(F) input that clears the stored value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Feedback Node with Reset.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `checked data` : `variant` *(required)*
  - `Reset(F)` : `bool` *(required)*
- **Outputs**:
  - `data` : `variant`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI creates a feedback node with a reset button.
</pre>

</details>

## Get DataType Description.vi

中文：Palette helper grouping the 数据 类型 description VIs， 其 返回 a readable description 和 an MD5 hash 用于 a 数据 type。
English: Palette helper grouping the data type description VIs, which return a readable description and an MD5 hash for a data type.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Get DataType Description.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Get DataType Description String.vi`, `Get DataType Description MD5.vi`

## SingleElementsArray To Data.vi

中文：Rebuilds a cluster 从 an 数组 的 named elements， using Pototype 到 supply the target type。
English: Rebuilds a cluster from an array of named elements, using Pototype to supply the target type.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/SingleElementsArray To Data.vi`
- **Kind**: VI
- **Inputs**:
  - `Prototype` : `variant` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `DataElementArray` : `array{variant.Variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Cluster` : `variant`
- **Calls**: `NI_Data Type.lvlib:Get Type Information.vi`, `ClusterToArray.vi`, `Data To SingleElementsArray.vi`, `SingleElementsArray To Data.vi`, `_reuse_openG.lvlib:Set Data Name.vi`, `_reuse_openG.lvlib:Array of VData to VCluster.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI converts a DataELementArray to a Cluster.
</pre>

</details>

## Data / Tag

### List Tags.vim

中文：VI，列出 the 标签 名称 held 在 a 标签 map 数据 值 引用 到 an 数组， optionally together 使用 their values。
English: Polymorphic VI that lists the tag names held in a tag map data value reference into an array, optionally together with their values.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/List Tags.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `List Data?(F)` : `bool`
  - `TagMap` : `ref{DataValue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Array` : `array{variant.Type}`
  - `names` : `array{string}`
  - `TagMap out` : `ref{DataValue}{variant}`

### Read Tag.vim

中文：VI，读取 the 值 stored under 名称 从 a 标签 map 和 报告 是否 the 标签 was found。 Wire 类型 到 select the 数据 类型 的 the returned value。
English: Polymorphic VI that reads the value stored under name from a tag map and reports whether the tag was found. Wire Type to select the data type of the returned value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/Read Tag.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Type` : `variant`
  - `name` : `string` *(required)*
  - `TagMap` : `ref{DataValue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `found` : `bool`
  - `Value` : `variant`
  - `TagMap out` : `ref{DataValue}{variant}`

### Write Tag.vim

中文：VI，stores 值 under 名称 在 a 标签 map， adding the 标签 当 it is not present yet。
English: Polymorphic VI that stores Value under name in a tag map, adding the tag when it is not present yet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/Write Tag.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Value` : `variant` *(required)*
  - `name` : `string` *(required)*
  - `TagMap` : `ref{DataValue}{variant}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `TagMap out` : `ref{DataValue}{variant}`

## Data / Tag/ReadTag

### AdaptToInputs.vi

中文：Read 标签 XNode script that adapts the node's terminals 到 the 数据 类型 连线的 到 its inputs。
English: Read Tag XNode script that adapts the node's terminals to the data types wired to its inputs.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/AdaptToInputs.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `Term Types` : `array{cluster{variant.Type,string.Id}.Term Type}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Reply` : `array{string.String}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`

### GenCodeScripts-AddSubVI.vi

中文：Read 标签 XNode script that places the subVI the 生成的 代码 needs onto the caller's block diagram。
English: Read Tag XNode script that places the subVI the generated code needs onto the caller's block diagram.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/GenCodeScripts-AddSubVI.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `path` : `path` *(required)*
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}` *(required)*
  - `Diagram` : `ref{LV.TopLevelDiagram}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Terms out` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}`
  - `Diagram out` : `ref{LV.TopLevelDiagram}`
- **Calls**: `ReadTag.xnode:xnode_FindTerms.vi`, `Simple Error Handler.vi`

### GenCodeScripts-ReplaceContent.vi

中文：Read 标签 XNode script that 打开 the 代码 template 和 replaces its placeholder 内容 使用 the 生成的 terms。
English: Read Tag XNode script that opens the code template and replaces its placeholder content with the generated terms.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/GenCodeScripts-ReplaceContent.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `template` : `path` *(required)*
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}` *(required)*
  - `Diagram` : `ref{LV.TopLevelDiagram}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Terms out` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}`
  - `Diagram out` : `ref{LV.TopLevelDiagram}`
- **Calls**: `Trim Whitespace.vi`, `ReadTag.xnode:xnode_FindTerms.vi`

### GenerateCode.vi

中文：Read 标签 XNode script that generates the block 框图 代码 performing the 标签 read， 和 报告 是否 代码 was generated。
English: Read Tag XNode script that generates the block diagram code performing the tag read, and reports whether code was generated.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/GenerateCode.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}`
  - `Diagram` : `ref{LV.TopLevelDiagram}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Generated Code?` : `bool`
  - `Reply` : `array{string.String}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`
- **Calls**: `ReadTag.xnode:GenCodeScripts-ReplaceContent.vi`, `ReadTag.xnode:xnode_ShowDiagram.vi`, `Simple Error Handler.vi`

### GetDisplayName3.vi

中文：Read 标签 XNode script that 返回 the 类型 名称 和 instance 名称 displayed 在 the node。
English: Read Tag XNode script that returns the type name and instance name displayed on the node.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/GetDisplayName3.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Type Name` : `string`
  - `Instance Name` : `string`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`

### GetImage.vi

中文：Read 标签 XNode script that 返回 the picture drawn 在 the node。
English: Read Tag XNode script that returns the picture drawn on the node.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/GetImage.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Image` : `picture`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Read PNG File.vi`, `Draw Flattened Pixmap.vi`

### GetTerms4.vi

中文：Read 标签 XNode script that describes the node's 连接器 窗格 terminals， including their 名称， 类型， bounds 和 directions。
English: Read Tag XNode script that describes the node's connector pane terminals, including their names, types, bounds and directions.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/GetTerms4.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Terms` : `array{cluster{string.Name,string.Id,variant.Type,cluster{int32.Left,int32.Top,int32.Right,int32.Bottom}.Bounds,bool.Input?,bool.Required?,bool.Recommended?,bool.Adaptive?,bool.Hidden?,uint32{Auto,Up,Down,Left,Right,Center}.Direction,bool.Break Wire?,string.English Name}.Term 4}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `ReadTag.xnode:xnode_ConnectPane.vi`

### Initialize.vi

中文：Read 标签 XNode script that initialises the node's state。
English: Read Tag XNode script that initialises the node's state.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/Initialize.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Outputs**:
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`

### UpdateState2.vi

中文：Read 标签 XNode script that refreshes the node 状态 当 its version 或 the 连线的 类型 change， 和 报告 是否 the 状态 is still good。
English: Read Tag XNode script that refreshes the node state when its version or the wired types change, and reports whether the state is still good.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/UpdateState2.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `Old State` : `variant`
  - `Version` : `cluster{uint16.Major,uint16.Minor,uint16.Fix,uint16.Build}`
- **Outputs**:
  - `Is Good?` : `bool`
  - `Reply` : `array{string.String}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`

### xnode_ConnectPane.vi

中文：XNode helper that 返回 the 连接器 窗格 direction 和 bounds 用于 the terminal 在 the 给定的 index。
English: XNode helper that returns the connector pane direction and bounds for the terminal at the given index.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/xnode_ConnectPane.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `index` : `int32` *(required)*
- **Outputs**:
  - `Direction` : `uint32{Auto,Up,Down,Left,Right,Center}`
  - `Bounds` : `cluster{int32.Left,int32.Top,int32.Right,int32.Bottom}`

### xnode_FindTerms.vi

中文：XNode helper that 返回 the 代码 generation term 匹配 the terminal 引用 it is given。
English: XNode helper that returns the code generation term matching the terminal reference it is given.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/xnode_FindTerms.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}` *(required)*
  - `String` : `string` *(required)*
- **Outputs**:
  - `Terminal` : `ref{LV.Terminal}`

### xnode_ShowDiagram.vi

中文：XNode helper that 显示 或 hides the 生成的 block 框图 according 到 show?。
English: XNode helper that shows or hides the generated block diagram according to show?.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/ReadTag/xnode_ShowDiagram.vi`
- **Kind**: VI; member of ReadTag.xnode; XNode script
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `show?` : `bool` *(required)*
  - `TopLevelDiagram in` : `ref{LV.TopLevelDiagram}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `TopLevelDiagram out` : `ref{LV.TopLevelDiagram}`

## Data / Tag/WriteTag

### AdaptToInputs.vi

中文：Write 标签 XNode script that adapts the node's terminals 到 the 数据 类型 连线的 到 its inputs。
English: Write Tag XNode script that adapts the node's terminals to the data types wired to its inputs.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/AdaptToInputs.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `Term Types` : `array{cluster{variant.Type,string.Id}.Term Type}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Reply` : `array{string.String}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`

### GenCodeScripts-AddSubVI.vi

中文：Write 标签 XNode script that places the subVI the 生成的 代码 needs onto the caller's block diagram。
English: Write Tag XNode script that places the subVI the generated code needs onto the caller's block diagram.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/GenCodeScripts-AddSubVI.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `path` : `path` *(required)*
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}` *(required)*
  - `Diagram` : `ref{LV.TopLevelDiagram}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Terms out` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}`
  - `Diagram out` : `ref{LV.TopLevelDiagram}`
- **Calls**: `WriteTag.xnode:xnode_FindTerms.vi`, `Simple Error Handler.vi`

### GenCodeScripts-ReplaceContent.vi

中文：Write 标签 XNode script that 打开 the 代码 template 和 replaces its placeholder 内容 使用 the 生成的 terms。
English: Write Tag XNode script that opens the code template and replaces its placeholder content with the generated terms.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/GenCodeScripts-ReplaceContent.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `template` : `path` *(required)*
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}` *(required)*
  - `Diagram` : `ref{LV.TopLevelDiagram}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Terms out` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}`
  - `Diagram out` : `ref{LV.TopLevelDiagram}`
- **Calls**: `Trim Whitespace.vi`, `WriteTag.xnode:xnode_FindTerms.vi`

### GenerateCode.vi

中文：Write 标签 XNode script that generates the block 框图 代码 performing the 标签 write， 和 报告 是否 代码 was generated。
English: Write Tag XNode script that generates the block diagram code performing the tag write, and reports whether code was generated.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/GenerateCode.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}`
  - `Diagram` : `ref{LV.TopLevelDiagram}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Generated Code?` : `bool`
  - `Reply` : `array{string.String}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`
- **Calls**: `WriteTag.xnode:GenCodeScripts-ReplaceContent.vi`, `WriteTag.xnode:xnode_ShowDiagram.vi`, `Simple Error Handler.vi`

### GetDisplayName3.vi

中文：Write 标签 XNode script that 返回 the 类型 名称 和 instance 名称 displayed 在 the node。
English: Write Tag XNode script that returns the type name and instance name displayed on the node.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/GetDisplayName3.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Type Name` : `string`
  - `Instance Name` : `string`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`

### GetImage.vi

中文：Write 标签 XNode script that 返回 the picture drawn 在 the node。
English: Write Tag XNode script that returns the picture drawn on the node.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/GetImage.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Image` : `picture`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Read PNG File.vi`, `Draw Flattened Pixmap.vi`

### GetTerms4.vi

中文：Write 标签 XNode script that describes the node's 连接器 窗格 terminals， including their 名称， 类型， bounds 和 directions。
English: Write Tag XNode script that describes the node's connector pane terminals, including their names, types, bounds and directions.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/GetTerms4.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `State In` : `cluster{variant.Type}`
- **Outputs**:
  - `Terms` : `array{cluster{string.Name,string.Id,variant.Type,cluster{int32.Left,int32.Top,int32.Right,int32.Bottom}.Bounds,bool.Input?,bool.Required?,bool.Recommended?,bool.Adaptive?,bool.Hidden?,uint32{Auto,Up,Down,Left,Right,Center}.Direction,bool.Break Wire?,string.English Name}.Term 4}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `WriteTag.xnode:xnode_ConnectPane.vi`

### Initialize.vi

中文：Write 标签 XNode script that initialises the node's state。
English: Write Tag XNode script that initialises the node's state.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/Initialize.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Outputs**:
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`

### UpdateState2.vi

中文：Write 标签 XNode script that refreshes the node 状态 当 its version 或 the 连线的 类型 change， 和 报告 是否 the 状态 is still good。
English: Write Tag XNode script that refreshes the node state when its version or the wired types change, and reports whether the state is still good.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/UpdateState2.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `XRef` : `ref{LV.XNode}`
  - `Old State` : `variant`
  - `Version` : `cluster{uint16.Major,uint16.Minor,uint16.Fix,uint16.Build}`
- **Outputs**:
  - `Is Good?` : `bool`
  - `Reply` : `array{string.String}`
  - `Fatal Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `State Out` : `cluster{variant.Type}`

### xnode_ConnectPane.vi

中文：XNode helper that 返回 the 连接器 窗格 direction 和 bounds 用于 the terminal 在 the 给定的 index。
English: XNode helper that returns the connector pane direction and bounds for the terminal at the given index.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/xnode_ConnectPane.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `index` : `int32` *(required)*
- **Outputs**:
  - `Direction` : `uint32{Auto,Up,Down,Left,Right,Center}`
  - `Bounds` : `cluster{int32.Left,int32.Top,int32.Right,int32.Bottom}`

### xnode_FindTerms.vi

中文：XNode helper that 返回 the 代码 generation term 匹配 the terminal 引用 it is given。
English: XNode helper that returns the code generation term matching the terminal reference it is given.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/xnode_FindTerms.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `Terms` : `array{cluster{ref{LV.Terminal}.Term,string.Id}.Code Gen Term}` *(required)*
  - `String` : `string` *(required)*
- **Outputs**:
  - `Terminal` : `ref{LV.Terminal}`

### xnode_ShowDiagram.vi

中文：XNode helper that 显示 或 hides the 生成的 block 框图 according 到 show?。
English: XNode helper that shows or hides the generated block diagram according to show?.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Data/Tag/WriteTag/xnode_ShowDiagram.vi`
- **Kind**: VI; member of WriteTag.xnode; XNode script
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `show?` : `bool` *(required)*
  - `TopLevelDiagram in` : `ref{LV.TopLevelDiagram}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `TopLevelDiagram out` : `ref{LV.TopLevelDiagram}`
