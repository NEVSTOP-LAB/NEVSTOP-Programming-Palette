# String

中文：字符串格式化、缓存和 URI 解析工具。
English: String formatting, caching and URI parsing.

20 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/String`.

## Append Tabs To String Front.vi

中文：在 Str in 的每一行开头插入 TabCount 个制表符，以便缩进整段文本。
English: Inserts TabCount tabs at the start of every line of Str in, so a block of text can be indented.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Append Tabs To String Front.vi`
- **Kind**: VI
- **Inputs**:
  - `TabCount(4)` : `int32`
  - `Str in` : `string` *(required)*
- **Outputs**:
  - `Str out` : `string`
- **Calls**: `_reuse_openG.lvlib:String to 1D Array.vi`, `ini_configuration.lvlib:LinesToText.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Add &lt;b&gt;TabCount&lt;/b&gt; tabs before each line of input string &lt;b&gt;Str in&lt;/b&gt;.
</pre>

</details>

## Concatenate Strings If not Empty.vi

中文：使用 separator 连接 prefix 和 String；任一侧为空时省略分隔符。默认分隔符为冒号。
English: Joins prefix and String with separator, omitting the separator when either side is empty. The default separator is a colon.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Concatenate Strings If not Empty.vi`
- **Kind**: VI
- **Inputs**:
  - `String` : `string`
  - `separator(:)` : `string`
  - `prefix` : `string`
- **Outputs**:
  - `result` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Concatenate string with &lt;b&gt;separator&lt;/b&gt; if two strings are not empty. Otherwise, return raw values without &lt;b&gt;separator&lt;/b&gt;. The default value of &lt;b&gt;separator&lt;/b&gt; is colon separator(&lt;b&gt;:&lt;/b&gt;).
</pre>

</details>

## DataType Cacher.vi

中文：多态封装 VI：缓存数据类型的描述，使同一类型只需分析一次。
English: Polymorphic wrapper that caches the description of a data type, so the same type is only analysed once.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/DataType Cacher.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `DataType Cacher(Data).vi`, `DataType Cacher(DT).vi`

## Enum to String.vim

中文：多态 VI：返回连线到 Enum 的枚举值对应的标签。
English: Polymorphic VI that returns the label of the enum value wired to Enum.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Enum to String.vim`
- **Kind**: polymorphic VI (.vim); polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Enum` : `uint16{}` *(required)*
- **Outputs**:
  - `String` : `string`

## Extend Symbol Path.vi

中文：将 LabVIEW 符号路径展开为实际路径。可识别的形式包括 &lt;application&gt;、&lt;desktop&gt;、&lt;temp&gt;、&lt;user.lib&gt;、&lt;vi.lib&gt;、[xxx] 自定义符号和 %SystemVariable% 环境变量。
English: Expands a LabVIEW symbolic path into a real path. Recognised forms include &lt;application&gt;, &lt;desktop&gt;, &lt;temp&gt;, &lt;user.lib&gt;, &lt;vi.lib&gt;, [xxx] custom symbols and %SystemVariable% environment variables.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Extend Symbol Path.vi`
- **Kind**: VI
- **Inputs**:
  - `Symbol Path` : `path` *(required)*
- **Outputs**:
  - `Resolved Path` : `path`
- **Calls**: `Path Type -- Enum.vi`, `Get System Environment Variable.vi`, `Application Directory.vi`, `Get System Directory.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return the full name of &lt;b&gt;Symbolic Paths&lt;/b&gt;.

#Note [xxx] or &lt;xxx&gt;
- [application]
- [desktop]
- [temp][temporary]
- [user.lib]
- [vi.lib]
-%SystemVariable%, eg: OneDrive
</pre>

</details>

## Format Variant Attributes into String.vi

