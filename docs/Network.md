# Network

中文：网络辅助工具：IP 地址发现、TCP 数据传输和 UDP++ 数据包协议。
English: Network helpers: IP discovery, TCP data transmission and the UDP++ packet protocol.

17 VIs. Palette folder: `src/user.lib/NEVSTOP-Programming-Palette/Network`.

## Available Port.vi

中文：返回操作系统报告为可用的 UDP 端口号。
English: Returns a UDP port number that the operating system reports as free for use.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/Available Port.vi`
- **Kind**: VI
- **Outputs**:
  - `Available Port` : `uint16`
- **Calls**: `Clear Errors.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return an available UDP port the operating system determines is valid for use.
</pre>

</details>

## IP Address List.vi

中文：以字符串数组形式返回当前计算机的 IP 地址。将 ignore Gateway IP? 设为 TRUE，可排除默认网关地址。
English: Returns the IP addresses of the current machine as an array of strings. Set ignore Gateway IP? to leave out the default gateway address.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/IP Address List.vi`
- **Kind**: VI
- **Inputs**:
  - `ignore Gateway IP?` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Array` : `array{string}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return an string &lt;b&gt;Array&lt;/b&gt; whose elements are all IP network addresses of the current machine. 
</pre>

</details>

## TCP Ping(DotNET).vi

中文：使用 .NET Ping 类对 hostName/IP Address 执行 ping，并返回往返状态。timeout(100) 输入的单位为毫秒。
English: Pings hostName/IP Address using the .NET Ping class and returns the round-trip status. The timeout(100) input is in milliseconds.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/TCP Ping(DotNET).vi`
- **Kind**: VI
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `timeout(100)` : `int32` *(required)*
  - `hostName/IP Address` : `string` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Status` : `int32`
- **Calls**: `Error Cluster From Error Code.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
This function uses ping command to detect the reachability between current machine and target machine (&lt;b&gt;hostName or IP  Address&lt;/b&gt;).
</pre>

</details>

## Network / IP Reporter

### IP Reporter PythonCode Folder.vi

中文：在默认文件浏览器中打开存放 IP Reporter Python 源代码的文件夹。
English: Opens the folder holding the IP Reporter Python sources in the default file browser.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/IP Reporter/IP Reporter PythonCode Folder.vi`
- **Kind**: VI
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `Open URL in Default Browser.vi`

### Scan Distributed Nodes.vi

中文：监听 IP Reporter 多播报告地址和端口，并收集由 Start IP Reporter 广播的节点信息。此 VI 会在设定的时间内（ms）扫描，并为每个节点返回一个 Information 条目。
English: Listens on the IP Reporter multicast report address and port and collects the node information broadcast by Start IP Reporter. It scans for the configured period in ms and returns one Information entry per node.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/IP Reporter/Scan Distributed Nodes.vi`
- **Kind**: VI
- **Inputs**:
  - `Scan Period(>2000ms)` : `uint32`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Report Address` : `cluster{string.address,uint16.receiver port}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Information` : `array{cluster{string.Host Name,array{string.IP}.IPs,string.Information}.Pack}`
- **Calls**: `UDP Multicast Open.vi`, `Tick Count (ms).vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Creates a read-only UDP multicast session and receives data on the specified port.
</pre>

</details>

### Start IP Reporter.vi

中文：在后台启动 IP Reporter，并返回一个携带节点上报信息的 notifier。Settings 包含报告地址、接收端口、网关筛选条件和主机名。
English: Starts the IP Reporter in the background and returns a notifier carrying the reported node information. Settings carries the report address, receiver port, gateway filter and host name.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/IP Reporter/Start IP Reporter.vi`
- **Kind**: VI
- **Inputs**:
  - `ignore Gateway IP?(T)` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Init Information` : `string`
  - `Settings` : `cluster{string.address,uint16.receiver port,bool.Ignore Gateway IP,string.HostName}`
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Information Notifier` : `ref{Notifier}{string}`

## Network / TCP Data Transmission

### TCP Client Template.vit

中文：TCP 客户端循环的模板。连线服务器地址和端口后，将待发送字符串入队到 DataQueue，并从中取出接收到的字符串。
English: Template for a TCP client loop. Wire the server address and port, then enqueue the strings to send onto DataQueue and dequeue the received strings from it.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/TCP Data Transmission/TCP Client Template.vit`
- **Kind**: template (.vit)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `TCP Loop - Client as Consumer.vi`

