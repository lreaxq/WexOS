:main
@echo off
call prompt1.bat "Calistir"
Batbox /g 74 19 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
:type
Batbox /g 1 40 /c 0x8 /d "Close - Kapat"
Batbox /g 74 19 /c 0x70 /d ""
set /p run_type=
goto sorgu
pause >nul
:notfound
call prompt1.bat "Calistir"
Batbox /g 1 40 /c 0x8 /d "Close - Kapat"
Batbox /g 74 19 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 80 18 /c 0x84 /d "Bulunamadi"
Batbox /g 74 19 /c 0x70 /d ""
set /p run_type=
goto sorgu
pause >nul

:sorgu
if %run_type%==terminal (goto terminal)
if %run_type%==links (goto links)
if %run_type%==close (goto close) else (goto notfound)


pause >nul
:terminal
call terminal.bat
goto close
:links
cls
call links www.google.com
goto close



:close