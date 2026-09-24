# Comparison

中文：Comparison and change-detection helpers, including the Data Changed family.
English: Comparison and change-detection helpers, including the Data Changed family.

11 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Comparison`.

## Compare Two Numbers.vim

中文：Polymorphic VI that compares two numbers and returns their order as an enum of Greater, Equal or Less. Both inputs are also passed through unchanged.
English: Polymorphic VI that compares two numbers and returns their order as an enum of Greater, Equal or Less. Both inputs are also passed through unchanged.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Compare Two Numbers.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Ref` : `int32` *(required)*
  - `Number` : `int32` *(required)*
- **Outputs**:
  - `Ref out` : `int32`
  - `Result` : `uint16{Greater,Equal,Less}`
  - `Number out` : `int32`

## Data Changed - First Call Ignore.vim

中文：Reentrant polymorphic VI that returns TRUE when the value wired to Variant differs from the value seen on the previous call. The first call after the VI starts returns FALSE.
English: Reentrant polymorphic VI that returns TRUE when the value wired to Variant differs from the value seen on the previous call. The first call after the VI starts returns FALSE.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Data Changed - First Call Ignore.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Variant` : `variant` *(required)*
- **Outputs**:
  - `Changed` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
&lt;B&gt;Data Changed&lt;/B&gt;
This is a polymorphic VI that will output a true if the data flowing into it has changed.  It is also a Reentrant VI. So each intance of it in your code is treated as a seperate VI.  The first time that the VI is run it will output a false.  It can take any data type as an input.  It has several native data types (for efficiency) and will coerce to variant if a non-native data type (error cluster, refnum, etc) is used.
</pre>

</details>

## Data Changed - First Call Included.vim

中文：Reentrant polymorphic VI that returns TRUE when the value wired to Variant differs from the value seen on the previous call. The first call after the VI starts returns TRUE.
English: Reentrant polymorphic VI that returns TRUE when the value wired to Variant differs from the value seen on the previous call. The first call after the VI starts returns TRUE.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Data Changed - First Call Included.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Variant` : `variant` *(required)*
- **Outputs**:
  - `Changed` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
&lt;B&gt;Data Changed&lt;/B&gt;
This is a polymorphic VI that will output a true if the data flowing into it has changed.  It is also a Reentrant VI. So each intance of it in your code is treated as a seperate VI.  The first time that the VI is run it will output a true.  It can take any data type as an input.  It has several native data types (for efficiency) and will coerce to variant if a non-native data type (error cluster, refnum, etc) is used.
</pre>

</details>

## Data Changed - WIthout First Call Check.vim

中文：Reentrant polymorphic VI that returns TRUE when the value wired to Variant differs from the value seen on the previous call. First-call state is not tracked, so the result is purely the comparison against the stored value.
English: Reentrant polymorphic VI that returns TRUE when the value wired to Variant differs from the value seen on the previous call. First-call state is not tracked, so the result is purely the comparison against the stored value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Data Changed - WIthout First Call Check.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Variant` : `variant` *(required)*
- **Outputs**:
  - `Changed` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
&lt;B&gt;Data Changed&lt;/B&gt;
This is a polymorphic VI that will output a true if the data flowing into it has changed.  It is also a Reentrant VI. So each intance of it in your code is treated as a seperate VI.  It will start to indicate the result no matter if it is called the first time. It can take any data type as an input.  It has several native data types (for efficiency) and will coerce to variant if a non-native data type (error cluster, refnum, etc) is used.
</pre>

</details>

## In Range.vim

中文：Polymorphic VI that tests whether Value lies between A and B, whichever bound is the larger one. Numeric and timestamp inputs are supported.
English: Polymorphic VI that tests whether Value lies between A and B, whichever bound is the larger one. Numeric and timestamp inputs are supported.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/In Range.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `A` : `double` *(required)*
  - `Value` : `double` *(required)*
  - `B` : `double` *(required)*
- **Outputs**:
  - `In Range?` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Determines whether x falls within a range specified by A and B (no matter the greatness of A and B) and optionally coerces the value to fall within the range. The function performs the coercion only in Compare Elements mode. This function accepts time stamp values if all inputs are time stamp values. You can change the comparison mode of this function.


</pre>

</details>

## Runtime False Constant.vi

中文：Returns a boolean constant. In the Run-Time Engine the output is always FALSE; in the development environment the constant is exposed so it can be changed while debugging.
English: Returns a boolean constant. In the Run-Time Engine the output is always FALSE; in the development environment the constant is exposed so it can be changed while debugging.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Runtime False Constant.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Debug Value(T)` : `bool`
- **Outputs**:
  - `Value` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI outputs a false boolean constant if the run time engine is on. When the run time engine is off, it outputs the same boolean constant as the input.
