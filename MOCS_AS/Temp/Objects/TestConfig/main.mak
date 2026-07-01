SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\MATLAB\R2024b\runtime\win64;C:\Program Files\MATLAB\R2024b\bin;C:\Program Files\MATLAB\R2023b\runtime\win64;C:\Program Files\MATLAB\R2023b\bin;C:\Program Files\MATLAB\MATLAB Runtime\R2022b\runtime\win64;C:\Program Files\MATLAB\R2022b\runtime\win64;C:\Program Files\MATLAB\R2022b\bin;C:\Program Files\MATLAB\R2018b\bin;C:\Users\HHI\AppData\Local\Programs\Python\Python310\Scripts\;C:\Users\HHI\AppData\Local\Programs\Python\Python310\;C:\Users\HHI\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\HHI\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\HHI\AppData\Local\Programs\Python\Python310\Scripts\;C:\Users\HHI\AppData\Local\Programs\Python\Python310\;C:\Users\HHI\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\HHI\AppData\Local\Programs\Microsoft VS Code\bin;C:\BrAutomation\AS412\bin-en\4.12;C:\BrAutomation\AS412\bin-en\4.11;C:\BrAutomation\AS412\bin-en\4.10;C:\BrAutomation\AS412\bin-en\4.9;C:\BrAutomation\AS412\bin-en\4.8;C:\BrAutomation\AS412\bin-en\4.7;C:\BrAutomation\AS412\bin-en\4.6;C:\BrAutomation\AS412\bin-en\4.5;C:\BrAutomation\AS412\bin-en\4.4;C:\BrAutomation\AS412\bin-en\4.3;C:\BrAutomation\AS412\bin-en\4.2;C:\BrAutomation\AS412\bin-en\4.1;C:\BrAutomation\AS412\bin-en\4.0;C:\BrAutomation\AS412\bin-en
export AS_BUILD_MODE := Build
export AS_VERSION := 4.12.5.95 SP
export AS_WORKINGVERSION := 4.12
export AS_COMPANY_NAME :=  
export AS_USER_NAME := HHI
export AS_PATH := C:/BrAutomation/AS412
export AS_BIN_PATH := C:/BrAutomation/AS412/bin-en
export AS_PROJECT_PATH := D:/Git/mocs_proto/MOCS_AS
export AS_PROJECT_NAME := MOCS_AS
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS412/AS/VC
export AS_TEMP_PATH := D:/Git/mocs_proto/MOCS_AS/Temp
export AS_CONFIGURATION := TestConfig
export AS_BINARIES_PATH := D:/Git/mocs_proto/MOCS_AS/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS412/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BrAutomation/AS412/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS412/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BrAutomation/AS412/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS412
export WIN32_AS_PATH := "C:\BrAutomation\AS412"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS412\bin-en"
export WIN32_AS_PROJECT_PATH := "D:\Git\mocs_proto\MOCS_AS"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS412\AS\VC"
export WIN32_AS_TEMP_PATH := "D:\Git\mocs_proto\MOCS_AS\Temp"
export WIN32_AS_BINARIES_PATH := "D:\Git\mocs_proto\MOCS_AS\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS412\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "C:\BrAutomation\AS412\AS\GnuInst\V4.1.2\bin"
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS412"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/MOCS_AS.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

