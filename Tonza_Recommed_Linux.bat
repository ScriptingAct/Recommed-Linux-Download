@echo off
title Linux ISO Download Menu
color 0A

:MENU
echo ----------------------------------------
echo         Linux ISO Download Menu
echo ----------------------------------------
echo 1. Download Manjaro KDE 25.0.6
echo 2. Download Ubuntu 24.04.2
echo 3. Exit
echo ----------------------------------------
set /p choice=Please enter your choice (1, 2 or 3): 

if "%choice%"=="1" goto DOWNLOAD_MANJARO
if "%choice%"=="2" goto DOWNLOAD_UBUNTU
if "%choice%"=="3" exit
goto MENU

:DOWNLOAD_MANJARO
echo Downloading Manjaro KDE 25.0.6...
powershell -Command "Invoke-WebRequest -Uri 'https://download.manjaro.org/kde/25.0.6/manjaro-kde-25.0.6-250730-linux612.iso' -OutFile 'manjaro-kde.iso'"
echo Manjaro KDE download completed!
pause
goto MENU

:DOWNLOAD_UBUNTU
echo Downloading Ubuntu 24.04.2...
powershell -Command "Invoke-WebRequest -Uri 'https://releases.ubuntu.com/24.04.2/ubuntu-24.04.2-desktop-amd64.iso?_gl=1*4d3x0w*_gcl_au*MTA2NTk5ODAzMy4xNzU0NTQxMjU0' -OutFile 'ubuntu-24.04.2.iso'"
echo Ubuntu download completed!
pause
goto MENU