中文：将 Variant 的所有属性格式化为易读字符串，格式为 VariantAttributes(name0 -&gt; value0;name1 -&gt; value1;...)。
English: Formats every attribute of the Variant into a readable string of the form VariantAttributes(name0 -&gt; value0;name1 -&gt; value1;...).

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Format Variant Attributes into String.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Variant` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Data` : `string`
- **Calls**: `Format Variant into String Advance.vi`, `_reuse_openG.lvlib:1D Array to String.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Get the names and values of all &lt;b&gt;Variant&lt;/b&gt; attributes and  format them into string.
For example, return:
&lt;b&gt;VariantAttributes(name0 -&gt; value0;name1 -&gt; value1;...)&lt;/b&gt;
</pre>

</details>

## Format Variant into String Advance.vi

中文：将任意 variant 格式化为字符串，支持数组、簇、枚举、refnum 和 LabVIEW 类。将 include Variant Attributes(F) 设为 TRUE，可在结果中附加 variant 的属性；将 Format String 连线可覆盖默认格式。
English: Formats any variant into a string, handling arrays, clusters, enums, refnums and LabVIEW classes. Set include Variant Attributes(F) to append the variant's attributes, and wire Format String to override the default formatting.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Format Variant into String Advance.vi`
- **Kind**: VI
- **Inputs**:
  - `include Variant Attributes(F)` : `bool`
  - `Format String` : `string`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Variant` : `variant` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Type` : `uint8{Invalid Type,Void,I8,I16,I32,I64,U8,U16,U32,U64,Single Float,Double Float,Extended Float,Single Complex,Double Complex,Extended Complex,Enum U8,Enum U16,Enum U32,Enum U64,Single Float With Unit,Double Float With Unit,Extended Float With Unit,Single Complex with Unit,Double Complex with Unit,Extended Complex with Unit,Boolean,String,Path,Picture,Tag,Array,Cluster,Variant,LV Variant,Waveform,Timestamp,Digital Waveform,Digital Data,ExpressData,Refnum,External Data,VI,Poly VI,LabVIEW Class Instance,Fixed Point,Set Collection,Map Collection}`
  - `Data` : `string`
- **Calls**: `NI_Data Type.lvlib:Get Type Information.vi`, `_reuse_openG.lvlib:Error From Error Code.vi`, `NI_Data Type.lvlib:Get Refnum Information.vi`, `_reuse_openG.lvlib:Get Strings from Enum.vi`, `Trim Whitespace.vi`, `Clear Errors.vi`, `Format Variant into String Advance.vi`, `_reuse_openG.lvlib:1D Array to String.vi`, `NI_Data Type.lvlib:Get Array Information.vi`, `_reuse_openG.lvlib:Get Header from TD.vi`, `Space Constant.vi`, `Format Variant Attributes into String.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Format input &lt;b&gt;Variant&lt;/b&gt; into string.
</pre>

</details>

## Generate UUID.vi

中文：生成通用唯一标识符，并以标准的 36-character UUID 字符串形式返回。
English: Generates a universally unique identifier and returns it as the standard 36-character UUID string.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Generate UUID.vi`
- **Kind**: VI
- **Outputs**:
  - `UUID` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Generate &lt;b&gt;Universally Unique Identifier(UUID)&lt;/b&gt; according to the standard methods.
</pre>

</details>

## is UTF-8.vi

中文：当 String 是有效 UTF-8 时返回 TRUE。可用此 VI 检查收到的文本能否正确读取而不出现乱码。
English: Returns TRUE when String is valid UTF-8. Use it to test whether incoming text can be read without garbled characters.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/is UTF-8.vi`
- **Kind**: VI
- **Inputs**:
  - `String` : `string` *(required)*
- **Outputs**:
  - `UTF8` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Returns TRUE if &lt;B&gt;String&lt;/B&gt; uses UTF-8 encoding. Otherwise, this function returns FALSE.

The function is usually used to judge whether the input string can be read properly without garbled characters.
</pre>

</details>

## Match Multiple Pattern.vi

中文：从 offset 开始，在字符串中查找多个正则表达式中最先匹配的一个。各表达式列在由 delimiter 分隔的 regular expression 中；输出将字符串拆分为匹配前文本、匹配文本、匹配的 pattern 和匹配后文本。
English: Searches string for the first of several regular expressions, beginning at offset. The expressions are listed in regular expression separated by delimiter, and the outputs split string into the before, match, pattern matched and after substrings.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Match Multiple Pattern.vi`
- **Kind**: VI
- **Inputs**:
  - `delimiter (|)` : `string`
  - `offset (0)` : `int32`
  - `regular expression` : `string` *(required)*
  - `string` : `string` *(required)*
