@echo off
start upchck.bat
ping localhost -n 3 > NUL
setlocal enabledelayedexpansion
chcp 65001
title Test V.1.3
pause
goto home

:home
cls
echo.
echo Writing op.txt
timeout 5 /nobreak
echo Neues Update >> op.txt
echo V.1.3 >> op.txt
ping localhost -n 2 > NUL
start op.txt
