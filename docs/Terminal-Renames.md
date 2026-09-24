# Terminal renames

Every connector-pane terminal name that was changed, and why. The name of a terminal
**is** the label of the front panel object behind it, so a rename changes what the VI
shows in Context Help and on its front panel.

中文：列出所有更改过的连接器窗格端子名称及更改原因。端子名称**就是**其对应前面板对象的标签，因此重命名会改变 VI 在 Context Help 和前面板上显示的名称。
English: Every connector-pane terminal name that was changed, and why. The name of a terminal **is** the label of the front panel object behind it, so a rename changes what the VI shows in Context Help and on its front panel.

## What counted as a rename

中文：以下类别的更改均计为重命名。
English: The following categories were counted as renames.

| Category                           | Rule                                                                        |
| ---------------------------------- | --------------------------------------------------------------------------- |
| spelling                           | the word is misspelled (`Seperator`, `Peroid`, `Recursively`, `Orgin`, ...) |
| stray character                    | a trailing space or a stray quote inside the name                           |
| broken `dup` artifact              | LabVIEW's automatic `(dup)` / `dup ` marker used as a name                  |
| Chinese name in an English palette | the terminal was named in Chinese                                           |
| meaningless name                   | `1`, `2`, `3` - the name carries no information                             |
| misleading name                    | the name says something the terminal does not do                            |
| multi-line name                    | the name contains line breaks, which Context Help cannot show               |
| error terminal convention          | one spelling for the pass-through error terminals                           |

Renaming keeps the connector pane **positions** unchanged, so existing callers keep
their wiring: LabVIEW links a subVI by terminal position and type, not by name. Only
code that reaches a control by _name_ at run time is affected - a `VI Server`
`Get/Set Control Value` addressed by a string, or a `Call By Reference` pane.

中文：重命名不会改变连接器窗格的 **positions**，因此现有调用方的连线保持不变：LabVIEW 根据端子位置和类型（而非名称）连接 subVI。只有在运行时按 _name_ 访问控件的代码会受影响，例如通过字符串指定目标的 `VI Server` `Get/Set Control Value`，或 `Call By Reference` 窗格。
English: Renaming keeps the connector pane **positions** unchanged, so existing callers keep their wiring: LabVIEW links a subVI by terminal position and type, not by name. Only code that reaches a control by _name_ at run time is affected - a `VI Server` `Get/Set Control Value` addressed by a string, or a `Call By Reference` pane.

Nothing here was renamed merely because a different name would also have been
reasonable. Names that carry a usage hint (`Time(Empty to Use Current Time)`) were
left alone.

中文：这里没有仅仅因为存在其他合理名称就进行重命名。包含使用提示的名称（`Time(Empty to Use Current Time)`）保持不变。
English: Nothing here was renamed merely because a different name would also have been reasonable. Names that carry a usage hint (`Time(Empty to Use Current Time)`) were left alone.

## Application/Check if Windows Process Exists.vi

| conIdx | dir | was            | now                | why             |
| ------ | --- | -------------- | ------------------ | --------------- |
| 3      | out | `service name` | `process name out` | misleading name |
| 11     | in  | `str`          | `process name`     | misleading name |

## Application/Check if Windows Service Exists.vi

| conIdx | dir | was            | now                | why             |
| ------ | --- | -------------- | ------------------ | --------------- |
| 3      | out | `service name` | `service name out` | misleading name |
| 11     | in  | `str`          | `service name`     | misleading name |

## Application/Error File Logger.vi

| conIdx | dir | was           | now             | why             |
| ------ | --- | ------------- | --------------- | --------------- |
| 0      | in  | `errlog Name` | `Log File Name` | misleading name |

## Application/Generate Start-Up Registry Patch File.vi

| conIdx | dir | was       | now                  | why             |
| ------ | --- | --------- | -------------------- | --------------- |
| 7      | in  | `RegPath` | `Registry File Path` | misleading name |

## Application/Kill Process.vi

| conIdx | dir | was            | now                | why             |
| ------ | --- | -------------- | ------------------ | --------------- |
| 3      | out | `service name` | `process name out` | misleading name |
| 11     | in  | `str`          | `process name`     | misleading name |

## Comparison/Compare Two Numbers.vim

