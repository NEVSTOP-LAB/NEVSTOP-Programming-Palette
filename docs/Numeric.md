# Numeric

Numeric helpers: buffers, checksums, sweep calculation and string to number conversion.

11 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Numeric`.

## Calc Sweep Points.vi

Calculates the point list of a sweep from Start, Stop, Span, Step and Points. Span takes priority over Stop when it is not NaN, and Step is used when Points equals 0.

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

Polymorphic wrapper that collects incoming samples into a circular buffer of #Count elements. Select the instance for a single sample per call or the one for an array of samples.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Circle Buffer.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Circle Buffer(DBL).vi`, `Circle Buffer(DBLArray).vi`

## CRC16.vi

Computes the CRC-16 checksum of Data using polynomial 0xA001 and returns the checksum together with Data with the checksum appended. Set Swap CRC16 Bytes?(T) to FALSE to keep the checksum bytes in calculation order.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/CRC16.vi`
- **Kind**: VI
- **Inputs**:
  - `Swap CRC16 Bytes?(T)` : `bool`
  - `Data` : `string`
- **Outputs**:
  - `CRC` : `uint16`
  - `Data+CRC16` : `string`

## Interpolate Data with Fracational Ratio.vi

Resamples Orgin by the given Ratio using linear interpolation, so the output array length is the input length multiplied by Ratio.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Interpolate Data with Fracational Ratio.vi`
- **Kind**: VI
- **Inputs**:
  - `Ratio` : `double` *(required)*
  - `Origin` : `array{double}` *(required)*
- **Outputs**:
  - `new array` : `array{double}`

## Keep Value Stats.vi

Polymorphic wrapper that keeps a running statistic of the values wired to it. Select the instance for the average, the maximum or the minimum.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Keep Value Stats.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Keep Average.vi`, `Keep Max.vi`, `Keep Min.vi`

## Random Number Within Range.vim

Generates a random number between A and B. The bounds are ordered internally, so either input may be the larger one.

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

Converts a numeric string, including exponential and fractional forms, into a double. If the string cannot be parsed, the Default(0) value is returned.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/String To Float.vi`
- **Kind**: VI
- **Inputs**:
  - `Default(0)` : `double`
  - `String` : `string` *(required)*
- **Outputs**:
  - `Float` : `double`
- **Calls**: `Trim Whitespace.vi`, `Match Multiple Pattern.vi`

## String To Number.vi

Polymorphic wrapper that converts a numeric string into an integer of the selected representation.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/String To Number.vi`
- **Kind**: VI
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `String To Number(U8).vi`, `String To Number(U16).vi`, `String To Number(U32).vi`, `String To Number(U64).vi`, `String To Number(I8).vi`, `String To Number(I16).vi`, `String To Number(I32).vi`, `String To Number(I64).vi`

## Trim Unnecessary Zeros of Numeric String.vi

Removes trailing zeros, and a trailing decimal point, from a floating-point number formatted as a string.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/Trim Unnecessary Zeros of Numeric String.vi`
- **Kind**: VI
- **Inputs**:
  - `float String` : `string` *(required)*
- **Outputs**:
  - `float String without unnecessary zeros` : `string`

## Numeric / CircleBuffer

### Circle Buffer(DBL).vi

Maintains a circular buffer of #Count doubles, writing Data into the next slot on each call and returning the whole buffer. The integral multiple output turns TRUE once the buffer has been filled a whole number of times.

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

Maintains a circular buffer of #Count doubles that accepts an array of samples per call and returns the buffer contents.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Numeric/CircleBuffer/Circle Buffer(DBLArray).vi`
- **Kind**: VI
- **Inputs**:
  - `reset(F)` : `bool`
  - `#Count` : `int32`
  - `valid?(T)` : `bool`
  - `Data` : `array{double.Data}` *(required)*
- **Outputs**:
  - `Array` : `array{double.Data}`
