@echo off
title Launcher
color 0A

:menu
cls
echo ================================
echo ===ZAF's Mod--Launcher Loader===
echo ================================
echo        ---Base Game---
echo 1. Blazing night
echo --------------------------------
echo       ---Extra Levels---
echo 2. Destruction of the torment..
echo 3. Is phytolizer nefarious
echo 4. Pain at the peak
echo 5. The foul of tenets
echo --------------------------------
echo 6. Load Custom WAD file
echo --------------------------------
echo 7. Load Doom 
echo 8. Load Doom II
echo 9. Load FreeDoom I
echo 10. Load FreeDoom II
echo --------------------------------
echo c. Boot loader without WAD file
echo x. Go to desktop
echo ================================
echo Version: 0.5.6 2025
echo ================================
set /p opcion=Acction Key Code: 

if "%opcion%"=="1" goto game1
if "%opcion%"=="2" goto game2
if "%opcion%"=="3" goto game3
if "%opcion%"=="4" goto game4
if "%opcion%"=="5" goto game5
if "%opcion%"=="6" goto customloader
if "%opcion%"=="7" goto doom
if "%opcion%"=="8" goto doomii
if "%opcion%"=="9" goto freedoom1
if "%opcion%"=="10" goto freedoom2
if "%opcion%"=="c" goto loader
if "%opcion%"=="x" exit
goto menu

:game1
start "" engine\exec\loader.exe -iwad engine\source\source.wad -file engine\source\blazing_night.pk3
goto fin

:game2
start "" engine\exec\loader.exe -iwad engine\source\source.wad -file engine\source\destruction_of_the_torment_gateway.pk3
goto fin

:game3
start "" engine\exec\loader.exe -iwad engine\source\source.wad -file engine\source\is_phytolizer_nefarious.pk3
goto fin

:game4
start "" engine\exec\loader.exe -iwad engine\source\source.wad -file engine\source\pain_at_the_peak.pk3
goto fin

:game5
start "" engine\exec\loader.exe -iwad engine\source\source.wad -file engine\source\the_foul_of_tenets.pk3
goto fin

:customloader
start "" engine\exec\loader.exe -iwad engine\source\source.wad -file engine\customloader\load.pk3
goto fin

:doom
start "" engine\exec\loader.exe -iwad engine\source\doom1.wad
goto fin

:doomii
start "" engine\exec\loader.exe -iwad engine\source\doom2.wad
goto fin

:freedom1
start "" engine\exec\loader.exe -iwad engine\source\freedoom1.wad
goto fin

:freedoom2
start "" engine\exec\loader.exe -iwad engine\source\freedoom2.wad
goto fin

:loader
start "" engine\exec\loader.exe
goto fin

:fin
exit