| conIdx | dir | was            | now          | why                 |
| ------ | --- | -------------- | ------------ | ------------------- |
| 0      | out | `Ref (dup)`    | `Ref out`    | broken dup artifact |
| 2      | out | `Number (dup)` | `Number out` | broken dup artifact |

## Configuration/Excel/CreateXL_Workbook.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/GetXL_AllCellValues.vi

| conIdx | dir | was                      | now                  | why                       |
| ------ | --- | ------------------------ | -------------------- | ------------------------- |
| 3      | out | `Refnum Cluster Out out` | `Refnum Cluster Out` | error terminal convention |
| 11     | in  | `Refnum Cluster Out in`  | `Refnum Cluster In`  | error terminal convention |

## Configuration/Excel/GetXL_CellValue_Dbl.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/GetXL_CellValue_String.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/GetXL_CellValues_2D_Dbl.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/GetXL_CellValues_2D_String.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/GetXL_WorkSheetName.vi

| conIdx | dir | was                 | now                 | why                       |
| ------ | --- | ------------------- | ------------------- | ------------------------- |
| 11     | in  | `Refnum Cluster in` | `Refnum Cluster In` | error terminal convention |

## Configuration/Excel/GetXL_WorkSheetSize.vi

| conIdx | dir | was                 | now                 | why                       |
| ------ | --- | ------------------- | ------------------- | ------------------------- |
| 11     | in  | `Refnum Cluster in` | `Refnum Cluster In` | error terminal convention |

## Configuration/Excel/OpenXL_Workbook.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/SetXL_AllCellValues.vi

| conIdx | dir | was                      | now                  | why                       |
| ------ | --- | ------------------------ | -------------------- | ------------------------- |
| 3      | out | `Refnum Cluster Out out` | `Refnum Cluster Out` | error terminal convention |
| 11     | in  | `Refnum Cluster Out in`  | `Refnum Cluster In`  | error terminal convention |

## Configuration/Excel/SetXL_CellValue_Dbl.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 11     | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/SetXL_CellValue_String.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 11     | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/SetXL_CellValues_2D_Dbl.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 11     | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Excel/SetXL_CellValues_2D_String.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 11     | in  | `error in` | `error in (no error)` | error terminal convention |

## Configuration/Ini/Lines Filter-Annotation.vi

| conIdx | dir | was                       | now                       | why      |
| ------ | --- | ------------------------- | ------------------------- | -------- |
| 7      | in  | `Annotation Seperator(#)` | `Annotation Separator(#)` | spelling |

## Configuration/Ini/Lines LoadArrayOfSessions.vi

| conIdx | dir | was                       | now                       | why      |
| ------ | --- | ------------------------- | ------------------------- | -------- |
| 7      | in  | `Annotation Seperator(#)` | `Annotation Separator(#)` | spelling |

## Configuration/Ini/Lines LoadMatrixOfSessions.vi

| conIdx | dir | was                       | now                       | why      |
| ------ | --- | ------------------------- | ------------------------- | -------- |
| 7      | in  | `Annotation Seperator(#)` | `Annotation Separator(#)` | spelling |

## Data/ArrayToCluster.vi

| conIdx | dir | was         | now                   | why                       |
| ------ | --- | ----------- | --------------------- | ------------------------- |
| 0      | out | `Error out` | `error out`           | error terminal convention |
| 8      | in  | `Error in`  | `error in (no error)` | error terminal convention |

## Data/Changed Data Filter(FNiN).vim

| conIdx | dir | was     | now          | why              |
| ------ | --- | ------- | ------------ | ---------------- |
| 1      | out | `3 out` | `Data 3 out` | meaningless name |
| 2      | out | `2 out` | `Data 2 out` | meaningless name |
| 3      | out | `1 out` | `Data 1 out` | meaningless name |
| 9      | in  | `3`     | `Data 3`     | meaningless name |
| 10     | in  | `2`     | `Data 2`     | meaningless name |
| 11     | in  | `1`     | `Data 1`     | meaningless name |

## Data/Data To SingleElementsArray.vi

| conIdx | dir | was                | now                | why      |
| ------ | --- | ------------------ | ------------------ | -------- |
| 1      | out | `Tree Discription` | `Tree Description` | spelling |

## Data/SingleElementsArray To Data.vi

| conIdx | dir | was        | now         | why      |
| ------ | --- | ---------- | ----------- | -------- |
| 7      | in  | `Pototype` | `Prototype` | spelling |

