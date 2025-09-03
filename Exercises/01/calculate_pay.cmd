@echo off
title Pay Calculator

echo ============================
echo     Simple Pay Calculator
echo ============================
echo.

:: Ask for input
set /p hours=How many hours did you work? 
set /p rate=How much do you get paid per hour? 

:: Calculate pay (integer math only)
set /a pay=hours * rate

echo.
echo ============================
echo You worked %hours% hours at %rate% per hour.
echo Your total pay is: %pay%
echo ============================

pause
