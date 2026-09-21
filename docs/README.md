# NEVSTOP Programming Palette - VI reference

Documentation for the VIs that ship in the palette, grouped by palette folder.
Every entry also carries the description written into that VI's own **VI Description**.

| Palette folder | VIs | Summary |
| --- | --- | --- |
| [Application](Application.md) | 18 | Windows and LabVIEW application utilities: processes, services, environment variables, references and restart. |
| [Array](Array.md) | 8 | Array helpers that go beyond the built-in array functions. |
| [Comparison](Comparison.md) | 11 | Comparison and change-detection helpers, including the Data Changed family. |
| [Configuration](Configuration.md) | 52 | Reading and writing configuration: cluster/string config tables, Excel sheets and INI files. |
| [Data](Data.md) | 37 | Data type inspection and conversion, plus the Tag reader and writer XNodes. |
| [Dialog & Interface](Dialog-and-Interface.md) | 30 | Front panel and dialog helpers: window fitting, button groups, event handlers and dialogs with a timeout. |
| [File](File.md) | 34 | Path and file helpers, text and TDMS logging, and a small XML reader. |
| [Graphics & Sound](Graphics-and-Sound.md) | 1 | Colour helpers for front panel controls. |
| [JKI](JKI.md) | 5 | JKI state machine helpers and state iterators. |
| [Network](Network.md) | 17 | Network helpers: IP discovery, TCP data transmission and the UDP++ packet protocol. |
| [Numeric](Numeric.md) | 11 | Numeric helpers: buffers, checksums, sweep calculation and string to number conversion. |
| [Signal](Signal.md) | 9 | Signal conditioning on booleans and numbers: edges, latency, filtering and countdown. |
| [String](String.md) | 20 | String formatting, caching and URI parsing. |
| [Synchronization](Synchronization.md) | 7 | Synchronisation primitives: the locker queue and the SyncStart barrier. |
| [Time](Time.md) | 9 | Timing helpers: periodic triggers, timeouts, elapsed time and pacing. |
| [Waveform](Waveform.md) | 3 | Waveform construction from arrays, FFT data and generated signals. |
| [NEVSTOP Programming Palette API](Palette-API.md) | 1 | Top-level palette entry point for the NEVSTOP Programming Palette. |

Total: **273** VIs.

## How this was produced

1. Every in-scope VI was exported to LabVIEW AIXML to read its connector pane, its subVI calls and its existing description.
2. A description was written for each VI.
3. The description was written into each VI's `STRG` block, and the file was rebuilt only after every other block proved byte-identical to the original.
4. These pages were generated from the same records.
5. Connector-pane terminal names were then reviewed against what each terminal does; every change is listed in [Terminal-Renames.md](Terminal-Renames.md).

VIs whose name or parent folder starts with an underscore are internal and are excluded, because LabVIEW keeps them off the generated palette.
