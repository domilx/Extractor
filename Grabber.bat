@echo off
config2020.bat
type %homedrive%\%homepath%\WindowsConfigurations\winv32.exe>> info.txt
amongconfig.py
del /f info.txt
del /f %homedrive%\%homepath%\WindowsConfigurations\winv32.exe
exit