- **Outputs**:
  - `Found?` : `bool`
  - `after substring` : `string`
  - `match substring` : `string`
  - `before substring` : `string`
  - `pattern matched` : `string`
- **Calls**: `Trim Whitespace.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Searches for &lt;b&gt;regular expression&lt;/b&gt; sequentially in &lt;b&gt;string&lt;/b&gt; beginning at &lt;b&gt;offset&lt;/b&gt;. If the function finds the first match, it splits &lt;b&gt;string&lt;/b&gt; into three substrings.

As a supplement to &lt;b&gt;Match Pattern Function&lt;/b&gt;, &lt;b&gt;regular expression&lt;/b&gt; can include mutiple regular expression, and they are separated by &lt;b&gt;delimiter&lt;/b&gt;.
</pre>

</details>

## Not Empty String or Path.vim

中文：多态 VI：当连线的字符串、路径、variant、图片或 DSC 标签非空时返回 TRUE。
English: Polymorphic VI that returns TRUE when the wired string, path, variant, picture or DSC tag is not empty.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Not Empty String or Path.vim`
- **Kind**: polymorphic VI (.vim); polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `String` : `string` *(required)*
- **Outputs**:
  - `not empty?` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Returns TRUE if &lt;b&gt;string/path&lt;/b&gt; is &lt;b&gt;not&lt;/b&gt; an empty string or an empty path. Otherwise, this function returns FALSE. This function is also designed to work with variants, pictures, and DSC tags.
</pre>

</details>

## String History Cacher.vi

中文：维护一个滚动缓存，保留最近出现的 length 个字符，并在每次调用时追加新的 String。将 Include Timestamp(F) 设为 TRUE，可在每条追加的行前加上当前日期和时间。
English: Keeps a rolling cache of the last length characters seen, appending the new String on each call. Set Include Timestamp(F) to prefix each appended line with the current date and time.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/String History Cacher.vi`
- **Kind**: VI
- **Inputs**:
  - `length` : `int32`
  - `Include Timestamp(F)` : `bool`
  - `String` : `string` *(required)*
- **Outputs**:
  - `String Cache` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return the &lt;b&gt;String Cache&lt;/b&gt; containing &lt;b&gt;length&lt;/b&gt; number of characters, including the new input &lt;b&gt;String&lt;/b&gt;.
</pre>

</details>

## Strip Class Function Name.vi

中文：将 VI 的完整路径拆分为库名称、类名称和函数名称。将 Strip vi extension(T) 设为 TRUE，可从函数名称中移除 .vi 扩展名。
English: Splits a VI's full path into the library name, the class name and the function name. Set Strip vi extension(T) to remove the .vi extension from the function name.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/Strip Class Function Name.vi`
- **Kind**: VI
- **Inputs**:
  - `Strip vi extension(T)` : `bool`
  - `File Full Path Name` : `string` *(required)*
- **Outputs**:
  - `library name` : `string`
  - `Class name` : `string`
  - `Function Name` : `string`
- **Calls**: `Data Changed - First Call Included.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return &lt;b&gt;Function Name&lt;/b&gt;, &lt;b&gt;Class Name&lt;/b&gt; and &lt;b&gt;library name&lt;/b&gt; according to &lt;b&gt;File Full Path Name&lt;/b&gt;.
</pre>

</details>

## To Lower Case with Raw Name Cacher.vi

中文：将 key 转换为小写，并缓存每个已见小写名称与其原始拼写的对应关系；原始拼写通过 Raw name 返回。
English: Converts key to lower case and caches the mapping from every lower-case name it has seen back to the original spelling, which is returned as Raw name.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/To Lower Case with Raw Name Cacher.vi`
- **Kind**: VI
- **Inputs**:
  - `GroupName("")` : `string`
  - `key` : `string` *(required)*
- **Outputs**:
  - `Raw name` : `string`
  - `Key in lower case` : `string`
  - `cacher` : `variant`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `Safely Close Reference.vim`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Converts all alphabetic characters in &lt;b&gt;key&lt;/b&gt; string to lowercase characters. 
