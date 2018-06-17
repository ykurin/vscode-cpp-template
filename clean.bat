@echo off

set buildDir=.\build

if exist %buildDir% (
    pushd %buildDir%
    del /q /s *.exe *.pdb *.ilk *.dll *.obj
    rd /s /q .vs
    popd
)
