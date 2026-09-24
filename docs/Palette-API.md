# NEVSTOP Programming Palette API

中文：NEVSTOP Programming Palette 的顶层调色板入口。
English: Top-level palette entry point for the NEVSTOP Programming Palette.

1 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette`.

## NEVSTOP-Programming-Palette-API.vi

中文：汇总调色板自身工具所用的实用 VI，并在同一程序框图中协调应用程序、文件和前面板辅助工具。
English: Aggregates the utility VIs used by the palette's own tooling, coordinating the application, file and front-panel helpers behind one diagram.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/NEVSTOP-Programming-Palette-API.vi`
- **Kind**: VI; polymorphic wrapper (no diagram of its own)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `List All Ctrls.vi`, `GetViMemoryName.vi`, `Get Class Functions C Description.vi`, `Get Class C Description.vi`, `_vrt template.vi`, `__FpCtrlType.vi`, `Check if Windows Service Exists.vi`, `Error File Logger.vi`, `Generate Start-Up Registry Patch File.vi`, `Get Vi Memory Name.vi`, `IsUserAnAdmin.vi`, `Restart LabVIEW.vi`, `Safely Close Reference - Half Height.vim`, `Safely Close Reference.vim`
