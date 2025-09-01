@echo off
title User Info Script

:: Ask for username
set /p username=Please enter your username: 

echo.
echo ================================
echo   Hello, %username%!
echo   Here is some info about your computer:
echo ================================
echo.

:: Display computer name
echo Computer Name: %COMPUTERNAME%

:: Display current logged in Windows username
echo Logged-in User: %USERNAME%

:: Display OS version
ver

:: Display current date and time
echo Date: %DATE%
echo Time: %TIME%

:: Display processor info
echo.
echo Processor Info:
wmic cpu get Name

:: Display total RAM
echo.
echo Total RAM:
wmic computersystem get TotalPhysicalMemory

pause