### TCP Loop - Client as Consumer.vi

中文：作为客户端运行的 TCP 传输循环。此循环连接到 ip address:port，从 DataQueue 中取出字符串并通过连接逐一发送。params 用于设置打开超时、传输超时和空闲时间，单位均为 ms。
English: TCP transmission loop acting as the client. It connects to ip address:port and dequeues strings from DataQueue, sending each one over the connection. params sets the open timeout, the transmission timeout and the idle time in ms.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/TCP Data Transmission/TCP Loop - Client as Consumer.vi`
- **Kind**: VI
- **Inputs**:
  - `params` : `cluster{int32.Open timeout(ms),int32.Trans timeout(ms),int32.idle time(ms)}`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `port` : `uint16`
  - `ip address` : `string` *(required)*
  - `DataQueue` : `ref{Queue}{string.String}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Clear Errors.vi`, `Error to Warning.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
TCP transmision loop - client:

Used for data transmission via TCP/IP. 

&lt;b&gt;data queue in&lt;/b&gt;: data queue in
&lt;b&gt;data queue out&lt;/b&gt;: data queue out
&lt;b&gt;ip address&lt;/b&gt;: the ip address of the server
&lt;b&gt;stop&lt;/b&gt;: reference of the stop button outside, so that the loop could stop when stop button clicked.
&lt;b&gt;params&lt;/b&gt;:
    &lt;b&gt;Server name&lt;/b&gt;: name of the server( Not used)
    &lt;b&gt;port&lt;/b&gt;: port of the server.
    &lt;b&gt;Open timeout(ms)&lt;/b&gt;: the timeout period of trying to open a new TCP/IP connection
    &lt;b&gt;Trans timeout(ms)&lt;/b&gt;: the timeout period of trying to transmit the data via TCP/IP.
    &lt;b&gt;idle time(ms)&lt;/b&gt;: idle time. It should less than the Trans timeout(ms).

</pre>

</details>

### TCP Loop - Server as Producer.vi

中文：作为服务器运行的 TCP 传输循环。此循环监听 port，并将从 DataQueue 中取出的字符串发送给已连接的客户端。将 Discard Data when not connected?(T) 设为 TRUE，可在没有客户端连接时丢弃数据。
English: TCP transmission loop acting as the server. It listens on port and sends the strings taken from DataQueue to the connected client. Set Discard Data when not connected?(T) to drop data while no client is attached.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/TCP Data Transmission/TCP Loop - Server as Producer.vi`
- **Kind**: VI
- **Inputs**:
  - `params` : `cluster{int32.Open timeout(ms),int32.Trans timeout(ms),int32.idle time(ms)}`
  - `Discard Data when not connected?(T)` : `bool`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `port` : `uint16`
  - `Server Name` : `string`
  - `DataQueue` : `ref{Queue}{string.String}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
- **Calls**: `Clear Errors.vi`, `TCP Listen.vi`, `Error to Warning.vi`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
TCP transmision loop - Server:

Used for data transmission via TCP/IP. 

&lt;b&gt;data queue in&lt;/b&gt;: data queue in
&lt;b&gt;data queue out&lt;/b&gt;: data queue out
&lt;b&gt;ip address&lt;/b&gt;: the ip address of the server
&lt;b&gt;stop&lt;/b&gt;: reference of the stop button outside, so that the loop could stop when stop button clicked.
&lt;b&gt;params&lt;/b&gt;:
    &lt;b&gt;Server name&lt;/b&gt;: name of the server( Not used)
    &lt;b&gt;port&lt;/b&gt;: port of the server.
    &lt;b&gt;Open timeout(ms)&lt;/b&gt;: the timeout period of trying to open a new TCP/IP connection
    &lt;b&gt;Trans timeout(ms)&lt;/b&gt;: the timeout period of trying to transmit the data via TCP/IP.
    &lt;b&gt;idle time(ms)&lt;/b&gt;: idle time. It should less than the Trans timeout(ms).

