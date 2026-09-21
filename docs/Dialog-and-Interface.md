# Dialog & Interface

Front panel and dialog helpers: window fitting, button groups, event handlers and dialogs with a timeout.

30 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface`.

## Autosize All Columns (Uniform Text).vi

Palette helper that resizes the columns of a listbox, tree, table or multicolumn listbox so their text is shown uniformly. It also refreshes the VI icon.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Autosize All Columns (Uniform Text).vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Autosize All MultiListbox Columns (Uniform Text).vi`, `Autosize All Tree Columns (Uniform Text).vi`, `Autosize All Table Columns (Uniform Text).vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Automatically organize the text size of each VI column added, and also edit VI icons.
</pre>

</details>

## Blink LEDArray Control.vi

Makes the boolean array behind an LED array control blink, rotating the array by one position every interval (ms). Wire Enable to start and stop the blinking.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Blink LEDArray Control.vi`
- **Kind**: VI
- **Inputs**:
  - `移动间隔(1000 ms)` : `uint32`
  - `LED Array` : `ref{LV.Array}{array{bool.液压卸荷指示灯2}}` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Enable` : `bool` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Periodic Trigger Timer.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Input a boolean array, this VI will make the boolean array blink according to the period you input.
</pre>

</details>

## Bound and Position to Rect-Bound.vi

Converts a Position (Left, Top) and a Bounds (Width, Height) into a LabVIEW Rect cluster holding the left, top, right and bottom edges.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Bound and Position to Rect-Bound.vi`
- **Kind**: VI
- **Inputs**:
  - `Position` : `cluster{int32.Left,int32.Top}`
  - `Bounds` : `cluster{uint32.Width,uint32.Height}` *(required)*
- **Outputs**:
  - `Rect Bound` : `cluster{int16.left,int16.top,int16.right,int16.bottom}`

## Bring Window Forward (WinAPI).vi

Brings the window of VI reference in to the foreground and gives it the keyboard focus, using the Win32 SetForegroundWindow API. The window handle is returned.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Bring Window Forward (WinAPI).vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI reference in` : `ref{LV.VI}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Handle` : `uint64`
  - `VI reference out` : `ref{LV.VI}`
- **Calls**: `Error Cluster From Error Code.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Brings the thread that created the specified window into the foreground and activates the window. Keyboard input is directed to the window, and various visual cues are changed for the user. The system assigns a slightly higher priority to the thread that created the foreground window than it does to other threads.
</pre>

</details>

## Clear All Error.vi

Clears the error wired to error in and returns a no-error cluster.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Clear All Error.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Clear all error.
</pre>

</details>

## Double Click in Mouse Down Event.vi

Returns TRUE when a second Mouse Down event arrives within max click space(0.2s) of the previous one. Wire it into a Mouse Down event case to detect a double click.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Double Click in Mouse Down Event.vi`
- **Kind**: VI
- **Inputs**:
  - `max click space(0.2s)` : `double`
- **Outputs**:
  - `Double Click?` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Set the input interval to determine whether the mouse is double-clicked。
</pre>

</details>

## EventHandler-Change Order By Enter Key.vi

Event handler that moves the input focus to the next control in Controls for changing order when the Enter key is pressed. Wire it into an event structure; Discard? reports whether the event should be discarded.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/EventHandler-Change Order By Enter Key.vi`
- **Kind**: VI
- **Inputs**:
  - `Next Ctrl` : `ref{LV.Control}`
  - `Controls for changing order` : `array{ref{LV.Control}.Enum}` *(required)*
  - `VKey` : `uint16{ASCII,Enter,Return,Shift,Ctrl,Alt,Cmd,Opt,Caps,NumLock,Clear,Break,Up,Down,Left,Right,Insert,Delete,Home,End,PageUp,PageDown,Escape,Help,Pause,ScrollLock,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17,F18,F19,F20,F21,F22,F23,F24,Play,VolumeUp,VolumeDown,Mute,Two Byte Char}` *(required)*
  - `Event Control` : `ref{LV.Control}` *(required)*
