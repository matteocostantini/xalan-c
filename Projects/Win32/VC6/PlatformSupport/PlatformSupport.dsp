# Microsoft Developer Studio Project File - Name="PlatformSupport" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=PlatformSupport - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "PlatformSupport.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "PlatformSupport.mak" CFG="PlatformSupport - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PlatformSupport - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PlatformSupport - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PlatformSupport - Win32 Release with symbols" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PlatformSupport - Win64 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PlatformSupport - Win64 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "PlatformSupport - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\..\Build\Win32\VC6\Release"
# PROP Intermediate_Dir "..\..\..\..\Build\Win32\VC6\Release\PlatformSupport"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W4 /GR /GX /O2 /Ob2 /I "..\..\..\..\..\..\xml-xerces\c\src" /I "..\..\..\..\src\\" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_BUILD_DLL" /FD /I /xml4c/include" /I /xml4c/include" " " " " " " /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 xerces-c_2.lib /nologo /dll /pdb:none /machine:I386 /out:"..\..\..\..\Build\Win32\VC6\Release/PlatformSupport_1_5_0.dll" /implib:"..\..\..\..\Build\Win32\VC6\Release/PlatformSupport_1.lib" /libpath:"..\..\..\..\..\..\xml-xerces\c\Build\Win32\VC6\Release"

!ELSEIF  "$(CFG)" == "PlatformSupport - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\..\Build\Win32\VC6\Debug"
# PROP Intermediate_Dir "..\..\..\..\Build\Win32\VC6\Debug\PlatformSupport"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PlatformSupport_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W4 /Gm /GR /GX /Zi /Od /I "..\..\..\..\..\..\xml-xerces\c\src" /I "..\..\..\..\src\\" /D "_WINDOWS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_BUILD_DLL" /D "WIN32" /D "_DEBUG" /D "_MBCS" /YX /FD /I /xml4c/include" /I /lotusxsl4c/stl" /I /lotusxsl4c/src/include" /I /xml4c/include" /GZ " " " " " " /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 xerces-c_2D.lib /nologo /dll /debug /machine:I386 /out:"..\..\..\..\Build\Win32\VC6\Debug/PlatformSupport_1_5_0D.dll" /implib:"..\..\..\..\Build\Win32\VC6\Debug/PlatformSupport_1D.lib" /pdbtype:sept /libpath:"..\..\..\..\..\..\xml-xerces\c\Build\Win32\VC6\Debug"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "PlatformSupport - Win32 Release with symbols"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "PlatformSupport___Win32_Release_with_symbols"
# PROP BASE Intermediate_Dir "PlatformSupport___Win32_Release_with_symbols"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\..\Build\Win32\VC6\Release.symbols"
# PROP Intermediate_Dir "..\..\..\..\Build\Win32\VC6\Release.symbols\PlatformSupport"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W4 /GR /GX /O2 /Ob2 /I "..\..\..\..\..\..\xml-xerces\c\src" /I "..\..\..\..\src\\" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_BUILD_DLL" /D "XALAN_XERCES" /FD /I /xml4c/include" /I /xml4c/include" " " " " " " /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /MD /W4 /GR /GX /Zi /O2 /Ob2 /I "..\..\..\..\..\..\xml-xerces\c\src" /I "..\..\..\..\src\\" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_BUILD_DLL" /FD /I /xml4c/include" /I /xml4c/include" " " " " " " /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 ..\..\..\..\..\..\xml-xerces\c\Build\Win32\VC6\Release\xerces-c_1.lib /nologo /dll /pdb:none /machine:I386
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 xerces-c_2.lib /nologo /dll /debug /machine:I386 /out:"..\..\..\..\Build\Win32\VC6\Release.symbols/PlatformSupport_1_5_0S.dll" /implib:"..\..\..\..\Build\Win32\VC6\Release.symbols/PlatformSupport_1S.lib" /libpath:"..\..\..\..\..\..\xml-xerces\c\Build\Win32\VC6\Release"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "PlatformSupport - Win64 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\..\Build\Win64\VC6\Release"
# PROP Intermediate_Dir "..\..\..\..\Build\Win64\VC6\Release\PlatformSupport"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_EXPORTS" /YX /FD /c
# ADD CPP /D "WIN64" /nologo /MD /W4 /GR /GX /O2 /Ob2 /I "..\..\..\..\..\..\xml-xerces\c\src" /I "..\..\..\..\src\\" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_BUILD_DLL" /FD /I /xml4c/include" /I /xml4c/include" " " " " " " /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 xerces-c_2.lib /nologo /dll /pdb:none /machine:IA64 /out:"..\..\..\..\Build\Win64\VC6\Release/PlatformSupport_1_5_0.dll" /implib:"..\..\..\..\Build\Win64\VC6\Release/PlatformSupport_1.lib" /libpath:"..\..\..\..\..\..\xml-xerces\c\Build\Win64\VC6\Release"