## Data/Tag/List Tags.vim

| conIdx | dir | was           | now          | why                 |
| ------ | --- | ------------- | ------------ | ------------------- |
| 3      | out | `TagMap(dup)` | `TagMap out` | broken dup artifact |

## Data/Tag/Read Tag.vim

| conIdx | dir | was           | now          | why                 |
| ------ | --- | ------------- | ------------ | ------------------- |
| 3      | out | `TagMap(dup)` | `TagMap out` | broken dup artifact |

## Data/Tag/ReadTag/GenCodeScripts-AddSubVI.vi

| conIdx | dir | was             | now           | why                 |
| ------ | --- | --------------- | ------------- | ------------------- |
| 2      | out | `Terms (dup)`   | `Terms out`   | broken dup artifact |
| 3      | out | `Diagram (dup)` | `Diagram out` | broken dup artifact |

## Data/Tag/ReadTag/GenCodeScripts-ReplaceContent.vi

| conIdx | dir | was             | now                   | why                       |
| ------ | --- | --------------- | --------------------- | ------------------------- |
| 2      | out | `Terms (dup)`   | `Terms out`           | broken dup artifact       |
| 3      | out | `Diagram (dup)` | `Diagram out`         | broken dup artifact       |
| 8      | in  | `error in`      | `error in (no error)` | error terminal convention |

## Data/Tag/Write Tag.vim

| conIdx | dir | was           | now          | why                 |
| ------ | --- | ------------- | ------------ | ------------------- |
| 3      | out | `TagMap(dup)` | `TagMap out` | broken dup artifact |

## Data/Tag/WriteTag/GenCodeScripts-AddSubVI.vi

| conIdx | dir | was             | now           | why                 |
| ------ | --- | --------------- | ------------- | ------------------- |
| 2      | out | `Terms (dup)`   | `Terms out`   | broken dup artifact |
| 3      | out | `Diagram (dup)` | `Diagram out` | broken dup artifact |

## Data/Tag/WriteTag/GenCodeScripts-ReplaceContent.vi

| conIdx | dir | was             | now                   | why                       |
| ------ | --- | --------------- | --------------------- | ------------------------- |
| 2      | out | `Terms (dup)`   | `Terms out`           | broken dup artifact       |
| 3      | out | `Diagram (dup)` | `Diagram out`         | broken dup artifact       |
| 8      | in  | `error in`      | `error in (no error)` | error terminal convention |

## Dialog & Interface/Blink LEDArray Control.vi

| conIdx | dir | was                 | now                        | why                                |
| ------ | --- | ------------------- | -------------------------- | ---------------------------------- |
| 6      | in  | `移动间隔(1000 ms)` | `Update Interval(1000 ms)` | Chinese name in an English palette |

## Dialog & Interface/ButtonGroupEnum/ButtonGroupEnum to Enum.vim

| conIdx | dir | was            | now                     | why                       |
| ------ | --- | -------------- | ----------------------- | ------------------------- |
| 2      | out | `Enum (dup)`   | `Enum out`              | broken dup artifact       |
| 3      | out | `CtlRef (dup)` | `Control Reference out` | broken dup artifact       |
| 8      | in  | `error in`     | `error in (no error)`   | error terminal convention |
| 11     | in  | `CtlRef`       | `Control Reference`     | misleading name           |

## Dialog & Interface/ButtonGroupEnum/Set ButtonGroupEnum By Ref.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Dialog & Interface/ButtonGroupEnum/Set ButtonGroupEnum Value.vim

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Dialog & Interface/EventHandler-String Input with Prompt.vi

| conIdx | dir | was               | now                   | why                       |
| ------ | --- | ----------------- | --------------------- | ------------------------- |
| 0      | out | `Error out`       | `error out`           | error terminal convention |
| 3      | out | `reference (dup)` | `reference out`       | broken dup artifact       |
| 8      | in  | `Error in`        | `error in (no error)` | error terminal convention |

## Dialog & Interface/Fit Controls to Rect.vi

| conIdx | dir | was         | now                   | why                       |
| ------ | --- | ----------- | --------------------- | ------------------------- |
| 0      | out | `Error Out` | `error out`           | error terminal convention |
| 4      | in  | `Error In`  | `error in (no error)` | error terminal convention |