- **Outputs**:
  - `Discard?` : `bool`
- **Calls**: `Clear Errors.vi`

## EventHandler-Double Click in Mouse Down Event.vi

Event handler for a Mouse Down event case that returns TRUE when two clicks arrive within max click space(0.2s) of each other.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/EventHandler-Double Click in Mouse Down Event.vi`
- **Kind**: VI
- **Inputs**:
  - `max click space(0.2s)` : `double`
- **Outputs**:
  - `Double Click?` : `bool`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Set the input interval to determine whether the mouse is double-clicked。
</pre>

</details>

## EventHandler-String Input with Prompt.vi

Event handler that shows HintString as a prompt inside a string control until the user types, and shows it again when the field is left empty. The font and input display style of the control are configurable.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/EventHandler-String Input with Prompt.vi`
- **Kind**: VI
- **Inputs**:
  - `Font` : `cluster{cluster{string.Name,bool.Italic,uint32.Color,bool.Bold,int32.Size}.Normal-Font,cluster{string.Name,bool.Italic,uint32.Color,bool.Bold,int32.Size}.Prompt-Font}`
  - `Error in` : `cluster{bool.status,int32.code,string.source}`
  - `Input Display Style` : `uint16{Normal,Backslash "\\",Password,HEX}`
  - `HintString` : `string` *(required)*
  - `reference` : `ref{LV.String}` *(required)*
- **Outputs**:
  - `Error out` : `cluster{bool.status,int32.code,string.source}`
  - `reference (dup)` : `ref{LV.String}`
- **Calls**: `Rising Edge.vi`, `Falling Edge.vi`

## Fit Controls to Rect.vi

Moves the front panel objects in GObjs so that their combined bounding rectangle is centred inside Rect.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit Controls to Rect.vi`
- **Kind**: VI
- **Inputs**:
  - `Error In` : `cluster{bool.status,int32.code,string.source}`
  - `Rect` : `cluster{int16.Left,int16.Top,int16.Right,int16.Bottom}` *(required)*
  - `GObjs` : `array{ref{LV.GObject}}`
- **Outputs**:
  - `Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `GObjs` : `array{ref{LV.GObject}}`
