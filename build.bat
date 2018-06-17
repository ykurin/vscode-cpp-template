@echo off

set buildDir=.\build
if not exist %buildDir% mkdir %buildDir%
pushd %buildDir%

:: compiler input
set files=..\src\main.cpp

:: compiler flags:
:: /Zi enable debugging information
:: /FC use full path in diagnostics
set compileFlags=/Zi /FC

:: linker flags:
:: /SUBSYSTEM specifies exe env - defines entry point symbol
set linkFlags=/link /SUBSYSTEM:CONSOLE

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
cl.exe %compilerflags% %files% %linkFlags%

popd