## Dialog & Interface/Fit VI window to Caller Center.vi

| conIdx | dir | was          | now                   | why                       |
| ------ | --- | ------------ | --------------------- | ------------------------- |
| 0      | out | `Error Out`  | `error out`           | error terminal convention |
| 3      | out | `dup VI Ref` | `VI Ref out`          | broken dup artifact       |
| 4      | in  | `Error In`   | `error in (no error)` | error terminal convention |

## Dialog & Interface/Fit VI window to Content.vi

| conIdx | dir | was          | now          | why                 |
| ------ | --- | ------------ | ------------ | ------------------- |
| 3      | out | `dup VI Ref` | `VI Ref out` | broken dup artifact |

## Dialog & Interface/Fit VI window to Largest Dec.vi

| conIdx | dir | was          | now          | why                 |
| ------ | --- | ------------ | ------------ | ------------------- |
| 3      | out | `dup VI Ref` | `VI Ref out` | broken dup artifact |

## Dialog & Interface/Fit VI window to Pane Center.vi

| conIdx | dir | was          | now                   | why                       |
| ------ | --- | ------------ | --------------------- | ------------------------- |
| 0      | out | `Error Out`  | `error out`           | error terminal convention |
| 3      | out | `dup VI Ref` | `VI Ref out`          | broken dup artifact       |
| 4      | in  | `Error In`   | `error in (no error)` | error terminal convention |

## Dialog & Interface/Fit VI window to Panel Center.vi

| conIdx | dir | was          | now                   | why                       |
| ------ | --- | ------------ | --------------------- | ------------------------- |
| 0      | out | `Error Out`  | `error out`           | error terminal convention |
| 3      | out | `dup VI Ref` | `VI Ref out`          | broken dup artifact       |
| 4      | in  | `Error In`   | `error in (no error)` | error terminal convention |

## Dialog & Interface/Fit VI window to Rect.vi

| conIdx | dir | was          | now                   | why                       |
| ------ | --- | ------------ | --------------------- | ------------------------- |
| 0      | out | `Error Out`  | `error out`           | error terminal convention |
| 3      | out | `dup VI Ref` | `VI Ref out`          | broken dup artifact       |
| 4      | in  | `Error In`   | `error in (no error)` | error terminal convention |

## Dialog & Interface/Fit VI window to Visible Content.vi

| conIdx | dir | was          | now          | why                 |
| ------ | --- | ------------ | ------------ | ------------------- |
| 3      | out | `dup VI Ref` | `VI Ref out` | broken dup artifact |

## Dialog & Interface/Get Border Rect.vi

| conIdx | dir | was         | now                   | why                       |
| ------ | --- | ----------- | --------------------- | ------------------------- |
| 0      | out | `Error out` | `error out`           | error terminal convention |
| 8      | in  | `Error in`  | `error in (no error)` | error terminal convention |

## Dialog & Interface/Get GObjs RectBound.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Dialog & Interface/Menu/GetMenuTagList.vi

| conIdx | dir | was                     | now                   | why                         |
| ------ | --- | ----------------------- | --------------------- | --------------------------- |
| 0      | out | `error in (no error)`   | `error out`           | pass-through named error in |
| 7      | in  | `Seperator("\")`        | `Separator("\")`      | spelling                    |
| 8      | in  | `error in (no error) 2` | `error in (no error)` | duplicate error name        |

## File/Check if File or Folder Exists 2.vi

| conIdx | dir | was        | now        | why                 |
| ------ | --- | ---------- | ---------- | ------------------- |
| 3      | out | `dup path` | `path out` | broken dup artifact |

## File/Create Directory if Non-Existant.vi

| conIdx | dir | was                  | now                  | why                 |
| ------ | --- | -------------------- | -------------------- | ------------------- |
| 3      | out | `dup Directory Path` | `Directory Path out` | broken dup artifact |

## File/Filter Paths if Folder matches Pattern.vi

| conIdx | dir | was                                                      | now                                   | why                 |
| ------ | --- | -------------------------------------------------------- | ------------------------------------- | ------------------- |
| 0      | out | `error in (no error) (dup)`                              | `error out`                           | broken dup artifact |
| 3      | out | `Filted Paths`                                           | `Filtered Paths`                      | spelling            |
| 6      | in  | `REP ( ^[_.] as Default)\nempty to disable this feature` | `REP (^[_.] default, empty disables)` | multi-line name     |

