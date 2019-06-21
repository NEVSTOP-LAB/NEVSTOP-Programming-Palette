# NEVSTOP-Programming-Palette

用于补充 LabVIEW 日常编程使用的常用VI.

## Application

### VI 窗口操作

1. Fit Vi window to Visible Content.vi：用于补充 OpenG 的同类VI，使窗口缩放到可见元素的大小。
2. Terminate Vi CallStack Chain.vi：在给定条件下停止VI运行
3. Valid VI Ref.vi：用于Quickdrop寻找指定vi
4. Using ParentVIRef if Input Invalid.vi：如果输入不有效，则使用调用VIRef

### Error Handing

1. Error File Logger.vi：将历史错误log 到磁盘文件中。

### VI Reference

1. Valid Vi Reference.vi：判断Vi reference 是否有效。

### 文档描述

1. Get Class Functions C Description.vi: 获取 Class 的函数c描述列表
2. Get Class C Description.vi: 获取 Class 的 c++描述

## File

### Text 文件操作

1. TxtFile Load.vi：text 文件全部载入
2. TxtFile Save.vi：text 保存到文本文件
3. TxtFile Append.vi：在文本文件后添加text

## JKI

1. JKI Insert State By Bool.vi

   用于补充JKI State Machine Template 中，需要根据条件插入状态的情况。

## String

1. TextTolines.vi
2. linesToText.vi

1. Format Variant into String Advance.vi
2. Format Variant Attributes into String.vi

1. Append Tabs to String Front.vi
2. Strip Class Funtion Name.vi

## Data

1. Cluster To Array.vi
2. Array To Cluster.vi

## Time

- Background UI Trigger Timer.vi: 后台UI更新定时器

## Waveform

1. Generate Random Waveforms.vi
2. FFTData To Waveforms.vi：将fft 数据结果转换为waveform
3. Double Array To Waveforms.vi：将double arr 转换为waveform
