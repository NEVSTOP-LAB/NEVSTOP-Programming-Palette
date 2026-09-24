# Array

中文：数组 helpers that go beyond the built-in 数组 functions。
English: Array helpers that go beyond the built-in array functions.

8 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Array`.

## Delete Elements from 1D Array.vim

中文：VI，deletes the elements 在 the specified 索引 从 a D 数组， 或 从 the 行 或 列 的 a D 数组， 和 返回 两者 the remaining 数组 和 the deleted elements。
English: Polymorphic VI that deletes the elements at the specified indices from a 1D array, or from the rows or columns of a 2D array, and returns both the remaining array and the deleted elements.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Delete Elements from 1D Array.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `indices` : `array{int32.index}` *(required)*
  - `array` : `array{variant}` *(required)*
- **Outputs**:
  - `deleted elements` : `array{variant}`
  - `array w/ subset deleted` : `array{variant}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This polymorphic VI deletes elements from a 1D or 2D &lt;B&gt;array&lt;/B&gt; at the corresponding &lt;B&gt;indices&lt;/B&gt;, returning &lt;B&gt;array w/ subset deleted&lt;/B&gt; and &lt;B&gt;deleted elements&lt;/B&gt;.  For 2D arrays, wire the &lt;B&gt;delete (rows or columns)&lt;/B&gt; input to specify whether to delete rows or columns.
</pre>

</details>

## Filter 1D Array.vim

中文：VI，移除 每个 occurrence 的 the items 到 filter 从 a D 数组 和 返回 the filtered 数组 together 使用 the 索引 的 the elements that were removed。
English: Polymorphic VI that removes every occurrence of the items to filter from a 1D array and returns the filtered array together with the indices of the elements that were removed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Filter 1D Array.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `items to filter` : `array{variant.Variant}` *(required)*
  - `array` : `array{variant.Variant}` *(required)*
- **Outputs**:
  - `filtered item indices` : `array{int32.Numeric}`
  - `filtered array` : `array{variant.Variant}`
- **Calls**: `Remove Duplicates from 1D Array.vim`, `Search 1D Array.vim`, `Delete Elements from 1D Array.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This polymorphic VI filters out all instances of &lt;B&gt;items to filter&lt;/B&gt; from the input &lt;B&gt;array&lt;/B&gt; and outputs the result as &lt;B&gt;filtered array&lt;/B&gt; along with an array of &lt;B&gt;filtered item indices&lt;/B&gt; containing the indices of the items that were filtered.  You can wire either a 1D array or a scalar value to &lt;B&gt;items to filter&lt;/B&gt;.
</pre>

</details>

## Index Array Elements.vim

中文：VI，返回 the elements 的 an 数组 在 the specified 索引， 作为 an 数组， 在 the order the 索引 are wired。
English: Polymorphic VI that returns the elements of an array at the specified indices, as an array, in the order the indices are wired.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Index Array Elements.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `indices` : `array{int32.index}` *(required)*
  - `array` : `array{variant}` *(required)*
- **Outputs**:
  - `elements` : `array{variant}`

## Last Array Element.vim

中文：the 最后一个 element 的 a D 数组， read 在 索引 数组 大小 -。 An 空 数组 yields the element 类型's 默认 value。
English: Returns the last element of a 1D array, read at index Array Size - 1. An empty array yields the element type's default value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Last Array Element.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Array` : `array{double.Numeric}` *(required)*
- **Outputs**:
  - `Last Element` : `double`

## Not Empty Array.vim

中文：VI，返回 TRUE 当 the input 数组 contains 在 least one element。
English: Polymorphic VI that returns TRUE when the input array contains at least one element.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Not Empty Array.vim`
- **Kind**: polymorphic VI (.vim); polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Array` : `array{double.Numeric}` *(required)*
- **Outputs**:
  - `not empty?` : `bool`

## Remove Duplicates from 1D Array.vim

中文：VI，移除 duplicate elements 从 a D 数组， keeping the 第一个 occurrence 的 每个 值， 和 返回 the 索引 的 the elements that were removed。
English: Polymorphic VI that removes duplicate elements from a 1D array, keeping the first occurrence of each value, and returns the indices of the elements that were removed.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Remove Duplicates from 1D Array.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Input Array` : `array{variant.Variant}` *(required)*
- **Outputs**:
  - `Output Array` : `array{variant.Variant}`
  - `indices of removed elements` : `array{int32}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This polymorphic VI removes all duplicate elements in &lt;B&gt;Input Array&lt;/B&gt; and outputs the result as &lt;B&gt;Output Array&lt;/B&gt;.  It also outputs the &lt;B&gt;indices of removed elements&lt;B&gt;.
</pre>

</details>

## Reorder 1D Array.vim

中文：VI，重排 a D 数组， 或 the 行 或 列 的 a D 数组， according 到 the 索引 连线的 到 the 索引 input。
English: Polymorphic VI that reorders a 1D array, or the rows or columns of a 2D array, according to the indices wired to the indices input.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Reorder 1D Array.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `indices` : `array{int32.Numeric}` *(required)*
  - `array` : `array{variant.Variant}` *(required)*
- **Outputs**:
  - `reordered array` : `array{variant.Variant}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This polymorphic VI reorders a 1D or 2D &lt;B&gt;array&lt;/B&gt; of any size based on the indices you specify.  For 2D arrays, it reorders by row or by column.
</pre>

</details>

## Search 1D Array.vim

中文：a D 数组 用于 每个 element that matches Element 数据， starting 在 Start 索引， 和 返回 the 索引 的 所有 matches。
English: Searches a 1D array for every element that matches Element Data, starting at Start Index, and returns the indices of all matches.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Search 1D Array.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Array` : `array{variant.Variant}` *(required)*
  - `Element Data` : `variant` *(required)*
  - `Start Index (0)` : `int32`
- **Outputs**:
  - `Indices of Elements` : `array{int32.Numeric}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Searches for all element data matches in array
</pre>

</details>