## File/First Matched Config File with Ext Options.vi

| conIdx | dir | was              | now              | why      |
| ------ | --- | ---------------- | ---------------- | -------- |
| 8      | in  | `Recrusively(F)` | `Recursively(F)` | spelling |

## File/First Matched Config File.vi

| conIdx | dir | was              | now              | why      |
| ------ | --- | ---------------- | ---------------- | -------- |
| 8      | in  | `Recrusively(F)` | `Recursively(F)` | spelling |

## File/Make String Safe in Path.vi

| conIdx | dir | was                   | now                    | why      |
| ------ | --- | --------------------- | ---------------------- | -------- |
| 6      | out | `Filesafe String Out` | `File Safe String Out` | spelling |

## File/Move Contained Files to Folder.vi

| conIdx | dir | was               | now                | why      |
| ------ | --- | ----------------- | ------------------ | -------- |
| 6      | in  | `exclued files`   | `excluded files`   | spelling |
| 10     | in  | `Dest Foder Path` | `Dest Folder Path` | spelling |

## File/Recursive File List2.vi

| conIdx | dir | was                                                                          | now                                        | why                 |
| ------ | --- | ---------------------------------------------------------------------------- | ------------------------------------------ | ------------------- |
| 3      | out | `dup Folder Path`                                                            | `Folder Path out`                          | broken dup artifact |
| 4      | in  | `Folders to Exclude\nREP ( ^[_.] as Default)\nempty to disable this feature` | `Folders to Exclude (REP, empty disables)` | multi-line name     |

## File/Recursive Folder List.vi

| conIdx | dir | was               | now               | why                 |
| ------ | --- | ----------------- | ----------------- | ------------------- |
| 3      | out | `dup Folder Path` | `Folder Path out` | broken dup artifact |

## File/Recursive Folder List2.vi

| conIdx | dir | was                                                                          | now                                        | why                 |
| ------ | --- | ---------------------------------------------------------------------------- | ------------------------------------------ | ------------------- |
| 3      | out | `dup Folder Path`                                                            | `Folder Path out`                          | broken dup artifact |
| 4      | in  | `Folders to Exclude\nREP ( ^[_.] as Default)\nempty to disable this feature` | `Folders to Exclude (REP, empty disables)` | multi-line name     |

## File/XML/XML_CheckExist.vi

| conIdx | dir | was           | now         | why                 |
| ------ | --- | ------------- | ----------- | ------------------- |
| 2      | out | `label (dup)` | `label out` | broken dup artifact |

## File/XML/XML_FoundValueByKey.vi

| conIdx | dir | was               | now             | why                 |
| ------ | --- | ----------------- | --------------- | ------------------- |
| 3      | out | `keyValues (dup)` | `keyValues out` | broken dup artifact |

## File/XML/XML_GetTag.vi

| conIdx | dir | was        | now       | why                 |
| ------ | --- | ---------- | --------- | ------------------- |
| 3      | out | `XML(dup)` | `XML out` | broken dup artifact |

## File/XML/XML_ValidateCompleteness.vi

| conIdx | dir | was         | now       | why                 |
| ------ | --- | ----------- | --------- | ------------------- |
| 2      | out | `VALID?`    | `valid?`  | spelling            |
| 3      | out | `XML (dup)` | `XML out` | broken dup artifact |

## Network/IP Reporter/Start IP Reporter.vi

| conIdx | dir | was         | now        | why      |
| ------ | --- | ----------- | ---------- | -------- |
| 11     | in  | `Setttings` | `Settings` | spelling |

## Network/TCP Data Transmission/TCP Loop - Client as Consumer.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Network/TCP Data Transmission/TCP Loop - Server as Producer.vi

| conIdx | dir | was         | now                   | why                       |
| ------ | --- | ----------- | --------------------- | ------------------------- |
| 0      | out | `Error Out` | `error out`           | error terminal convention |
| 8      | in  | `Error In`  | `error in (no error)` | error terminal convention |

## Network/UDP++/SplitUDPPacks.vi

| conIdx | dir | was    | now          | why             |
| ------ | --- | ------ | ------------ | --------------- |
| 8      | in  | `y`    | `pack size`  | misleading name |
| 11     | in  | `size` | `total size` | misleading name |