</pre>

</details>

### TCP Server Template.vit

中文：TCP 服务器循环的模板。它生成正弦波形并将其加入队列，供监听连线端口的服务器传输循环使用。
English: Template for a TCP server loop. It generates a sine waveform and enqueues it for the server transmission loop, which listens on the wired port.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/TCP Data Transmission/TCP Server Template.vit`
- **Kind**: template (.vit)
- **Terminals**: none exported (the connector pane is empty or not readable)
- **Calls**: `NI_MABase.lvlib:Sine Waveform.vi`, `TCP Loop - Server as Producer.vi`

## Network / UDP++

### SplitUDPPacks.vi

中文：计算如何将 size 个字节拆分为每包 y 个字节。输出数组中前面的元素均为 y，最后一个元素包含余数；例如 size 为 201 且 y 为 50 时，结果为 [50,50,50,50,1]。
English: Calculates how to divide size bytes into packets of y bytes. The leading elements of output array are y and the last element carries the remainder, so size 201 with y 50 gives [50,50,50,50,1].

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/SplitUDPPacks.vi`
- **Kind**: VI; member of UDP++.lvlib
- **Inputs**:
  - `pack size` : `int32` *(required)*
  - `total size` : `int32` *(required)*
- **Outputs**:
  - `output array` : `array{int32}`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
The first &lt;b&gt;size/y&lt;/b&gt; elements of the &lt;b&gt;output array&lt;/b&gt; are &lt;b&gt;y&lt;/b&gt;, and the last element is the remainder of &lt;b&gt;size/y&lt;/b&gt;
For example, if &lt;b&gt;size&lt;/b&gt; is 201, &lt;b&gt;y&lt;/b&gt; is 50, then &lt;b&gt;output array&lt;/b&gt; will be [50,50,50,50,1].
</pre>

</details>

### SUMCheck.vim

中文：通过将 Array 展平为字节并求和，计算其校验和。UDP++ 使用此校验和验证收到的数据包。
English: Returns a checksum for Array, computed by flattening the data to bytes and summing them. UDP++ uses it to validate a received packet.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/SUMCheck.vim`
- **Kind**: polymorphic VI (.vim); member of UDP++.lvlib
- **Inputs**:
  - `Array` : `array{double.Numeric}` *(required)*
- **Outputs**:
  - `Validation` : `double`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Return the sums of all elements in &lt;b&gt;Array&lt;/b&gt;.
</pre>

</details>

### UDP Read Data Array By Singlepack.vim

中文：读取分包 UDP 数组传输中的一个数据包，并返回目前已解码的元素数量。total size 为整个数组的大小；pack size 与 UDP Write Data Array 使用的数据包大小一致。
English: Reads one packet of a split UDP array transmission and returns the number of elements decoded so far. total size is the size of the whole array and pack size matches the packet size used by UDP Write Data Array.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/UDP Read Data Array By Singlepack.vim`
- **Kind**: polymorphic VI (.vim); member of UDP++.lvlib
- **Inputs**:
  - `pack size(50)` : `int32`
  - `data type` : `double`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Timeout(ms)` : `int32`
  - `total size` : `int32` *(required)*
  - `UDP Network Connection in` : `ref{UDP}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `# Count` : `array{int64.element}`
  - `Array` : `array{double.element}`
  - `UDP Network Connection out` : `ref{UDP}`
  - `checksum` : `double`
- **Calls**: `Data Changed - First Call Included.vim`, `UDP++.lvlib:SplitUDPPacks.vi`, `UDP++.lvlib:SUMCheck.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Reads a datagram from a UDP socket, returning the results in data out. This function can receive single splitted data sended by &lt;b&gt;UDP Write Data Array.vi&lt;/b&gt;.
</pre>

</details>

### UDP Read Data Array.vim

中文：读取分包 UDP 数组传输中的所有数据包，并返回重组后的数组。超时（ms）分别应用于每次读取。
English: Reads every packet of a split UDP array transmission and returns the reassembled array. The timeout in ms applies to each read.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/UDP Read Data Array.vim`
- **Kind**: polymorphic VI (.vim); member of UDP++.lvlib
- **Inputs**:
  - `data type` : `double`
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Timeout(ms)` : `int32`
  - `UDP Network Connection in` : `ref{UDP}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `Data` : `array{double}`
  - `UDP Network Connection out` : `ref{UDP}`
