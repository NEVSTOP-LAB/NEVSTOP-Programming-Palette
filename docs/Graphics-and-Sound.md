# Graphics & Sound

中文：Colour helpers for front panel controls.
English: Colour helpers for front panel controls.

1 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Graphics & Sound`.

## Str To Colorbox.vi

中文：Converts a colour string into the 32-bit RGB value that a LabVIEW colour box control displays.
English: Converts a colour string into the 32-bit RGB value that a LabVIEW colour box control displays.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Graphics & Sound/Str To Colorbox.vi`
- **Kind**: VI
- **Inputs**:
  - `String` : `string` *(required)*
- **Outputs**:
  - `Color Box` : `uint32`
- **Calls**: `_reuse_openG.lvlib:String to 1D Array.vi`, `RGB to Color.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Inter a color string, for example: (red; blue; green, etc.). This VI will output the color box of the specified color
</pre>

</details>