## Network/UDP++/UDP Read Data Array By Singlepack.vim

| conIdx | dir | was               | now           | why                                |
| ------ | --- | ----------------- | ------------- | ---------------------------------- |
| 7      | in  | `Data Type(dbl)`  | `data type`   | misleading name                    |
| 9      | in  | `超时毫秒(25000)` | `Timeout(ms)` | Chinese name in an English palette |

## Network/UDP++/UDP Read Data Array.vim

| conIdx | dir | was               | now           | why                                |
| ------ | --- | ----------------- | ------------- | ---------------------------------- |
| 7      | in  | `Data Type(dbl)`  | `data type`   | misleading name                    |
| 9      | in  | `超时毫秒(25000)` | `Timeout(ms)` | Chinese name in an English palette |

## Network/UDP++/UDP Read Memory.vi

| conIdx | dir | was               | now           | why                                |
| ------ | --- | ----------------- | ------------- | ---------------------------------- |
| 9      | in  | `超时毫秒(25000)` | `Timeout(ms)` | Chinese name in an English palette |

## Network/UDP++/UDP Write Data Array.vim

| conIdx | dir | was               | now           | why                                |
| ------ | --- | ----------------- | ------------- | ---------------------------------- |
| 9      | in  | `超时毫秒(25000)` | `Timeout(ms)` | Chinese name in an English palette |

## Network/UDP++/UDP Write Memory.vi

| conIdx | dir | was               | now           | why                                |
| ------ | --- | ----------------- | ------------- | ---------------------------------- |
| 9      | in  | `超时毫秒(25000)` | `Timeout(ms)` | Chinese name in an English palette |

## Numeric/Calc Sweep Points.vi

| conIdx | dir | was                     | now                    | why             |
| ------ | --- | ----------------------- | ---------------------- | --------------- |
| 9      | in  | `Points(0 as default)"` | `Points(0 as default)` | stray character |

## Numeric/Interpolate Data with Fracational Ratio.vi

| conIdx | dir | was     | now      | why      |
| ------ | --- | ------- | -------- | -------- |
| 11     | in  | `Orgin` | `Origin` | spelling |

## Numeric/Trim Unnecessary Zeros of Numeric String.vi

| conIdx | dir | was                                      | now                                      | why      |
| ------ | --- | ---------------------------------------- | ---------------------------------------- | -------- |
| 3      | out | `float String without unnccessary zeros` | `float String without unnecessary zeros` | spelling |

## Signal/Change Keeped Value.vim

| conIdx | dir | was          | now         | why             |
| ------ | --- | ------------ | ----------- | --------------- |
| 11     | in  | `new value ` | `new value` | stray character |

## Signal/Signal Change Detector with Period.vim

| conIdx | dir | was                | now                    | why                                |
| ------ | --- | ------------------ | ---------------------- | ---------------------------------- |
| 1      | out | `变化过去时间(ms)` | `Elapsed Time(ms)`     | Chinese name in an English palette |
| 2      | out | `周期内信号未变化` | `Unchanged in Period?` | Chinese name in an English palette |
| 9      | in  | `目标时间(ms)`     | `Target Period(ms)`    | Chinese name in an English palette |

## Signal/Signal Change with Latency.vim

| conIdx | dir | was                | now                | why                                |
| ------ | --- | ------------------ | ------------------ | ---------------------------------- |
| 0      | out | `变化过去时间(ms)` | `Elapsed Time(ms)` | Chinese name in an English palette |
| 8      | in  | `计时时长(ms)`     | `Duration(ms)`     | Chinese name in an English palette |

## Signal/Toggle Output(U64).vi

| conIdx | dir | was        | now               | why                                |
| ------ | --- | ---------- | ----------------- | ---------------------------------- |
| 6      | in  | `循环次数` | `Iteration Count` | Chinese name in an English palette |

## Signal/Turn F Immediatly But Ture T with Latency.vi

| conIdx | dir | was                | now                | why                                |
| ------ | --- | ------------------ | ------------------ | ---------------------------------- |
| 0      | out | `变化过去时间(ms)` | `Elapsed Time(ms)` | Chinese name in an English palette |
| 8      | in  | `计时时长(ms)`     | `Duration(ms)`     | Chinese name in an English palette |

