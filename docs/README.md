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

---

# NEVSTOP Programming Palette - VI 参考文档（中文）

本目录收录了该 Palette 中随包发布的 VI 文档，并按 Palette 文件夹分组整理。
每个条目基于对应 VI 的 **VI Description**，并在文档中补充中文说明。

| Palette 文件夹 | VI 数量 | 摘要 |
| --- | --- | --- |
| [Application](Application.md) | 18 | Windows 与 LabVIEW 应用工具：进程、服务、环境变量、引用与重启。 |
| [Array](Array.md) | 8 | 超出内置功能的数组辅助 VI。 |
| [Comparison](Comparison.md) | 11 | 比较与变更检测辅助，包括 Data Changed 系列。 |
| [Configuration](Configuration.md) | 52 | 配置读写：cluster/string 配置表、Excel 与 INI 文件。 |
| [Data](Data.md) | 37 | 数据类型检查与转换，以及 Tag 读写 XNode。 |
| [Dialog & Interface](Dialog-and-Interface.md) | 30 | 前面板与对话框辅助：窗口适配、按钮组、事件处理、超时对话框。 |
| [File](File.md) | 34 | 路径与文件工具、文本/TDMS 日志，以及简易 XML 读取器。 |
| [Graphics & Sound](Graphics-and-Sound.md) | 1 | 前面板控件颜色辅助。 |
| [JKI](JKI.md) | 5 | JKI 状态机辅助与状态迭代器。 |
| [Network](Network.md) | 17 | 网络辅助：IP 发现、TCP 数据传输与 UDP++ 包协议。 |
| [Numeric](Numeric.md) | 11 | 数值辅助：缓冲区、校验和、扫频计算与字符串转数值。 |
| [Signal](Signal.md) | 9 | 布尔与数值信号调理：边沿、延迟、滤波与倒计时。 |
| [String](String.md) | 20 | 字符串格式化、缓存与 URI 解析。 |
| [Synchronization](Synchronization.md) | 7 | 同步原语：locker queue 与 SyncStart 屏障。 |
| [Time](Time.md) | 9 | 时间辅助：周期触发、超时、经过时间与节拍控制。 |
| [Waveform](Waveform.md) | 3 | 从数组、FFT 数据与生成信号构建波形。 |
| [NEVSTOP Programming Palette API](Palette-API.md) | 1 | NEVSTOP Programming Palette 的顶层入口。 |

总计：**273** 个 VI。

## 文档生成方式

1. 将所有范围内 VI 导出为 LabVIEW AIXML，以读取连接器窗格、subVI 调用关系和现有描述。
2. 为每个 VI 编写描述。
3. 将描述写入 VI 的 `STRG` 块，并且仅在其余块与原文件逐字节一致时才重建文件。
4. 基于同一批记录生成本目录页面。
5. 之后对连接器窗格端子名称进行复核（依据端子实际功能）；所有改名均记录在 [Terminal-Renames.md](Terminal-Renames.md)。

名称或父目录以下划线开头的 VI 属于内部项，会被排除，因为 LabVIEW 不会将它们放入自动生成的 Palette。
