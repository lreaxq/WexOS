@echo off
cls
if NOT exist appdata/wexstudios/wexos/1/wexos.bat (goto repair)
goto close

:repair
echo Wexos not found! starting repair
timeout /t 2 /nobreak >nul
if NOT exist wexos.iso (goto errr)
echo found iso file!
timeout /t 2 /nobreak >nul
echo extracting iso file...
set son=%cd%
cd C:\ProgramData
mkdir "WexStudios"
ren %son%/wexos.iso wexos.zip

powershell Expand-Archive wexos.zip -DestinationPath WexStudios


timeout /t 2 /nobreak >nul
echo extracted
del wexos.zip
timeout /t 1 /nobreak >nul
echo restarting...
timeout /t 2 /nobreak >nul
start launcher.bat
exit
:errr
echo repair failed: iso file not found plase install iso file
pause
goto close


:close