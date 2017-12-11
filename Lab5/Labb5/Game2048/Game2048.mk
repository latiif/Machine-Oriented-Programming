##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Game2048
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/latiif/Documents/Labb5
ProjectPath            :=C:/Users/latiif/Documents/Labb5/Game2048
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=latiif
Date                   :=11/12/2017
CodeLitePath           :=C:/cseapp/CodeLite
LinkerName             :=C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-g++.exe
SharedObjectLinkerName :=C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=$(PreprocessorSwitch)SIMULATOR 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Game2048.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -T$(ProjectPath)/md407-ram.x -L$(ARM_V6LIB) -L$(ARM_GCC_V6LIB) -nostartfiles
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)gcc $(LibrarySwitch)c_nano 
ArLibs                 :=  "gcc" "c_nano" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-ar.exe rcu
CXX      := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-g++.exe
CC       := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-gcc.exe
CXXFLAGS :=  -g -O0 -W $(Preprocessors)
CFLAGS   :=  -Wa,-adhln=test.s -g -O0 -w -mthumb -march=armv6-m  -mfloat-abi=soft -std=c99 -mthumb -march=armv6-m $(Preprocessors)
ASFLAGS  := 
AS       := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\cseapp\CodeLite
ARM_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v6-m
ARM_GCC_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/6.3.1/thumb/v6-m
ARM_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard
ARM_GCC_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/6.3.1/thumb/v7e-m
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/display.c$(ObjectSuffix) $(IntermediateDirectory)/input.c$(ObjectSuffix) $(IntermediateDirectory)/Gameboard.c$(ObjectSuffix) $(IntermediateDirectory)/random_generator.c$(ObjectSuffix) $(IntermediateDirectory)/ascii.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Debug/Game2048.elf ./Debug/Game2048.s19
	arm-none-eabi-objdump -D -S ./Debug/Game2048.elf > ./Debug/Game2048.dass
	@echo Done

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game2048/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/display.c$(ObjectSuffix): display.c $(IntermediateDirectory)/display.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game2048/display.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/display.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/display.c$(DependSuffix): display.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/display.c$(ObjectSuffix) -MF$(IntermediateDirectory)/display.c$(DependSuffix) -MM display.c

$(IntermediateDirectory)/display.c$(PreprocessSuffix): display.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/display.c$(PreprocessSuffix) display.c

$(IntermediateDirectory)/input.c$(ObjectSuffix): input.c $(IntermediateDirectory)/input.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game2048/input.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/input.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/input.c$(DependSuffix): input.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/input.c$(ObjectSuffix) -MF$(IntermediateDirectory)/input.c$(DependSuffix) -MM input.c

$(IntermediateDirectory)/input.c$(PreprocessSuffix): input.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/input.c$(PreprocessSuffix) input.c

$(IntermediateDirectory)/Gameboard.c$(ObjectSuffix): Gameboard.c $(IntermediateDirectory)/Gameboard.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game2048/Gameboard.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Gameboard.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Gameboard.c$(DependSuffix): Gameboard.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Gameboard.c$(ObjectSuffix) -MF$(IntermediateDirectory)/Gameboard.c$(DependSuffix) -MM Gameboard.c

$(IntermediateDirectory)/Gameboard.c$(PreprocessSuffix): Gameboard.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Gameboard.c$(PreprocessSuffix) Gameboard.c

$(IntermediateDirectory)/random_generator.c$(ObjectSuffix): random_generator.c $(IntermediateDirectory)/random_generator.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game2048/random_generator.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/random_generator.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/random_generator.c$(DependSuffix): random_generator.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/random_generator.c$(ObjectSuffix) -MF$(IntermediateDirectory)/random_generator.c$(DependSuffix) -MM random_generator.c

$(IntermediateDirectory)/random_generator.c$(PreprocessSuffix): random_generator.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/random_generator.c$(PreprocessSuffix) random_generator.c

$(IntermediateDirectory)/ascii.c$(ObjectSuffix): ascii.c $(IntermediateDirectory)/ascii.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game2048/ascii.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ascii.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ascii.c$(DependSuffix): ascii.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ascii.c$(ObjectSuffix) -MF$(IntermediateDirectory)/ascii.c$(DependSuffix) -MM ascii.c

$(IntermediateDirectory)/ascii.c$(PreprocessSuffix): ascii.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ascii.c$(PreprocessSuffix) ascii.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


