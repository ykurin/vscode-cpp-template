@echo off

set PATH=%PATH%;%1

set buildDir=.\build
if not exist %buildDir% mkdir %buildDir%
pushd %buildDir%

:: compiler input
set files=..\src\*.cpp

:: compiler flags:
set compileFlags=-lpthread --std=c++11 -O0

:: linker flags:
set outputFile=-o %2

g++ -g %files% %compileFlags% %outputFile%

popd