- **Calls**: `Get GObjs RectBound.vi`, `CenterRectInBnds.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI is designed to center a callee VI's window in a caller VI's window.

Authored by Brandon Steele
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## Fit VI window to Caller Center.vi

Resizes and centres the window of VI Ref (calling VI) inside the window of the VI that called it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Caller Center.vi`
- **Kind**: VI
- **Inputs**:
  - `Error In` : `cluster{bool.status,int32.code,string.source}`
  - `Background VI Ref (Callee's Caller)` : `ref{LV.VI}` *(required)*
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `RectCentroid.vi`, `InsetRect.vi`, `PointInRect.vi`, `RectSize.vi`, `Point2Rect.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI is designed to center a callee VI's window in a caller VI's window.

Authored by Brandon Steele
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## Fit VI window to Content.vi

Resizes and centres the VI window around all front panel objects, adding the configured border spacing in pixels. With no VI reference wired it operates on the calling VI.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Content.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This utility will fit (resize and center) a VI (defined by the "VI Ref" input) about the all of the Front Panel object.  It will add a border defined by border spacing in units of pixels.  If no VI Reference is passed in, it will operate on the calling VI.
</pre>

</details>

## Fit VI window to Largest Dec.vi

Resizes and centres the VI window around the largest decoration on the front panel, adding the configured border spacing in pixels. It is a no-op when no decoration is found, and it cannot see locked decorations.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Largest Dec.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This utility will fit (resize and center) a VI (defined by the "VI Ref" input) about the largest decoration in that VI.  It will add a border defined by border spacing in units of pixels.  If there are no decorations found in the VI it is a no-op and will not produce an error.  Unfortunately, this VI can not find locked decorations (yet).
</pre>

</details>

## Fit VI window to Pane Center.vi

Resizes and centres the VI window inside the pane wired to Pane Ref.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Pane Center.vi`
- **Kind**: VI
- **Inputs**:
  - `Error In` : `cluster{bool.status,int32.code,string.source}`
  - `Pane Ref` : `ref{LV.Pane}` *(required)*
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `RectCentroid.vi`, `InsetRect.vi`, `PointInRect.vi`, `RectSize.vi`, `Point2Rect.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI is designed to center a callee VI's window in a caller VI's window.

Authored by Brandon Steele
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## Fit VI window to Panel Center.vi

Resizes and centres the VI window inside the panel wired to Panel Ref.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Panel Center.vi`
- **Kind**: VI
- **Inputs**:
  - `Error In` : `cluster{bool.status,int32.code,string.source}`
  - `Panel Ref` : `ref{LV.Panel}` *(required)*
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `RectCentroid.vi`, `InsetRect.vi`, `PointInRect.vi`, `RectSize.vi`, `Point2Rect.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI is designed to center a callee VI's window in a caller VI's window.

Authored by Brandon Steele
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## Fit VI window to Rect.vi

Resizes and centres the VI window so that it fits inside Rect.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Rect.vi`
- **Kind**: VI
- **Inputs**:
  - `Error In` : `cluster{bool.status,int32.code,string.source}`
  - `Rect` : `cluster{int16.Left,int16.Top,int16.Right,int16.Bottom}` *(required)*
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `Error Out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `RectCentroid.vi`, `InsetRect.vi`, `PointInRect.vi`, `RectSize.vi`, `Point2Rect.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This VI is designed to center a callee VI's window in a caller VI's window.

Authored by Brandon Steele
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## Fit VI window to Visible Content.vi

Resizes and centres the VI window around the visible front panel objects, adding the configured border spacing in pixels. With no VI reference wired it operates on the calling VI.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window to Visible Content.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `VI Ref (calling VI)` : `ref{LV.VI}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `dup VI Ref` : `ref{LV.VI}`
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This utility will fit (resize and center) a VI (defined by the "VI Ref" input) about the all of the Front Panel object.  It will add a border defined by border spacing in units of pixels.  If no VI Reference is passed in, it will operate on the calling VI.
</pre>

</details>

## Fit VI window.vi

Palette helper grouping the Fit VI window family, covering the visible content, content, largest decoration, caller centre, panel centre, pane centre and rectangle variants.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Fit VI window.vi`
- **Kind**: VI
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Fit VI window to Visible Content.vi`, `Fit VI window to Content.vi`, `Fit VI window to Largest Dec.vi`, `Fit VI window to Caller Center.vi`, `Fit VI window to Panel Center.vi`, `Fit VI window to Pane Center.vi`, `Fit VI window to Rect.vi`

## Get Border Rect.vi

Follows the decorations around the object wired to borderObj Ref and returns the rectangle they enclose.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Get Border Rect.vi`
- **Kind**: VI
- **Inputs**:
  - `Error in` : `cluster{bool.status,int32.code,string.source}`
  - `borderObj Ref` : `ref{LV.GObject}` *(required)*
- **Outputs**:
  - `Error out` : `cluster{bool.status,int32.code,string.source}`
  - `Rect` : `cluster{int16.Left,int16.Top,int16.Right,int16.Bottom}`
- **Calls**: `_reuse_openG.lvlib:Error From Error Code.vi`

## Get GObjs RectBound.vi