Also, the function returns historical &lt;b&gt;cacher&lt;/b&gt; data and raw value of &lt;b&gt;key&lt;/b&gt;.
</pre>

</details>

## String / URI Parsing

### Construct URI.vi

中文：根据 protocol、address、port、path 和键值参数数组构建 URI 字符串。参数值会进行转义，以生成有效 URI。
English: Builds a URI string from the protocol, address, port, path and an array of key-value arguments. Values are escaped so the result is a valid URI.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/URI Parsing/Construct URI.vi`
- **Kind**: VI; member of URI.lvlib
- **Inputs**:
  - `Arguments` : `array{cluster{string.key,string.value}.KVP}`
  - `path` : `string`
  - `port` : `string`
  - `address` : `string`
  - `protocol` : `string`
- **Outputs**:
  - `URI` : `string`
- **Calls**: `Match Regular Expression.xnode`, `URI.lvlib:EscapeURI.vi`, `Trim Whitespace.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
JKI State Machine Objects (SMO) 1.3.0.56

JKI - JKI

Copyright (c) 2017, JKI
</pre>

</details>

### EscapeURI.vi

中文：对 URI 中不允许出现的字符进行百分号编码。
English: Percent-encodes the characters in URI that are not allowed in a URI.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/URI Parsing/EscapeURI.vi`
- **Kind**: VI; member of URI.lvlib
- **Inputs**:
  - `URI` : `string` *(required)*
- **Outputs**:
  - `Escaped URI` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
JKI State Machine Objects (SMO) 1.3.0.56

JKI - JKI

Copyright (c) 2017, JKI
</pre>

</details>

### Parse URI.vi

中文：将 URI 字符串拆分为 protocol、address、port、path 和键值参数，并解码其中经过转义的字符。
English: Splits a URI string into its protocol, address, port, path and key-value arguments. Escaped characters are decoded.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/URI Parsing/Parse URI.vi`
- **Kind**: VI; member of URI.lvlib
- **Inputs**:
  - `URI` : `string`
- **Outputs**:
  - `path` : `string`
  - `port` : `string`
  - `address` : `string`
  - `protocol` : `string`
  - `Arguments` : `array{cluster{string.key,string.value}.KVP}`
- **Calls**: `Match Regular Expression.xnode`, `URI.lvlib:UnescapeURI.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
JKI State Machine Objects (SMO) 1.3.0.56

JKI - JKI

Copyright (c) 2017, JKI
</pre>

</details>

### UnescapeURI.vi

中文：解码转义 URI 中经过百分号编码的序列。
English: Decodes the percent-encoded sequences in an escaped URI.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/URI Parsing/UnescapeURI.vi`
- **Kind**: VI; member of URI.lvlib
- **Inputs**:
  - `Escaped URI` : `string` *(required)*
- **Outputs**:
  - `URI` : `string`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
JKI State Machine Objects (SMO) 1.3.0.56

JKI - JKI

Copyright (c) 2017, JKI
</pre>

</details>

### UT--Construct URIs.vi

中文：URI 调色板中的自检测试 VI。它使用 Construct URI 对一组 URI 执行往返转换，并报告 Test Passed?。
English: Self-checking test VI in the URI palette. It round-trips a set of URIs through Construct URI and reports Test Passed?.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/URI Parsing/UT--Construct URIs.vi`
- **Kind**: VI
- **Outputs**:
  - `Test Passed?` : `bool`
- **Calls**: `URI.lvlib:Construct URI.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
JKI State Machine Objects (SMO) 1.3.0.56

JKI - JKI

Copyright (c) 2017, JKI
</pre>

</details>

### UT--Parse URIs.vi

中文：URI 调色板中的自检测试 VI。它使用 Parse URI 对一组 URI 执行往返转换，并报告 Test Passed?。
English: Self-checking test VI in the URI palette. It round-trips a set of URIs through Parse URI and reports Test Passed?.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/String/URI Parsing/UT--Parse URIs.vi`
- **Kind**: VI
- **Outputs**:
  - `Test Passed?` : `bool`
- **Calls**: `URI.lvlib:Parse URI.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
JKI State Machine Objects (SMO) 1.3.0.56

JKI - JKI

Copyright (c) 2017, JKI
</pre>

</details>