- **Calls**: `UDP++.lvlib:SUMCheck.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Reads a datagram from a UDP socket, returning the results in data out. This function can receive all splitted data sended by &lt;b&gt;UDP Write Data Array.vi&lt;/b&gt;.
</pre>

</details>

### UDP Read Memory.vi

中文：读取分包 UDP 数据流并以字符串形式返回。收到任意字节后即立即返回；只有在未收到任何数据时，才会等待完整的超时时间（ms）。
English: Reads a split UDP data stream and returns it as a string. The call returns as soon as any bytes arrive and waits the full timeout in ms only when nothing is received.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/UDP Read Memory.vi`
- **Kind**: VI; member of UDP++.lvlib
- **Inputs**:
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Timeout(ms)` : `int32`
  - `UDP Network Connection in` : `ref{UDP}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `String` : `string`
  - `UDP Network Connection out` : `ref{UDP}`
  - `checksum` : `array{double.Validation}`
- **Calls**: `UDP++.lvlib:SUMCheck.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Reads a datagram from a UDP socket, returning the results in data out. This function can receive all splitted data sended by &lt;b&gt;UDP Write Memory.vi&lt;/b&gt;.
 
The function returns data when it receives any bytes, and waits the full timeout ms only if it receives no bytes.

</pre>

</details>

### UDP Write Data Array.vim

中文：将连线到 Data 的数组按 pack size 拆分为数据包，并发送到指定的 address 和 port，同时返回每个数据包的校验和。
English: Splits the array wired to Data into packets of pack size and sends them to the given address and port, returning a per-packet checksum.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/UDP Write Data Array.vim`
- **Kind**: polymorphic VI (.vim); member of UDP++.lvlib
- **Inputs**:
  - `port or service name` : `uint16` *(required)*
  - `pack size(50)` : `int32`
  - `address` : `uint32` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Timeout(ms)` : `int32`
  - `Data` : `array{double}` *(required)*
  - `UDP Network Connection in` : `ref{UDP}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `UDP Network Connection out` : `ref{UDP}`
  - `checksum` : `array{double.Validation}`
- **Calls**: `UDP++.lvlib:SplitUDPPacks.vi`, `UDP++.lvlib:SUMCheck.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Split the Array &lt;b&gt;Data&lt;/b&gt; into packets of &lt;b&gt;pack size&lt;/b&gt; and write them to a remote UDP socket.
</pre>

</details>

### UDP Write Memory.vi

中文：将连线到 String 的字符串按 pack size 拆分为数据包，并发送到指定的 address 和 port，同时返回每个数据包的校验和。
English: Splits the string wired to String into packets of pack size and sends them to the given address and port, returning a per-packet checksum.

- **Path**: `src/user.lib/NEVSTOP-Programming-Palette/Network/UDP++/UDP Write Memory.vi`
- **Kind**: VI; member of UDP++.lvlib
- **Inputs**:
  - `port or service name` : `uint16` *(required)*
  - `pack size(400)` : `int32`
  - `address` : `uint32` *(required)*
  - `error in (no error)` : `cluster{bool.status,int32.code,string.source}`
  - `Timeout(ms)` : `int32`
  - `String` : `string` *(required)*
  - `UDP Network Connection in` : `ref{UDP}` *(required)*
- **Outputs**:
  - `error out` : `cluster{bool.status,int32.code,string.source}`
  - `UDP Network Connection out` : `ref{UDP}`
  - `checksum` : `array{double.Validation}`
- **Calls**: `UDP++.lvlib:SplitUDPPacks.vi`, `UDP++.lvlib:SUMCheck.vim`

<details><summary>Previous description (before this rewrite)</summary>

<pre>
Split the &lt;b&gt;String&lt;/b&gt; into packets of &lt;b&gt;pack size&lt;/b&gt; and write them to a remote UDP socket.
</pre>

</details>
