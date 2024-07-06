export AS_BUILD_MODE := Build
export AS_SYSTEM_PATH := D:/DEEPAK/BR/AS/System
export AS_BIN_PATH := D:/DEEPAK/BR/AS412/bin-en
export AS_INSTALL_PATH := D:/DEEPAK/BR/AS412
export AS_PATH := D:/DEEPAK/BR/AS412
export AS_VC_PATH := D:/DEEPAK/BR/AS412/AS/VC
export AS_GNU_INST_PATH := D:/DEEPAK/BR/AS412/AS/gnuinst/V4.1.2
export AS_STATIC_ARCHIVES_PATH := C:/BRproject/Ag-Rover/Temp/Archives/Config1/X20CP1586
export AS_CPU_PATH := C:/BRproject/Ag-Rover/Temp/Objects/Config1/X20CP1586
export AS_CPU_PATH_2 := C:/BRproject/Ag-Rover/Temp/Objects/Config1/X20CP1586
export AS_TEMP_PATH := C:/BRproject/Ag-Rover/Temp
export AS_BINARIES_PATH := C:/BRproject/Ag-Rover/Binaries
export AS_PROJECT_CPU_PATH := C:/BRproject/Ag-Rover/Physical/Config1/X20CP1586
export AS_PROJECT_CONFIG_PATH := C:/BRproject/Ag-Rover/Physical/Config1
export AS_PROJECT_PATH := C:/BRproject/Ag-Rover
export AS_PROJECT_NAME := Servo
export AS_PLC := X20CP1586
export AS_TEMP_PLC := X20CP1586
export AS_USER_NAME := HARI\ DEEPAK
export AS_CONFIGURATION := Config1
export AS_COMPANY_NAME := \ 
export AS_VERSION := 4.12.2.93
export AS_WORKINGVERSION := 4.12


default: \
	$(AS_CPU_PATH)/Visu.br \
	vcPostBuild_Visu \



include $(AS_CPU_PATH)/Visu/Visu.mak
