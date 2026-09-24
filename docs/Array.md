# Array

中文：扩展内置数组函数功能的数组辅助工具。
English: Array helpers that go beyond the built-in array functions.

8 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Array`.

## Delete Elements from 1D Array.vim

中文：多态 VI：从一维数组中删除指定索引处的元素，或从二维数组中删除指定的行或列，并同时返回删除后的数组和被删除的元素。
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

中文：多态 VI：从一维数组中移除所有待筛选项，并返回筛选后的数组以及被移除元素的索引。
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

中文：多态 VI：按索引输入的连线顺序，以数组形式返回指定索引处的数组元素。
English: Polymorphic VI that returns the elements of an array at the specified indices, as an array, in the order the indices are wired.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Index Array Elements.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `indices` : `array{int32.index}` *(required)*
  - `array` : `array{variant}` *(required)*
- **Outputs**:
  - `elements` : `array{variant}`

## Last Array Element.vim

中文：返回一维数组的最后一个元素，即读取索引为 Array Size - 1 处的元素。若数组为空，则返回元素类型的默认值。
English: Returns the last element of a 1D array, read at index Array Size - 1. An empty array yields the element type's default value.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Last Array Element.vim`
- **Kind**: polymorphic VI (.vim)
- **Inputs**:
  - `Array` : `array{double.Numeric}` *(required)*
- **Outputs**:
  - `Last Element` : `double`

## Not Empty Array.vim

中文：多态 VI：当输入数组至少包含一个元素时返回 TRUE。
English: Polymorphic VI that returns TRUE when the input array contains at least one element.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Array/Not Empty Array.vim`
- **Kind**: polymorphic VI (.vim); polymorphic wrapper (no diagram of its own)
- **Inputs**:
  - `Array` : `array{double.Numeric}` *(required)*
- **Outputs**:
  - `not empty?` : `bool`

## Remove Duplicates from 1D Array.vim

中文：多态 VI：移除一维数组中的重复元素，保留每个值的首次出现，并返回被移除元素的索引。
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

中文：多态 VI：根据连线到 indices 输入端的索引，重新排列一维数组中的元素，或二维数组中的行或列。
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

中文：在一维数组中查找所有与 Element Data 匹配的元素，从 Start Index 开始搜索，并返回所有匹配项的索引。
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