Returns the bounding rectangle that encloses every front panel object in GObjs.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Get GObjs RectBound.vi`
- **Kind**: VI
- **Inputs**:
  - `error in` : `cluster{bool.status,int32.code,string.source}`
  - `GObjs` : `array{ref{LV.GObject}}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Bound` : `cluster{int16.left,int16.top,int16.right,int16.bottom}`

## Get Text Rect with Pad.vi

Measures the rectangle needed to draw Text in the given font, then pads the width by 10 percent to correct for measurement inaccuracy.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Get Text Rect with Pad.vi`
- **Kind**: VI
- **Inputs**:
  - `Text` : `string` *(required)*
  - `Origin(0\2C0)` : `cluster{int16.horizontal,int16.vertical}`
  - `Font` : `cluster{string.Font Name:,int16.Size,bool.Strikeout?,bool.Italic?,bool.Underline?,bool.Outline?,bool.Shadow?,bool.Bold?}` *(required)*
- **Outputs**:
  - `Width` : `int16`
  - `Rect` : `cluster{int16.left,int16.top,int16.right,int16.bottom}`
- **Calls**: `Get Text Rect.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Measure text rect, then pad the width by 10% to correct for inaccuracies.

Authored by David A. Moore
support@mooregoodideas.com
www.mooregoodideas.com

Copyright (c) 2010, Moore Good Ideas, Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of Moore Good Ideas, Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</pre>

</details>

## One Button Dialog with Timeout.vi

Shows a one-button dialog carrying the message and the button name given, and closes it automatically after Btn Timeout(-1 s) seconds. A negative timeout disables the automatic close.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/One Button Dialog with Timeout.vi`
- **Kind**: VI
- **Inputs**:
  - `message` : `string` *(required)*
  - `Btn Timeout(-1 s)` : `int32`
  - `T button name ("OK")` : `string`
- **Outputs**:
  - `true` : `bool`
- **Calls**: `Get Text Rect with Pad.vi`, `Select Greater.vim`, `Fit VI window to Visible Content.vi`, `Using ParentVIRef If Input Invalid.vi`, `Fit VI window to Caller Center.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Enter a timeout period to stop the dialog at the end of the time.
</pre>

</details>

## Step-By-Step Tab Window CtrlLogic.vi

Control logic for a step-by-step tab window. It drives the tab control from the Prev, Next and Finish button references so the user moves through the tabs in order.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Step-By-Step Tab Window CtrlLogic.vi`
- **Kind**: VI
- **Inputs**:
  - `VI Ref (calling VI)` : `ref{LV.VI}`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `CtrlRef` : `cluster{ref{LV.TabControl}.TabControl,ref{LV.Boolean}.Prev,ref{LV.Boolean}.Next,ref{LV.Boolean}.Finish}` *(required)*
- **Calls**: `Using ParentVIRef If Input Invalid.vi`, `Simple Error Handler.vi`, `Safely Close Reference.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
A distributed control panel with labels.
</pre>

</details>

## Two Button Dialog with Timeout.vi

Shows a two-button dialog carrying the message and the button names given, each button with its own timeout. Returns TRUE when the true button was pressed, and FALSE for the false button or a timeout.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Two Button Dialog with Timeout.vi`
- **Kind**: VI
- **Inputs**:
  - `message` : `string` *(required)*
  - `T Timeout(-1 s)` : `int32`
  - `T button name ("OK")` : `string`
  - `F button name ("Cancel")` : `string`
  - `F Timeout(-1 s)` : `int32`
- **Outputs**:
  - `T button?` : `bool`
- **Calls**: `Get Text Rect with Pad.vi`, `Select Greater.vim`, `Fit VI window to Visible Content.vi`, `Using ParentVIRef If Input Invalid.vi`, `Fit VI window to Caller Center.vi`, `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Enter a timeout period to stop the dialog at the end of the time.
</pre>

</details>

## Dialog & Interface / ButtonGroupEnum

### ButtonGroupEnum Example.vi

Example VI showing how a group of boolean buttons is read as and written from an enum, using ButtonGroupEnum to Enum.vim and Set ButtonGroupEnum Value.vim inside an event loop.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/ButtonGroupEnum/ButtonGroupEnum Example.vi`
- **Kind**: VI; member of ButtonGroupEnum.lvlib
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `ButtonGroupEnum.lvlib:Set ButtonGroupEnum Value.vim`, `ButtonGroupEnum.lvlib:ButtonGroupEnum to Enum.vim`

