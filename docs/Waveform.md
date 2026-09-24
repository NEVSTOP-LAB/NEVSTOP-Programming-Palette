# Waveform

中文：用于从数组和 FFT 数据构建波形，以及生成信号波形的工具。
English: Waveform construction from arrays, FFT data and generated signals.

3 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Waveform`.

## Double Array To Waveform.vi

中文：根据一个或多个 double 数组构建波形，将每个数组用作 Y 数据，并以当前时间作为 t0。
English: Builds waveforms from one or more double arrays, using each array as the Y data and the current time as t0.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Waveform/Double Array To Waveform.vi`
- **Kind**: VI
- **Inputs**:
  - `Double Array Data` : `array{cluster{array{double}.double Array{X\7D}}`
- **Outputs**:
  - `Waveform Data` : `array{doublewaveform.Waveform}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Input one or more double array. This VI well automatically generate waveforms from these double array data. These double array data is used as the "Y" data that make up the waveform.
</pre>

</details>

## FFTData To Waveform.vi

中文：将 FFT 数据转换为波形，其中 f0 映射到 t0，df 映射到 dt，实部映射到 Y。
English: Converts FFT data into waveforms, mapping f0 to t0, df to dt and the real part to Y.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Waveform/FFTData To Waveform.vi`
- **Kind**: VI
- **Inputs**:
  - `FFT` : `array{cluster{double.f0,double.df,array{double.Numeric}.real part}.real part}` *(required)*
- **Outputs**:
  - `Waveform Data` : `array{doublewaveform.Waveform}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Input a FFT signal. This VI will converting FFT signal to waveform. The "f0" in FFT signal will be "t0" in waveform. The "df" in FFT signal will be "dt" in waveform. The "real part" in FFT signal will be "Y" in waveform. 
</pre>

</details>

## Generate Random Waveform.vi

中文：根据 settings 簇生成正弦波、三角波、锯齿波或方波。Frequency、amplitude 和 phase 会在 range 和 amplitude 指定的范围内随机变化。
English: Generates sine, triangle, sawtooth or square waveforms from the settings cluster. Frequency, amplitude and phase vary randomly within the ranges given by range and amplitude.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Waveform/Generate Random Waveform.vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `WaveformGen Settings` : `array{cluster{cluster{double.Fs,double.#s}.sampling info,double.phase,double.amplitude,double.frequency,double.range,uint16{Sine,Triangle,Sawtooth,Square}.Type,string.Waveform Name}.Settings}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Waveforms` : `array{doublewaveform.signal out}`
- **Calls**: `Random Number Within Range.vim`, `NI_MABase.lvlib:Sine Waveform.vi`, `NI_MABase.lvlib:Triangle Waveform.vi`, `NI_MABase.lvlib:Sawtooth Waveform.vi`, `NI_MABase.lvlib:Square Waveform.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Input the specific parameters of the waveform. Use "range" to set the random variation range of the specified frequency. Use "amplitude" to set the waveform amplitude to vary randomly within the specified range. Each run can generate a random waveform.
</pre>

</details>