</pre>

</details>

## Runtime True Constant.vi

中文：Returns a boolean constant. In the Run-Time Engine the output is always TRUE; in the development environment the constant is exposed so it can be changed while debugging.
English: Returns a boolean constant. In the Run-Time Engine the output is always TRUE; in the development environment the constant is exposed so it can be changed while debugging.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Runtime True Constant.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Debug Value(F)` : `bool`
- **Outputs**:
  - `Value` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI outputs a true boolean constant if the run time engine is on. When the run time engine is off, it outputs the same boolean constant as the input.
</pre>

</details>

## Select Greater.vim

中文：Polymorphic VI that compares A and B and returns the greater of the two.
English: Polymorphic VI that compares A and B and returns the greater of the two.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Select Greater.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `A` : `double` *(required)*
  - `B` : `double` *(required)*
- **Outputs**:
  - `lesser` : `double`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI compares A and B and outputs the greater one.
</pre>

</details>

## Select Lesser.vim

中文：Polymorphic VI that compares A and B and returns the smaller of the two.
English: Polymorphic VI that compares A and B and returns the smaller of the two.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Select Lesser.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `A` : `double` *(required)*
  - `B` : `double` *(required)*
- **Outputs**:
  - `lesser` : `double`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI compares A and B and outputs the smaller one.
</pre>

</details>

## Select Valid Refnum.vim

中文：Polymorphic VI that returns whichever of the two refnum, path or number inputs is non-empty. Use it to fall back to a default when the preferred reference is invalid.
English: Polymorphic VI that returns whichever of the two refnum, path or number inputs is non-empty. Use it to fall back to a default when the preferred reference is invalid.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/Select Valid Refnum.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Referred Number/Path/Refnum` : `ref{LV.Control}` *(required)*
  - `Number/Path/Refnum` : `ref{LV.Control}` *(required)*
- **Outputs**:
  - `Non-Empty Number/Path/Refnum` : `ref{LV.Control}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Judge if the Referred Number/Path/Refum is valid. If true, this VI outputs the Refnum that represents it. If not, this VI outputs the Refum that represents Number/Path/Refnum. 
</pre>

</details>

## String to Boolean.vi

中文：Converts a string to a boolean from a recognised word list: values such as 1, Active, True, On and Valid give TRUE, while 0, Inactive, False, Off and Invalid give FALSE. Leading and trailing whitespace is trimmed and matching is case-insensitive. Any other string returns the Default(F) value.
English: Converts a string to a boolean from a recognised word list: values such as 1, Active, True, On and Valid give TRUE, while 0, Inactive, False, Off and Invalid give FALSE. Leading and trailing whitespace is trimmed and matching is case-insensitive. Any other string returns the Default(F) value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Comparison/String to Boolean.vi`
- **Kind**: VI
- **Inputs**:
  - `Default(F)` : `bool`
  - `String` : `string` *(required)*
- **Outputs**:
  - `Boolean` : `bool`
- **Calls**: `Trim Whitespace.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
If the input string is one of "1", "Active", "Affirmed", "Enable", "Established", "Existing", "Non-null", "On", "operational", "T", "True", "valid" , the output will be ture; if the input string is one of "0", "Abolished", "Close", "Disable", "F", "False", "Inactive", "Inoperative", "Invalid", "Locked", "Negated", "Nonexistent", "Off", "void" , the output will be false; otherwise, the outputs follows the default boolean control.
</pre>

</details>