## Signal/Turn T Immediatly But Ture F with Latency.vi

| conIdx | dir | was                | now                | why                                |
| ------ | --- | ------------------ | ------------------ | ---------------------------------- |
| 0      | out | `变化过去时间(ms)` | `Elapsed Time(ms)` | Chinese name in an English palette |
| 8      | in  | `计时时长(ms)`     | `Duration(ms)`     | Chinese name in an English palette |

## String/Concatenate Strings If not Empty.vi

| conIdx | dir | was            | now            | why      |
| ------ | --- | -------------- | -------------- | -------- |
| 4      | in  | `seperator(:)` | `separator(:)` | spelling |

## String/Match Multiple Pattern.vi

| conIdx | dir | was                | now               | why             |
| ------ | --- | ------------------ | ----------------- | --------------- |
| 4      | out | `pattern matched ` | `pattern matched` | stray character |

## Synchronization/Locker/locker-Create.vi

| conIdx | dir | was           | now          | why                 |
| ------ | --- | ------------- | ------------ | ------------------- |
| 3      | out | `locker(dup)` | `locker out` | broken dup artifact |

## Synchronization/Locker/locker-lock.vi

| conIdx | dir | was           | now          | why                 |
| ------ | --- | ------------- | ------------ | ------------------- |
| 3      | out | `locker(dup)` | `locker out` | broken dup artifact |

## Synchronization/Locker/locker-unlock.vi

| conIdx | dir | was           | now          | why                 |
| ------ | --- | ------------- | ------------ | ------------------- |
| 3      | out | `locker(dup)` | `locker out` | broken dup artifact |

## Synchronization/Second Call.vi

| conIdx | dir | was                 | now            | why      |
| ------ | --- | ------------------- | -------------- | -------- |
| 0      | out | `Second Call?: T/F` | `second call?` | spelling |

## Time/Background UI Trigger Timer.vi

| conIdx | dir | was                            | now                            | why                 |
| ------ | --- | ------------------------------ | ------------------------------ | ------------------- |
| 3      | out | `VI Ref (calling VI) (dup)`    | `VI Ref (calling VI) out`      | broken dup artifact |
| 10     | in  | `Backstage Update Peroid (ms)` | `Backstage Update Period (ms)` | spelling            |

## Time/Get Time in Second with Error Input.vi

| conIdx | dir | was         | now                   | why                       |
| ------ | --- | ----------- | --------------------- | ------------------------- |
| 0      | out | `Error out` | `error out`           | error terminal convention |
| 3      | in  | `Error in`  | `error in (no error)` | error terminal convention |

## Time/TimeKeeper(ms).vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Time/Timeout Timer.vi

| conIdx | dir | was             | now             | why      |
| ------ | --- | --------------- | --------------- | -------- |
| 9      | out | `time esliped?` | `time elapsed?` | spelling |

## Time/Wait If Error(ms).vi

| conIdx | dir | was         | now                   | why                       |
| ------ | --- | ----------- | --------------------- | ------------------------- |
| 11     | in  | `Error in`  | `error in (no error)` | error terminal convention |
| 15     | out | `Error out` | `error out`           | error terminal convention |

## Waveform/Generate Random Waveform.vi

| conIdx | dir | was        | now                   | why                       |
| ------ | --- | ---------- | --------------------- | ------------------------- |
| 8      | in  | `error in` | `error in (no error)` | error terminal convention |

## Terminal renames made outside the main batch

| VI                                            | conIdx | dir | was                   | now                    | why                       |
| --------------------------------------------- | ------ | --- | --------------------- | ---------------------- | ------------------------- |
| Data/ClusterToArray.vi                        | 8      | in  | `Error in`            | `error in (no error)`  | error terminal convention |
| Data/ClusterToArray.vi                        | 0      | out | `Error out`           | `error out`            | error terminal convention |
| Time/TimeKeeper(ms).vi                        | 11     | in  | `Peroid(ms)`          | `Period(ms)`           | spelling                  |
| Data/Data To SingleElementsArray.vi           | 6      | in  | `Seperator(/)`        | `Separator(/)`         | spelling                  |
| Network/IP Reporter/Scan Distributed Nodes.vi | 11     | in  | `ScanPeroid(>2000ms)` | `Scan Period(>2000ms)` | spelling                  |