### ButtonGroupEnum to Enum.vim

Polymorphic VI that converts a group of boolean button references into an enum value, selecting the entry that matches the button currently set. Prefix matches button names to enum entries.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/ButtonGroupEnum/ButtonGroupEnum to Enum.vim`
- **Kind**: polymorphic VI (.vim); member of ButtonGroupEnum.lvlib
- **Inputs**:
  - `Enum` : `uint16{}` *(required)*
  - `ModeBtnRefs` : `array{ref{LV.Boolean}.DC Voltage}` *(required)*
  - `error in` : `cluster{bool.status,int32.code,string.source}`
  - `Prefix` : `string`
  - `CtlRef` : `ref{LV.Boolean}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Enum (dup)` : `uint16{}`
  - `CtlRef (dup)` : `ref{LV.Boolean}`
- **Calls**: `ButtonGroupEnum.lvlib:Set ButtonGroupEnum By Ref.vi`, `ButtonGroupEnum.lvlib:_ButtonGroupEnum to Num.vi`

### Set ButtonGroupEnum By Ref.vi

Sets one button of a button group to TRUE and clears every other button in the group, so exactly one button is active.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/ButtonGroupEnum/Set ButtonGroupEnum By Ref.vi`
- **Kind**: VI; member of ButtonGroupEnum.lvlib
- **Inputs**:
  - `ModeBtnRefs` : `array{ref{LV.Boolean}.DC Voltage}` *(required)*
  - `error in` : `cluster{bool.status,int32.code,string.source}`
  - `Boolean in` : `ref{LV.Boolean}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Boolean out` : `ref{LV.Boolean}`

### Set ButtonGroupEnum Value.vim

Polymorphic VI that sets a group of boolean buttons from an enum value, turning on the matching button and clearing the rest. Prefix matches button names to enum entries.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/ButtonGroupEnum/Set ButtonGroupEnum Value.vim`
- **Kind**: polymorphic VI (.vim); member of ButtonGroupEnum.lvlib
- **Inputs**:
  - `ModeBtnRefs` : `array{ref{LV.Boolean}.DC Voltage}` *(required)*
  - `error in` : `cluster{bool.status,int32.code,string.source}`
  - `Prefix` : `string`
  - `Enum` : `uint16{}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `ButtonGroupEnum.lvlib:_Set ButtonGroupEnum Value.vi`

## Dialog & Interface / Lock Front Panel Item Position

### Lock Front Panel Item Position.vi

Palette helper grouping the Lock Control and Lock Graph Legend VIs, which pin a front panel object to one of the nine positions of its container.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Lock Front Panel Item Position/Lock Front Panel Item Position.vi`
- **Kind**: VI
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Lock Control in The BottomLeft.vi`, `Lock Control in The BottonCenter.vi`, `Lock Control in The BottomRight.vi`, `Lock Control in The Left.vi`, `Lock Control in The Center.vi`, `Lock Control in The Right.vi`, `Lock Control in The TopLeft.vi`, `Lock Control in The TopCenter.vi`, `Lock Control in The TopRight.vi`, `Lock Graph Legend in The TopLeft.vi`, `Lock Graph Legend in The TopRight.vi`

## Dialog & Interface / Menu

### GetMenuTagList.vi

Returns every menu tag below the item tag of a menu reference, both as a flat list of submenu tags and as a two-dimensional tree.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Dialog & Interface/Menu/GetMenuTagList.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error) 2` : `cluster{bool.status,int32.code,string.source}`
  - `item tag` : `string`
  - `menu reference` : `ref{Menu}` *(required)*
- **Outputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Tree` : `array.2{string}`
  - `submenu tags` : `array{string}`
  - `menu reference out` : `ref{Menu}`
- **Calls**: `GetMenuTagList.vi`
