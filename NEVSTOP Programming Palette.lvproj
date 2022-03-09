<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="src" Type="Folder" URL="../src">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="xml" Type="Folder">
			<Item Name="Escape XML.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Escape XML.vi"/>
			<Item Name="EscapeChars.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/EscapeChars.vi"/>
			<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
			<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
			<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
			<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
			<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
			<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
			<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
			<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
			<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
			<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
			<Item Name="Unescape XML.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Unescape XML.vi"/>
			<Item Name="UnescapeChar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/UnescapeChar.vi"/>
			<Item Name="Write to XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(array).vi"/>
			<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(string).vi"/>
			<Item Name="Write to XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File.vi"/>
		</Item>
		<Item Name=".gitignore" Type="Document" URL="../.gitignore"/>
		<Item Name="_API Tree.vi" Type="VI" URL="../_API Tree.vi"/>
		<Item Name="NEVSTOP-Programming-Palette.vipb" Type="Document" URL="../NEVSTOP-Programming-Palette.vipb"/>
		<Item Name="README.md" Type="Document" URL="../README.md"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="1D Array to String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/1D Array to String__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Absolute or Relative Path Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Absolute or Relative Path Array__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Array__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Root Path Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Root Path Array__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Scalar__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Scalar__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative__ogtk.vi"/>
				<Item Name="Array of VData to VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VArray__ogtk.vi"/>
				<Item Name="Array of VData to VCluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VCluster__ogtk.vi"/>
				<Item Name="Array Size(s)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array Size(s)__ogtk.vi"/>
				<Item Name="Array to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array to Array of VData__ogtk.vi"/>
				<Item Name="Build Error Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Build Error Cluster__ogtk.vi"/>
				<Item Name="Build Path - File Names and Paths Arrays - path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path - File Names and Paths Arrays - path__ogtk.vi"/>
				<Item Name="Build Path - File Names and Paths Arrays__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path - File Names and Paths Arrays__ogtk.vi"/>
				<Item Name="Build Path - File Names Array - path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path - File Names Array - path__ogtk.vi"/>
				<Item Name="Build Path - File Names Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path - File Names Array__ogtk.vi"/>
				<Item Name="Build Path - Traditional - path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path - Traditional - path__ogtk.vi"/>
				<Item Name="Build Path - Traditional__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path - Traditional__ogtk.vi"/>
				<Item Name="Build Path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Build Path__ogtk.vi"/>
				<Item Name="ClientInterface.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/Client_Interface/ClientInterface.lvlib"/>
				<Item Name="Close Generic Object Refnum (Array VI)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Close Generic Object Refnum (Array VI)__ogtk.vi"/>
				<Item Name="Close Generic Object Refnum (Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Close Generic Object Refnum (Array)__ogtk.vi"/>
				<Item Name="Close Generic Object Refnum (Scalar VI)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Close Generic Object Refnum (Scalar VI)__ogtk.vi"/>
				<Item Name="Close Generic Object Refnum (Scalar)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Close Generic Object Refnum (Scalar)__ogtk.vi"/>
				<Item Name="Close Generic Object Refnum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Close Generic Object Refnum__ogtk.vi"/>
				<Item Name="Cluster to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Cluster to Array of VData__ogtk.vi"/>
				<Item Name="Compare Two Paths - Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Compare Two Paths - Array__ogtk.vi"/>
				<Item Name="Compare Two Paths - Path1 Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Compare Two Paths - Path1 Array__ogtk.vi"/>
				<Item Name="Compare Two Paths - Path2 Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Compare Two Paths - Path2 Array__ogtk.vi"/>
				<Item Name="Compare Two Paths - Scalar__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Compare Two Paths - Scalar__ogtk.vi"/>
				<Item Name="Compare Two Paths__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Compare Two Paths__ogtk.vi"/>
				<Item Name="Convert EOLs (String Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Convert EOLs (String Array)__ogtk.vi"/>
				<Item Name="Convert EOLs (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Convert EOLs (String)__ogtk.vi"/>
				<Item Name="Convert EOLs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Convert EOLs__ogtk.vi"/>
				<Item Name="Create Dir if Non-Existant__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Create Dir if Non-Existant__ogtk.vi"/>
				<Item Name="Current VIs Parents Ref__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Parents Ref__ogtk.vi"/>
				<Item Name="Current VIs Reference__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Reference__ogtk.vi"/>
				<Item Name="dataserver_zeromq.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/zeromq/dataserver_zeromq.lvlib"/>
				<Item Name="Delete Elements from 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (DBL)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (EXT)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (I8)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (I16)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (I32)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (I64)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (Path)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (SGL)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (String)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (U8)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (U16)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (U32)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (U64)__ogtk.vi"/>
				<Item Name="Delete Elements from 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (Variant)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (Boolean)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (CDB)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (CSG)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (CXT)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (DBL)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (EXT)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (I8)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (I16)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (I32)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (I64)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (LVObject)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (Path)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (SGL)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (String)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (U8)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (U16)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (U32)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (U64)__ogtk.vi"/>
				<Item Name="Delete Elements from 2D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from 2D Array (Variant)__ogtk.vi"/>
				<Item Name="Delete Elements from Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Delete Elements from Array__ogtk.vi"/>
				<Item Name="Encode Section and Key Names__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Encode Section and Key Names__ogtk.vi"/>
				<Item Name="excel_operation.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/ExcelConfigurationOperation/read_excel_values.llb/excel_operation.lvlib"/>
				<Item Name="Filter 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="Filter 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Filter 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Filter 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Filter 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (DBL)__ogtk.vi"/>
				<Item Name="Filter 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (EXT)__ogtk.vi"/>
				<Item Name="Filter 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (I8)__ogtk.vi"/>
				<Item Name="Filter 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (I16)__ogtk.vi"/>
				<Item Name="Filter 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (I32)__ogtk.vi"/>
				<Item Name="Filter 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (I64)__ogtk.vi"/>
				<Item Name="Filter 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="Filter 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (Path)__ogtk.vi"/>
				<Item Name="Filter 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (SGL)__ogtk.vi"/>
				<Item Name="Filter 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (String)__ogtk.vi"/>
				<Item Name="Filter 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (U8)__ogtk.vi"/>
				<Item Name="Filter 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (U16)__ogtk.vi"/>
				<Item Name="Filter 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (U32)__ogtk.vi"/>
				<Item Name="Filter 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (U64)__ogtk.vi"/>
				<Item Name="Filter 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array (Variant)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (Boolean)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (CDB)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (CSG)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (CXT)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (DBL)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (EXT)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (I8)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (I16)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (I32)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (I64)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (LVObject)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (Path)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (SGL)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (String)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (U8)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (U16)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (U32)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (U64)__ogtk.vi"/>
				<Item Name="Filter 1D Array with Scalar (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (Variant)__ogtk.vi"/>
				<Item Name="Filter 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Filter 1D Array__ogtk.vi"/>
				<Item Name="Format Numeric Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Format Numeric Array__ogtk.vi"/>
				<Item Name="Format Variant into String Advance_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/String/Format Variant into String Advance_nevstop.vi"/>
				<Item Name="Format Variant Into String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Format Variant Into String__ogtk.vi"/>
				<Item Name="Get Array Element TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Array Element TD__ogtk.vi"/>
				<Item Name="Get Array Element TDEnum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Array Element TDEnum__ogtk.vi"/>
				<Item Name="Get Cluster Element Names__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Cluster Element Names__ogtk.vi"/>
				<Item Name="Get Cluster Elements TDs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Cluster Elements TDs__ogtk.vi"/>
				<Item Name="Get Data Name from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name from TD__ogtk.vi"/>
				<Item Name="Get Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name__ogtk.vi"/>
				<Item Name="Get Default Data from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Default Data from TD__ogtk.vi"/>
				<Item Name="Get Element TD from Array TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Element TD from Array TD__ogtk.vi"/>
				<Item Name="Get Header from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Header from TD__ogtk.vi"/>
				<Item Name="Get Last PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Last PString__ogtk.vi"/>
				<Item Name="Get PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get PString__ogtk.vi"/>
				<Item Name="Get Refnum Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Refnum Type Enum from Data__ogtk.vi"/>
				<Item Name="Get Refnum Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Refnum Type Enum from TD__ogtk.vi"/>
				<Item Name="Get Strings from Enum TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Strings from Enum TD__ogtk.vi"/>
				<Item Name="Get Strings from Enum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Strings from Enum__ogtk.vi"/>
				<Item Name="Get TDEnum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get TDEnum from Data__ogtk.vi"/>
				<Item Name="Get TDEnum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get TDEnum from TD__ogtk.vi"/>
				<Item Name="Get Variant Attributes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Variant Attributes__ogtk.vi"/>
				<Item Name="Get Waveform Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Waveform Type Enum from Data__ogtk.vi"/>
				<Item Name="Get Waveform Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Waveform Type Enum from TD__ogtk.vi"/>
				<Item Name="GetViMemoryName_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Application/GetViMemoryName_nevstop.vi"/>
				<Item Name="Index 1D Array Elements (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (Boolean)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (CDB)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (CSG)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (CXT)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (DBL)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (EXT)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (I8)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (I16)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (I32)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (I64)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (LVObject)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (Path)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (SGL)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (String)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (U8)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (U16)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (U32)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (U64)__ogtk.vi"/>
				<Item Name="Index 1D Array Elements (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 1D Array Elements (Variant)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (Boolean)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (CDB)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (CSG)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (CXT)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (DBL)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (EXT)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (I8)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (I16)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (I32)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (I64)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (LVObject)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (Path)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (SGL)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (String)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (U8)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (U16)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (U32)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (U64)__ogtk.vi"/>
				<Item Name="Index 2D Array Elements (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index 2D Array Elements (Variant)__ogtk.vi"/>
				<Item Name="Index Array Elements__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Index Array Elements__ogtk.vi"/>
				<Item Name="MGI Caller&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Caller&apos;s VI Reference.vi"/>
				<Item Name="MGI Center Callee in Caller.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Center Callee in Caller.vi"/>
				<Item Name="MGI Change Detector (F).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Change Detector/MGI Change Detector (F).vi"/>
				<Item Name="MGI Change Detector (T).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Change Detector/MGI Change Detector (T).vi"/>
				<Item Name="MGI Change Detector.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Change Detector.vi"/>
				<Item Name="MGI Coerce Panel Bounds to Viewable Area.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Coerce Panel Bounds to Viewable Area.vi"/>
				<Item Name="MGI Coerce Rect into Bounds.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Picture &amp; Image/MGI Coerce Rect into Bounds.vi"/>
				<Item Name="MGI Current VI&apos;s Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Current VI&apos;s Reference.vi"/>
				<Item Name="MGI Defer Panel Updates.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Defer Panel Updates.vi"/>
				<Item Name="MGI Get Text Rect with Pad.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Picture &amp; Image/MGI Get Text Rect with Pad.vi"/>
				<Item Name="MGI Level&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Level&apos;s VI Reference.vi"/>
				<Item Name="MGI Make String Filesafe.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Make String Filesafe.vi"/>
				<Item Name="MGI Open Explorer Window.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/File/MGI Open Explorer Window.vi"/>
				<Item Name="MGI Replace File Extension.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/File/MGI Replace File Extension.vi"/>
				<Item Name="MGI Top Level VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Top Level VI Reference.vi"/>
				<Item Name="MGI VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference.vi"/>
				<Item Name="Multi-line String to Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Multi-line String to Array__ogtk.vi"/>
				<Item Name="Parse String with TDs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Parse String with TDs__ogtk.vi"/>
				<Item Name="Periodic Trigger__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/time/time.llb/Periodic Trigger__ogtk.vi"/>
				<Item Name="PluginInterface.lvlibp" Type="LVLibp" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp">
					<Item Name="mnu" Type="Folder">
						<Item Name="CoreAPI" Type="Folder">
							<Item Name="CoreAPI.mnu" Type="Document" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/CoreAPI.mnu"/>
						</Item>
						<Item Name="PluginInterface" Type="Folder">
							<Item Name="PluginThreadRegistry" Type="Folder">
								<Item Name="PluginThreadRegistry.mnu" Type="Document" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/PluginInterface/PluginThreadRegistry/PluginThreadRegistry.mnu"/>
							</Item>
							<Item Name="PluginInterface" Type="Folder">
								<Item Name="API" Type="Folder">
									<Item Name="Properties.mnu" Type="Document" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/PluginInterface/PluginInterface/API/Properties.mnu"/>
								</Item>
							</Item>
						</Item>
						<Item Name="Utilities" Type="Folder">
							<Item Name="Utility.mnu" Type="Document" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Utility.mnu"/>
						</Item>
						<Item Name="VariantMap" Type="Folder">
							<Item Name="API" Type="Folder">
								<Item Name="VariantMap.mnu" Type="Document" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/VariantMap.mnu"/>
							</Item>
						</Item>
						<Item Name="Palette.mnu" Type="Document" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Palette.mnu"/>
					</Item>
					<Item Name="_Support" Type="Folder">
						<Item Name="Thread-State.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/_Support/Thread-State.ctl"/>
						<Item Name="error-ChannelNotFound.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/_Support/error-ChannelNotFound.vi"/>
					</Item>
					<Item Name="Global-Typedef" Type="Folder">
						<Item Name="Def-ChannelDirection.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Global-Typedef/Def-ChannelDirection.ctl"/>
						<Item Name="Def-ChannelType.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Global-Typedef/Def-ChannelType.ctl"/>
						<Item Name="Def-DataType.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Global-Typedef/Def-DataType.ctl"/>
						<Item Name="Def-DeviceConfig.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Global-Typedef/Def-DeviceConfig.ctl"/>
						<Item Name="Def-PhyChannelCfg.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Global-Typedef/Def-PhyChannelCfg.ctl"/>
						<Item Name="Def-OperateWriteParam.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Global-Typedef/Def-OperateWriteParam.ctl"/>
					</Item>
					<Item Name="Utilities" Type="Folder">
						<Item Name="2D-Array Operation" Type="Folder">
							<Item Name="Remove Comments Lines.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Remove Comments Lines.vi"/>
							<Item Name="Splite MultiLine Cell.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Splite MultiLine Cell.vi"/>
							<Item Name="Filter Unmarked Lines.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Filter Unmarked Lines.vi"/>
							<Item Name="Replace EmptyCell Mark.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Replace EmptyCell Mark.vi"/>
						</Item>
						<Item Name="ConvertVI" Type="Folder">
							<Item Name="String To Enum.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/_Support/String To Enum.vi"/>
							<Item Name="ChannelType To Variant.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/ChannelType To Variant.vi"/>
							<Item Name="DataType To Variant.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/DataType To Variant.vi"/>
						</Item>
						<Item Name="Parse ConfigurationStrs.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Parse ConfigurationStrs.vi"/>
						<Item Name="Flatten ConfigurationStrs.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Flatten ConfigurationStrs.vi"/>
						<Item Name="Parse Device Configuration.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Parse Device Configuration.vi"/>
						<Item Name="Parse Protocol Option.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Parse Protocol Option.vi"/>
						<Item Name="Parse Protocol.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Parse Protocol.vi"/>
						<Item Name="Insert Protocol Options.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Insert Protocol Options.vi"/>
						<Item Name="Remove Protocol Options.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/Utilities/Remove Protocol Options.vi"/>
					</Item>
					<Item Name="VariantMap" Type="Folder">
						<Item Name="_Test" Type="Folder">
							<Item Name="TestVMap 1.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Test/TestVMap 1.vi"/>
							<Item Name="TestVMap 2.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Test/TestVMap 2.vi"/>
						</Item>
						<Item Name="_nouse" Type="Folder">
							<Item Name="variantMap_DestoryChildrenDVRs.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/nouse/variantMap_DestoryChildrenDVRs.vi"/>
						</Item>
						<Item Name="Support" Type="Folder">
							<Item Name="CoreDataOper" Type="Folder">
								<Item Name="_Core_GetChildDVR.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/CoreDataOper/_Core_GetChildDVR.vi"/>
								<Item Name="_Core_GetValue.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/CoreDataOper/_Core_GetValue.vi"/>
								<Item Name="_Core_SetValue.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/CoreDataOper/_Core_SetValue.vi"/>
							</Item>
							<Item Name="Factory" Type="Folder">
								<Item Name="_InitializedGlobalEngine.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Factory/_InitializedGlobalEngine.vi"/>
								<Item Name="_NewDVR.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Factory/_NewDVR.vi"/>
								<Item Name="_VariantMapFactory.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Factory/_VariantMapFactory.vi"/>
							</Item>
							<Item Name="Map" Type="Folder">
								<Item Name="_map_GetChildDVR.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Map/_map_GetChildDVR.vi"/>
								<Item Name="_map_GetChildValue.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Map/_map_GetChildValue.vi"/>
								<Item Name="_map_SetChildValue.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Map/_map_SetChildValue.vi"/>
								<Item Name="_map_subMapCache_Search.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Map/_map_subMapCache_Search.vi"/>
								<Item Name="_map_subMapCache_Update.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Map/_map_subMapCache_Update.vi"/>
							</Item>
							<Item Name="URL" Type="Folder">
								<Item Name="_URL_Strip.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/URL/_URL_Strip.vi"/>
								<Item Name="_URL_Type.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/URL/_URL_Type.vi"/>
							</Item>
							<Item Name="Util" Type="Folder">
								<Item Name="_Format Variant to String.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Util/_Format Variant to String.vi"/>
								<Item Name="_Preview_Recrusive.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/_Support/Util/_Preview_Recrusive.vi"/>
							</Item>
						</Item>
						<Item Name="Typedef" Type="Folder">
							<Item Name="variantMap_DataCore_Def.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/Typedef/variantMap_DataCore_Def.ctl"/>
							<Item Name="variantMap_DVR_Def.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/Typedef/variantMap_DVR_Def.ctl"/>
						</Item>
						<Item Name="VariantMapAPI" Type="Folder">
							<Item Name="Advance" Type="Folder">
								<Item Name="variantMap_Preview.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/Advance/variantMap_Preview.vi"/>
								<Item Name="variantMap_Debug.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/Advance/variantMap_Debug.vi"/>
							</Item>
							<Item Name="variantMap_New.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/variantMap_New.vi"/>
							<Item Name="variantMap_isVmap.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/variantMap_isVmap.vi"/>
							<Item Name="variantMap_ListChildDVRs.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/Advance/variantMap_ListChildDVRs.vi"/>
							<Item Name="variantMap_GetSubMap.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/variantMap_GetSubMap.vi"/>
							<Item Name="variantMap_ReadAsVariant.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/Advance/variantMap_ReadAsVariant.vi"/>
							<Item Name="variantMap_WriteAsVariant.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/Advance/variantMap_WriteAsVariant.vi"/>
							<Item Name="variantMap_Destory.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/VariantMap/API/variantMap_Destory.vi"/>
						</Item>
					</Item>
					<Item Name="CoreAPI" Type="Folder">
						<Item Name="Support" Type="Folder">
							<Item Name="DataRead(Element).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/DataRead(Element).vi"/>
							<Item Name="DataRead(Array).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/DataRead(Array).vi"/>
							<Item Name="DataWrite(Element).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/DataWrite(Element).vi"/>
							<Item Name="DataWrite(Array).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/DataWrite(Array).vi"/>
							<Item Name="OperateRead(Element).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/OperateRead(Element).vi"/>
							<Item Name="OperateRead(Array).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/OperateRead(Array).vi"/>
							<Item Name="OperateWrite(Element).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/OperateWrite(Element).vi"/>
							<Item Name="OperateWrite(Array).vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/OperateWrite(Array).vi"/>
						</Item>
						<Item Name="DataRead.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/DataRead.vi"/>
						<Item Name="DataWrite.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/DataWrite.vi"/>
						<Item Name="OperateRead.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/OperateRead.vi"/>
						<Item Name="OperateWrite.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/CoreAPI/OperateWrite.vi"/>
					</Item>
					<Item Name="PluginThreadRegistry.lvclass" Type="LVClass" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/PluginInterface/PluginThreadRegistry/PluginThreadRegistry.lvclass"/>
					<Item Name="PluginInterface.lvclass" Type="LVClass" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/PluginInterface/PluginInterface/PluginInterface.lvclass"/>
					<Item Name="Plugin.NULL.lvclass" Type="LVClass" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/Framework/DataServer_Interface/_CoreSrc/PluginInterface/Plugin.NULL/Plugin.NULL.lvclass"/>
					<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/Data Type/NI_Data Type.lvlib"/>
					<Item Name="NI_XNodeSupport.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/XNodeSupport/NI_XNodeSupport.lvlib"/>
					<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
					<Item Name="DialogType.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/DialogType.ctl"/>
					<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/TagReturnType.ctl"/>
					<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Check Special Tags.vi"/>
					<Item Name="Set String Value.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Set String Value.vi"/>
					<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetRTHostConnectedProp.vi"/>
					<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Code Database.vi"/>
					<Item Name="whitespace.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
					<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
					<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Search and Replace Pattern.vi"/>
					<Item Name="Find Tag.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Find Tag.vi"/>
					<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Set Bold Text.vi"/>
					<Item Name="Format Message String.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Format Message String.vi"/>
					<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/ErrWarn.ctl"/>
					<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/event_ctls.llb/eventvkey.ctl"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/DialogTypeEnum.ctl"/>
					<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Details Display Dialog.vi"/>
					<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
					<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Convert property node font to graphics font.vi"/>
					<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Get Text Rect.vi"/>
					<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Longest Line Length in Pixels.vi"/>
					<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
					<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Get String Text Bounds.vi"/>
					<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Three Button Dialog CORE.vi"/>
					<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Three Button Dialog.vi"/>
					<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetHelpDir.vi"/>
					<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/BuildHelpPath.vi"/>
					<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Not Found Dialog.vi"/>
					<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler Core CORE.vi"/>
					<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler.vi"/>
					<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Simple Error Handler.vi"/>
					<Item Name="Current VIs Reference__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Reference__ogtk.vi"/>
					<Item Name="Current VIs Parents Ref__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Parents Ref__ogtk.vi"/>
					<Item Name="Fit VI window to Largest Dec__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/appcontrol/appcontrol.llb/Fit VI window to Largest Dec__ogtk.vi"/>
					<Item Name="1D Array to String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/1D Array to String__ogtk.vi"/>
					<Item Name="Type Descriptor Enumeration__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Enumeration__ogtk.ctl"/>
					<Item Name="Build Error Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/error/error.llb/Build Error Cluster__ogtk.vi"/>
					<Item Name="String to 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/String to 1D Array__ogtk.vi"/>
					<Item Name="Trim Whitespace (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/Trim Whitespace (String)__ogtk.vi"/>
					<Item Name="Trim Whitespace (String Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/Trim Whitespace (String Array)__ogtk.vi"/>
					<Item Name="Build Path - File Names Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/file/file.llb/Build Path - File Names Array__ogtk.vi"/>
					<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/List Directory and LLBs.vi"/>
					<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Recursive File List.vi"/>
					<Item Name="Compare Two Paths - Scalar__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/file/file.llb/Compare Two Paths - Scalar__ogtk.vi"/>
					<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
					<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Default Value.vi"/>
					<Item Name="Remove Duplicates from 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (Variant)__ogtk.vi"/>
					<Item Name="Tick Count (ms)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/time/time.llb/Tick Count (ms)__ogtk.vi"/>
					<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Name.vi"/>
					<Item Name="Search 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Search 1D Array (Variant)__ogtk.vi"/>
					<Item Name="Remove Duplicates from 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (String)__ogtk.vi"/>
					<Item Name="Search 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Search 1D Array (String)__ogtk.vi"/>
					<Item Name="Sort 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Sort 1D Array (I32)__ogtk.vi"/>
					<Item Name="Reorder 1D Array2 (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Reorder 1D Array2 (Variant)__ogtk.vi"/>
					<Item Name="Reorder 1D Array2 (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Reorder 1D Array2 (String)__ogtk.vi"/>
					<Item Name="Delete Elements from 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (String)__ogtk.vi"/>
					<Item Name="Delete Elements from 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Delete Elements from 1D Array (Variant)__ogtk.vi"/>
					<Item Name="Filter 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Filter 1D Array (Variant)__ogtk.vi"/>
					<Item Name="Filter 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Filter 1D Array (String)__ogtk.vi"/>
					<Item Name="Filter 1D Array with Scalar (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/array/array.llb/Filter 1D Array with Scalar (String)__ogtk.vi"/>
					<Item Name="Type Descriptor__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor__ogtk.ctl"/>
					<Item Name="Parse String with TDs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Parse String with TDs__ogtk.vi"/>
					<Item Name="Get Last PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Last PString__ogtk.vi"/>
					<Item Name="Get PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get PString__ogtk.vi"/>
					<Item Name="Refnum Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Refnum Subtype Enum__ogtk.ctl"/>
					<Item Name="Get Refnum Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Refnum Type Enum from TD__ogtk.vi"/>
					<Item Name="Get Refnum Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Refnum Type Enum from Data__ogtk.vi"/>
					<Item Name="Waveform Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Waveform Subtype Enum__ogtk.ctl"/>
					<Item Name="Get Waveform Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Waveform Type Enum from TD__ogtk.vi"/>
					<Item Name="Get Waveform Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Waveform Type Enum from Data__ogtk.vi"/>
					<Item Name="Resolve Timestamp Format__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/Resolve Timestamp Format__ogtk.vi"/>
					<Item Name="Get Variant Attributes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Variant Attributes__ogtk.vi"/>
					<Item Name="Type Descriptor Header__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Header__ogtk.ctl"/>
					<Item Name="Get Header from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Header from TD__ogtk.vi"/>
					<Item Name="Get TDEnum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get TDEnum from Data__ogtk.vi"/>
					<Item Name="Variant to Header Info__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Variant to Header Info__ogtk.vi"/>
					<Item Name="Array Size(s)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Array Size(s)__ogtk.vi"/>
					<Item Name="Get Array Element TDEnum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Array Element TDEnum__ogtk.vi"/>
					<Item Name="Strip Units__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Strip Units__ogtk.vi"/>
					<Item Name="Split Cluster TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Split Cluster TD__ogtk.vi"/>
					<Item Name="Cluster to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Cluster to Array of VData__ogtk.vi"/>
					<Item Name="Get Data Name from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Data Name from TD__ogtk.vi"/>
					<Item Name="Get Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Data Name__ogtk.vi"/>
					<Item Name="Get Strings from Enum TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Strings from Enum TD__ogtk.vi"/>
					<Item Name="Get Strings from Enum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Get Strings from Enum__ogtk.vi"/>
					<Item Name="Format Variant Into String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/Format Variant Into String__ogtk.vi"/>
					<Item Name="Set Enum String Value__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Set Enum String Value__ogtk.vi"/>
					<Item Name="Set Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Set Data Name__ogtk.vi"/>
					<Item Name="Array of VData to VCluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VCluster__ogtk.vi"/>
					<Item Name="Scan Variant from String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/user.lib/_OpenG.lib/string/string.llb/Scan Variant from String__ogtk.vi"/>
					<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/PluginInterface.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				</Item>
				<Item Name="Random Number - Within Range__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/numeric/numeric.llb/Random Number - Within Range__ogtk.vi"/>
				<Item Name="Random Number Within Range - DBL__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/numeric/numeric.llb/Random Number Within Range - DBL__ogtk.vi"/>
				<Item Name="Random Number Within Range - I32__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/numeric/numeric.llb/Random Number Within Range - I32__ogtk.vi"/>
				<Item Name="Random Number Within Range__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/numeric/numeric.llb/Random Number Within Range__ogtk.vi"/>
				<Item Name="Read INI Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Read INI Cluster__ogtk.vi"/>
				<Item Name="Read Key (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Read Key (Variant)__ogtk.vi"/>
				<Item Name="Read Section Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Read Section Cluster__ogtk.vi"/>
				<Item Name="Recursive Build Path_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/File/Recursive Build Path_nevstop.vi"/>
				<Item Name="Refnum Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Refnum Subtype Enum__ogtk.ctl"/>
				<Item Name="Remove Duplicates from 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (DBL)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (EXT)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (I8)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (I16)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (I32)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (I64)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (Path)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (SGL)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (String)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (U8)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (U16)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (U32)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (U64)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array (Variant)__ogtk.vi"/>
				<Item Name="Remove Duplicates from 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Remove Duplicates from 1D Array__ogtk.vi"/>
				<Item Name="Reorder 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Reorder 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Reorder 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (Boolean)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (CDB)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (CSG)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (CXT)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (DBL)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (EXT)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (I8)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (I16)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (I32)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (I64)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (LVObject)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (Path)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (SGL)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (String)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (U8)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (U16)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (U32)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (U64)__ogtk.vi"/>
				<Item Name="Reorder 1D Array2 (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 1D Array2 (Variant)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (Boolean)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (CDB)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (CSG)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (CXT)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (DBL)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (EXT)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (I8)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (I16)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (I32)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (I64)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (LVObject)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (Path)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (SGL)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (String)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (U8)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (U16)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (U32)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (U64)__ogtk.vi"/>
				<Item Name="Reorder 2D Array2 (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder 2D Array2 (Variant)__ogtk.vi"/>
				<Item Name="Reorder Array2__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Reorder Array2__ogtk.vi"/>
				<Item Name="Reshape 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape 1D Array__ogtk.vi"/>
				<Item Name="Reshape Array to 1D VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape Array to 1D VArray__ogtk.vi"/>
				<Item Name="Resolve Timestamp Format__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Resolve Timestamp Format__ogtk.vi"/>
				<Item Name="Scan Variant from String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Scan Variant from String__ogtk.vi"/>
				<Item Name="Search 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="Search 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Search 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Search 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Search 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (DBL)__ogtk.vi"/>
				<Item Name="Search 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (EXT)__ogtk.vi"/>
				<Item Name="Search 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I8)__ogtk.vi"/>
				<Item Name="Search 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I16)__ogtk.vi"/>
				<Item Name="Search 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I32)__ogtk.vi"/>
				<Item Name="Search 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I64)__ogtk.vi"/>
				<Item Name="Search 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="Search 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (Path)__ogtk.vi"/>
				<Item Name="Search 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (SGL)__ogtk.vi"/>
				<Item Name="Search 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (String)__ogtk.vi"/>
				<Item Name="Search 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U8)__ogtk.vi"/>
				<Item Name="Search 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U16)__ogtk.vi"/>
				<Item Name="Search 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U32)__ogtk.vi"/>
				<Item Name="Search 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U64)__ogtk.vi"/>
				<Item Name="Search 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (Variant)__ogtk.vi"/>
				<Item Name="Search Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search Array__ogtk.vi"/>
				<Item Name="Set Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Set Data Name__ogtk.vi"/>
				<Item Name="Set Enum String Value__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Set Enum String Value__ogtk.vi"/>
				<Item Name="Sort 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Sort 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Sort 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Sort 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (DBL)__ogtk.vi"/>
				<Item Name="Sort 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (EXT)__ogtk.vi"/>
				<Item Name="Sort 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (I8)__ogtk.vi"/>
				<Item Name="Sort 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (I16)__ogtk.vi"/>
				<Item Name="Sort 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (I32)__ogtk.vi"/>
				<Item Name="Sort 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (I64)__ogtk.vi"/>
				<Item Name="Sort 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (Path)__ogtk.vi"/>
				<Item Name="Sort 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (SGL)__ogtk.vi"/>
				<Item Name="Sort 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (String)__ogtk.vi"/>
				<Item Name="Sort 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (U8)__ogtk.vi"/>
				<Item Name="Sort 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (U16)__ogtk.vi"/>
				<Item Name="Sort 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (U32)__ogtk.vi"/>
				<Item Name="Sort 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 1D Array (U64)__ogtk.vi"/>
				<Item Name="Sort 2D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (CDB)__ogtk.vi"/>
				<Item Name="Sort 2D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (CSG)__ogtk.vi"/>
				<Item Name="Sort 2D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (CXT)__ogtk.vi"/>
				<Item Name="Sort 2D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (DBL)__ogtk.vi"/>
				<Item Name="Sort 2D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (EXT)__ogtk.vi"/>
				<Item Name="Sort 2D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (I8)__ogtk.vi"/>
				<Item Name="Sort 2D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (I16)__ogtk.vi"/>
				<Item Name="Sort 2D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (I32)__ogtk.vi"/>
				<Item Name="Sort 2D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (I64)__ogtk.vi"/>
				<Item Name="Sort 2D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (Path)__ogtk.vi"/>
				<Item Name="Sort 2D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (SGL)__ogtk.vi"/>
				<Item Name="Sort 2D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (String)__ogtk.vi"/>
				<Item Name="Sort 2D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (U8)__ogtk.vi"/>
				<Item Name="Sort 2D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (U16)__ogtk.vi"/>
				<Item Name="Sort 2D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (U32)__ogtk.vi"/>
				<Item Name="Sort 2D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort 2D Array (U64)__ogtk.vi"/>
				<Item Name="Sort Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Sort Array__ogtk.vi"/>
				<Item Name="Split Cluster TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Split Cluster TD__ogtk.vi"/>
				<Item Name="String to 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/String to 1D Array__ogtk.vi"/>
				<Item Name="Strip Path - Arrays__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Strip Path - Arrays__ogtk.vi"/>
				<Item Name="Strip Path - Traditional__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Strip Path - Traditional__ogtk.vi"/>
				<Item Name="Strip Path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Strip Path__ogtk.vi"/>
				<Item Name="Strip Units__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Strip Units__ogtk.vi"/>
				<Item Name="Tick Count (ms)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/time/time.llb/Tick Count (ms)__ogtk.vi"/>
				<Item Name="Trim Whitespace (String Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace (String Array)__ogtk.vi"/>
				<Item Name="Trim Whitespace (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace (String)__ogtk.vi"/>
				<Item Name="Trim Whitespace__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace__ogtk.vi"/>
				<Item Name="Type Descriptor Enumeration__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Enumeration__ogtk.ctl"/>
				<Item Name="Type Descriptor Header__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Header__ogtk.ctl"/>
				<Item Name="Type Descriptor__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor__ogtk.ctl"/>
				<Item Name="Valid Path - Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Valid Path - Array__ogtk.vi"/>
				<Item Name="Valid Path - Traditional__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Valid Path - Traditional__ogtk.vi"/>
				<Item Name="Valid Path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Valid Path__ogtk.vi"/>
				<Item Name="Variant to Header Info__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Variant to Header Info__ogtk.vi"/>
				<Item Name="Wait (ms)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/time/time.llb/Wait (ms)__ogtk.vi"/>
				<Item Name="Waveform Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Waveform Subtype Enum__ogtk.ctl"/>
				<Item Name="WebAPI.lvlib" Type="Library" URL="/&lt;userlib&gt;/Framework/DataServer_Interface/WebAPI/WebAPI.lvlib"/>
				<Item Name="Write INI Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Write INI Cluster__ogtk.vi"/>
				<Item Name="Write Key (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Write Key (Variant)__ogtk.vi"/>
				<Item Name="Write Section Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Write Section Cluster__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Build State String with Arguments__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Build State String with Arguments__JKI_lib_State_Machine.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get Type Code from I16 Array And Pos.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Get Type Code from I16 Array And Pos.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="InsetRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/InsetRect.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Number To Enum.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Number To Enum.vim"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Point2Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/Point2Rect.vi"/>
				<Item Name="PointInRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/PointInRect.vi"/>
				<Item Name="RectCentroid.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/RectCentroid.vi"/>
				<Item Name="RectSize.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/RectSize.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="TD_Get Cluster Information.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/TD_Get Cluster Information.vi"/>
				<Item Name="TD_Get Ref Info.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/TD_Get Ref Info.vi"/>
				<Item Name="TD_Refnum Kind.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/TD_Refnum Kind.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Type Code.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Code.ctl"/>
				<Item Name="Type Descriptor I16 Array.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Descriptor I16 Array.ctl"/>
				<Item Name="Type Descriptor I16.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Descriptor I16.ctl"/>
				<Item Name="Type Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Enum.ctl"/>
				<Item Name="UDP Multicast Open.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/UDP Multicast Open.vi"/>
				<Item Name="UDP Multicast Read-Only Open.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/UDP Multicast Read-Only Open.vi"/>
				<Item Name="UDP Multicast Read-Write Open.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/UDP Multicast Read-Write Open.vi"/>
				<Item Name="UDP Multicast Write-Only Open.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/UDP Multicast Write-Only Open.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="usereventprio.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/usereventprio.ctl"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="USER32.DLL" Type="Document" URL="USER32.DLL">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
