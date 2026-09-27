# Numeric

中文：数值辅助工具：缓冲区、校验和、扫描计算以及字符串到数值的转换。
English: Numeric helpers: buffers, checksums, sweep calculation and string to number conversion.

11 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Numeric`.

中文：说明：以下部分名称沿用原始项目命名，可能包含历史拼写（例如 Orgin）；文档按原名保留以便与项目文件一一对应。
English: Note: some names below keep original project spelling and may include legacy forms (for example Orgin); documentation preserves original names for exact file mapping.

## Calc Sweep Points.vi

中文：根据 Start、Stop、Span、Step 和 Points 计算扫描点列表。当 Span 不是 NaN 时，优先使用 Span 而非 Stop；当 Points equals 0 时，使用 Step。
English: Calculates the point list of a sweep from Start, Stop, Span, Step and Points. Span takes priority over Stop when it is not NaN, and Step is used when Points equals 0.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Calc Sweep Points.vi`
- **Kind**: VI
- **Inputs**:
  - `Start` : `double` *(required)*
  - `Stop(Use "Span" if it's not NaN)` : `double`
  - `Step(Used if "Points" equals 0)` : `double`
  - `Points(0 as default)` : `int32`
  - `Span("Stop" = "Start" + "Span" if not NaN)` : `double`
  - `Setting` : `cluster{uint16.Method,double.S}`
- **Outputs**:
  - `SweepPoints` : `array{double}`

## Circle Buffer.vi

中文：多态封装 VI：将输入样本收集到包含 #Count 个元素的循环缓冲区中。根据每次调用传入单个样本还是样本数组，选择相应实例。
English: Polymorphic wrapper that collects incoming samples into a circular buffer of #Count elements. Select the instance for a single sample per call or the one for an array of samples.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Circle Buffer.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Circle Buffer(DBL).vi`, `Circle Buffer(DBLArray).vi`

## CRC16.vi

中文：使用多项式 0xA001 计算 Data 的 CRC-16 校验和，并返回校验和以及附加了校验和的 Data。将 Swap CRC16 Bytes?(T) 设为 FALSE，可使校验和字节保持计算顺序。
English: Computes the CRC-16 checksum of Data using polynomial 0xA001 and returns the checksum together with Data with the checksum appended. Set Swap CRC16 Bytes?(T) to FALSE to keep the checksum bytes in calculation order.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/CRC16.vi`
- **Kind**: VI
- **Inputs**:
  - `Swap CRC16 Bytes?(T)` : `bool`
  - `Data` : `string`
- **Outputs**:
  - `CRC` : `uint16`
  - `Data+CRC16` : `string`

## Interpolate Data with Fracational Ratio.vi

中文：使用线性插值按指定 Ratio 对 Orgin 进行重采样，因此输出数组长度等于输入长度乘以 Ratio。
English: Resamples Orgin by the given Ratio using linear interpolation, so the output array length is the input length multiplied by Ratio.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Interpolate Data with Fracational Ratio.vi`
- **Kind**: VI
- **Inputs**:
  - `Ratio` : `double` *(required)*
  - `Origin` : `array{double}` *(required)*
- **Outputs**:
  - `new array` : `array{double}`

## Keep Value Stats.vi

中文：多态封装 VI：持续统计连线输入的值。根据需要选择平均值、最大值或最小值实例。
English: Polymorphic wrapper that keeps a running statistic of the values wired to it. Select the instance for the average, the maximum or the minimum.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Keep Value Stats.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Keep Average.vi`, `Keep Max.vi`, `Keep Min.vi`

## Random Number Within Range.vim

中文：生成 A 和 B 之间的随机数。此 VI 会自动确定上下界，因此两个输入中的任意一个都可以是较大值。
English: Generates a random number between A and B. The bounds are ordered internally, so either input may be the larger one.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Random Number Within Range.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `A` : `double` *(required)*
  - `B` : `double` *(required)*
- **Outputs**:
  - `Random Number` : `double`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Generates a &lt;b&gt;Random Number&lt;/b&gt; between &lt;b&gt;High&lt;/b&gt; and &lt;b&gt;Low&lt;/b&gt; inputs. Prechecks data to ensure that &lt;b&gt;High&lt;/b&gt; is greater than &lt;b&gt;Low&lt;/b&gt;.
</pre>

</details>

## String To Float.vi

中文：将数值字符串（包括指数形式和小数形式）转换为 double。若无法解析该字符串，则返回 Default(0) 值。
English: Converts a numeric string, including exponential and fractional forms, into a double. If the string cannot be parsed, the Default(0) value is returned.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/String To Float.vi`
- **Kind**: VI
- **Inputs**:
  - `Default(0)` : `double`
  - `String` : `string` *(required)*
- **Outputs**:
  - `Float` : `double`
- **Calls**: `Trim Whitespace.vi`, `Match Multiple Pattern.vi`

## String To Number.vi

中文：多态封装 VI：将数值字符串转换为所选表示形式的整数。
English: Polymorphic wrapper that converts a numeric string into an integer of the selected representation.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/String To Number.vi`
- **Kind**: VI
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `String To Number(U8).vi`, `String To Number(U16).vi`, `String To Number(U32).vi`, `String To Number(U64).vi`, `String To Number(I8).vi`, `String To Number(I16).vi`, `String To Number(I32).vi`, `String To Number(I64).vi`

## Trim Unnecessary Zeros of Numeric String.vi

中文：从格式化为字符串的浮点数中移除末尾的零以及末尾的小数点。
English: Removes trailing zeros, and a trailing decimal point, from a floating-point number formatted as a string.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Trim Unnecessary Zeros of Numeric String.vi`
- **Kind**: VI
- **Inputs**:
  - `float String` : `string` *(required)*
- **Outputs**:
  - `float String without unnecessary zeros` : `string`

## Numeric / CircleBuffer

### Circle Buffer(DBL).vi

中文：维护一个包含 #Count 个 double 的循环缓冲区，每次调用时将 Data 写入下一个槽位，并返回整个缓冲区。缓冲区每填满整数次后，integral multiple 输出变为 TRUE。
English: Maintains a circular buffer of #Count doubles, writing Data into the next slot on each call and returning the whole buffer. The integral multiple output turns TRUE once the buffer has been filled a whole number of times.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/CircleBuffer/Circle Buffer(DBL).vi`
- **Kind**: VI
- **Inputs**:
  - `reset(F)` : `bool`
  - `#Count` : `int32`
  - `valid?(T)` : `bool`
  - `Data` : `double` *(required)*
- **Outputs**:
  - `integral multiple` : `bool`
  - `Array` : `array{double.Data}`

### Circle Buffer(DBLArray).vi

中文：维护一个包含 #Count 个 double 的循环缓冲区，每次调用接收一个样本数组，并返回缓冲区内容。
English: Maintains a circular buffer of #Count doubles that accepts an array of samples per call and returns the buffer contents.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/CircleBuffer/Circle Buffer(DBLArray).vi`
- **Kind**: VI
- **Inputs**:
  - `reset(F)` : `bool`
  - `#Count` : `int32`
  - `valid?(T)` : `bool`
  - `Data` : `array{double.Data}` *(required)*
- **Outputs**:
  - `Array` : `array{double.Data}`