!ELSEIF  "$(CFG)" == "PlatformSupport - Win64 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\..\Build\Win64\VC6\Debug"
# PROP Intermediate_Dir "..\..\..\..\Build\Win64\VC6\Debug\PlatformSupport"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PlatformSupport_EXPORTS" /YX /FD /GZ /c
# ADD CPP /D "WIN64" /nologo /MDd /W4 /Gm /GR /GX /Zi /Od /I "..\..\..\..\..\..\xml-xerces\c\src" /I "..\..\..\..\src\\" /D "_WINDOWS" /D "_USRDLL" /D "XALAN_PLATFORMSUPPORT_BUILD_DLL" /D "WIN32" /D "_DEBUG" /D "_MBCS" /YX /FD /I /xml4c/include" /I /lotusxsl4c/stl" /I /lotusxsl4c/src/include" /I /xml4c/include" /GZ " " " " " " /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 xerces-c_2D.lib /nologo /dll /debug /machine:IA64 /out:"..\..\..\..\Build\Win64\VC6\Debug/PlatformSupport_1_5_0D.dll" /implib:"..\..\..\..\Build\Win64\VC6\Debug/PlatformSupport_1D.lib" /pdbtype:sept /libpath:"..\..\..\..\..\..\xml-xerces\c\Build\Win64\VC6\Debug"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "PlatformSupport - Win32 Release"
# Name "PlatformSupport - Win32 Debug"
# Name "PlatformSupport - Win32 Release with symbols"
# Name "PlatformSupport - Win64 Release"
# Name "PlatformSupport - Win64 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\AttributeListImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\AttributesImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DOMStringHelper.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DOMStringPrintWriter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DoubleSupport.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\ExecutionContext.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\FormatterListener.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\NamedNodeMapAttributeList.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\NullPrintWriter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PlatformSupportInit.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PrefixResolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PrintWriter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\Resettable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\StdBinInputStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\StringTokenizer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\URISupport.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\Writer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanBitmap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDecimalFormat.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDecimalFormatSymbols.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringAllocator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringCache.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringHashTable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringPool.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanFileOutputStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanNullOutputStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanNumberFormat.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanOutputStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanOutputStreamPrintWriter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanParsedURI.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanReferenceCountedObject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanSimplePrefixResolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanStdOutputStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanToXercesTranscoderWrapper.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanTranscodingServices.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanUTF16Transcoder.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanXMLChar.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XSLException.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\ArenaAllocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\ArenaBlock.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\AttributeListImpl.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\AttributesImpl.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\AttributeVectorEntry.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\AttributeVectorEntryExtended.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DirectoryEnumerator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DOMStringHelper.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DOMStringPrintWriter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\DoubleSupport.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\ExecutionContext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\FormatterListener.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\NamedNodeMapAttributeList.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\NullPrintWriter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PlatformSupportDefinitions.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PlatformSupportInit.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PrefixResolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\PrintWriter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\Resettable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\ReusableArenaAllocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\ReusableArenaBlock.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\StdBinInputStream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\StringTokenizer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\URISupport.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\Writer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanAllocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanArrayAllocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanBitmap.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDecimalFormat.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDecimalFormatSymbols.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringAllocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringCache.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringHashTable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanDOMStringPool.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanFileOutputStream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanLocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanNamespace.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanNullOutputStream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanNumberFormat.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanOutputStream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanOutputStreamPrintWriter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanParsedURI.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanReferenceCountedObject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanSimplePrefixResolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanStdOutputStream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanToXercesTranscoderWrapper.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanTranscodingServices.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanUnicode.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanUTF16Transcoder.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XalanXMLChar.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\src\xalanc\PlatformSupport\XSLException.hpp
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=..\..\Res\PlatformSupport\PlatformSupport.rc
# End Source File
# Begin Source File

SOURCE=..\..\Res\PlatformSupport\resource.h
# End Source File
# End Group
# End Target
# End Project
