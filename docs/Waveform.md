# Waveform

中文：Waveform construction from arrays, FFT data and generated signals.
English: Waveform construction from arrays, FFT data and generated signals.

3 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Waveform`.

## Double Array To Waveform.vi

中文：Builds waveforms from one or more double arrays, using each array as the Y data and the current time as t0.
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

中文：Converts FFT data into waveforms, mapping f0 to t0, df to dt and the real part to Y.
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

中文：Generates sine, triangle, sawtooth or square waveforms from the settings cluster. Frequency, amplitude and phase vary randomly within the ranges given by range and amplitude.
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
