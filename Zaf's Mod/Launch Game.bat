@echo off
title Zaf's Launcher
color 0A

:menu
cls
echo ================================
echo       SELECT A WAD TO PLAY
echo ================================
echo 1. Zafs Mod
echo 2. none
echo 3. none
echo 4. Get Out
echo ================================
set /p opcion=Number of selected WAD file: 

if "%opcion%"=="1" goto zafsmod
if "%opcion%"=="2" goto doom2
if "%opcion%"=="3" goto freedoom
if "%opcion%"=="4" exit
goto menu

:zafsmod
start "" engine\exec\zdoom.exe -iwad engine\source\source.wad -file engine\source\zafsmod.wad
goto fin

:doom2
start "" engine\exec\zdoom.exe -iwad engine\iwads\doom2.wad
goto fin

:freedoom
start "" engine\exec\zdoom.exe -iwad engine\iwads\freedoom2.wad
goto fin

:fin
exit
