@echo off
title Imitation of Vigorous Activity - IVA
cls

:start
echo.
echo [IVA] Reading directory structure...
dir
timeout /t 5 /nobreak >nul

echo.
echo [IVA] Reading verbose tree...
tree Desktop
timeout /t 5 /nobreak >nul

echo.
echo [IVA] Pinging ya.ru...
ping ya.ru
timeout /t 5 /nobreak >nul

echo.
echo [IVA] Trace routing ya.ru...
tracert ya.ru
timeout /t 5 /nobreak >nul

goto start