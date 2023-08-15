@echo off
:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"
CSCRIPT //nologo "%TempVBSFile%"
set /p version=<config/version.wexdat
set /p dversion=<config/dversion.wexdat
timeout /t 2 /nobreak >nul
echo OK
timeout /t 2 /nobreak >nul
echo OK
timeout /t 2 /nobreak >nul
:boot
@title WexOS
color 30
cls
Batbox /g 80 20 /d "WexOS"
Batbox /g 10 40 /c 9 /d "Press E to start wex"
Batbox /g 10 42 /c 9 /d "Press X to bios"
choice /t 1 /c ex /d e >nul
if %errorlevel% == 1 goto baslat
if %errorlevel% == 2 goto bios
pause >nul
:err-1
start err.bat
exit
:bios
cls
color 00
timeout /t 2 /nobreak >nul
echo Bios
timeout /t 2 /nobreak >nul
echo Bios
timeout /t 2 /nobreak >nul
cls
Batbox /g 80 20 /c 9 /d "Bios By WexOS Studio"
timeout /t 3 >nul
cls
echo bios bu surumde bulunmamaktatir
pause
goto boot
start "" /MAX "cmd /K bios.bat"
exit

:baslat
color 90
cls
goto auth
timeout /t /nobreak 2 >nul
exit
:auth
:loading
color 30
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                               I8,        8        ,8I                           ,ad8888ba,     ad88888ba   
echo                                               `8b       d8b       d8'                          d8"'    `"8b   d8"     "8b  
echo                                                "8,     ,8"8,     ,8"                          d8'        `8b  Y8,          
echo                                                 Y8     8P Y8     8P   ,adPPYba,  8b,     ,d8  88          88  `Y8aaaaa,    
echo                                                 `8b   d8' `8b   d8'  a8P_____88   `Y8, ,8P'   88          88    `"""""8b,  
echo                                                  `8a a8'   `8a a8'   8PP"""""""     )888(     Y8,        ,8P          `8b  
echo                                                   `8a8'     `8a8'    "8b,   ,aa   ,d8" "8b,    Y8a.    .a8P   Y8a     a8P  
echo                                                    `8'       `8'      `"Ybbd8"'  8P'     `Y8    `"Y8888Y"'     "Y88888P"                                                                                                                                                     
echo                                                                            Powered by wexos studio                              
Batbox /g 54 40 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 54 41 /c 0 /d "XX"
Batbox /g 54 42 /c 0 /d "XX"
Batbox /g 55  42 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 41 /c 0 /d "XX"
Batbox /g 56 41 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 56 41 /c 0x77 /d "X"
Batbox /g 0 43 /c 9 /d ""
timeout /t 2 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXXXXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 2 /nobreak>nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 1 /nobreak >nul
Batbox /g 56 41 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 0 43 /c 9 /d ""
timeout /t 3 /nobreak >nul

:login
if not EXIST users/1/username.dat (goto newuser)

set /p username=<users\1\username.dat
set /p password=<users\1\password.dat

@echo off
color 30
cls
Batbox /g 54 19 /c 0 /d "XXXXXXXXXXX"
Batbox /g 97 19 /c 0 /d "XXXXXXXXXXXX"
Batbox /g 54 18 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 18 /c 0x44 /d "XX"
Batbox /g 54 20 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 54 21 /c 0x88 /d "XX"
Batbox /g 54 22 /c 0x88 /d "XX"
Batbox /g 55  22 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 21 /c 0x88 /d "XX"
Batbox /g 56 21 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 19 /c 0x7 /d "Merhaba %username% Lutfen Parolani Gir"
Batbox /g 56 21 /c 0x70 /d ""
set "file=sounds/startup.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*300) >sound.vbs
cscript.exe //nologo sound.vbs
set/p "gsifre="
if NOT %gsifre%==%password% (goto FAIL)
:OK
color 30
cls
call prompt.bat "Logining"
Batbox /g 67 18 /c 0x80 /d "WexOS Sizin Icin En Iyi Hizmeti Vermektedir."
Batbox /g 69 28 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 69 29 /c 0x80 /d "Giris Yapiliyor..."
:next
timeout /t 1 /nobreak >nul
Batbox /g 69 28 /c 0x33 /d "XXXXXXXXXX"
timeout /t 1 /nobreak >nul
Batbox /g 69 28 /c 0x33 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
timeout /t 1 /nobreak >nul
Batbox /g 69 28 /c 0x33 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
timeout /t 1 /nobreak >nul
Batbox /g 0 0 /c 0x07 /d ""
color 30
cls
goto desk
exit
:newuser
cls
color 30
Batbox /g 54 19 /c 0 /d "XXXXXXXXXXX"
Batbox /g 97 19 /c 0 /d "XXXXXXXXXXXX"
Batbox /g 54 18 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 18 /c 0x44 /d "XX"
Batbox /g 54 20 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 54 21 /c 0x88 /d "XX"
Batbox /g 54 22 /c 0x88 /d "XX"
Batbox /g 55  22 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 21 /c 0x88 /d "XX"
Batbox /g 54 23 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 56 22 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 54 21 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 54 23 /c 0x88 /d "XX"
Batbox /g 54 24 /c 0x88 /d "XX"
Batbox /g 54 25 /c 0x88 /d "XX"
Batbox /g 54 26 /c 0x88 /d "XX"
Batbox /g 107 23 /c 0x88 /d "XX"
Batbox /g 107 24 /c 0x88 /d "XX"
Batbox /g 107 25 /c 0x88 /d "XX"
Batbox /g 107 26 /c 0x88 /d "XX"
Batbox /g 56 23 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 56 24 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 56 25 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 56 26 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 75 21 /c 0x80 /d "Kullanici Adi"
Batbox /g 78 24 /c 0x80 /d "Parola"
Batbox /g 1 40 /c 0x8 /d "Enter - Devam"
Batbox /g 65 19 /c 0x7 /d "        Yeni Hesap Olustur        "
Batbox /g 56 22 /c 0x70 /d ""
set /p nkulad=
Batbox /g 56 25 /c 0x70 /d ""
set /p nsifre=
if %nsifre% == 123 (goto nerr)
if %nsifre% == 1 (goto nerr)
if %nsifre% == 12 (goto nerr)
if %nsifre% == 1234 (goto nerr)
if %nsifre% == 12345 (goto nerr)
if %nsifre% == 123456 (goto nerr)
if %nsifre% == asd (goto nerr)
if %nsifre% == %nkulad% (goto nerr)
if %nsifre% == qwe (goto nerr)
if %nsifre% == abc (goto nerr)
if %nsifre% == abcd (goto nerr)

timeout /t 1 /nobreak >nul
cd users
if not exist "1" (
  mkdir "1"
  set /a nuss=1
  goto nnext
  )
if not exist "2" (
  mkdir "2"
  set /a nuss=2
  goto nnext
  )
if not exist "3" (
  mkdir "3"
  set /a nuss=3
  goto nnext
  )
if not exist "4" (
  mkdir "4"
  set /a nuss=4
  goto nnext
  )
if not exist "5" (
  mkdir "5"
  set /a nuss=5
  goto nnext
  ) else (goto nerr2)
:nnext
cd %nuss%
@echo %nkulad% >> "username.dat"
@echo %nsifre% >> "password.dat"
cd ..
cd ..
goto login
exit
:nerr
cls
color 30
Batbox /g 65 19 /c 0x37 /d "Parolan %nsifre% Olamaz!"
timeout /t 4 /nobreak >nul
goto newuser
exit
:FAIL
cls
color 30
cls
Batbox /g 54 19 /c 0 /d "XXXXXXXXXXX"
Batbox /g 97 19 /c 0 /d "XXXXXXXXXXXX"
Batbox /g 54 18 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 18 /c 0x44 /d "XX"
Batbox /g 54 20 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 54 21 /c 0x88 /d "XX"
Batbox /g 54 22 /c 0x88 /d "XX"
Batbox /g 55  22 /c 0x88 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 107 21 /c 0x88 /d "XX"
Batbox /g 56 21 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 75 20 /c 0x84 /d "Hatali Parola"
Batbox /g 65 19 /c 0x7 /d "Merhaba %username% Lutfen Parolani Gir"
Batbox /g 56 21 /c 0x70 /d ""
set "file=sounds/error.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*300) >sound.vbs
cscript.exe //nologo sound.vbs
set/p "gsifre="
if NOT %gsifre%==%password% (goto :FAIL)
cls
goto desk
exit
:desk
call box.bat  0 0 5 50 0 - 30
call box.bat  146 1 4 16 0 - 30
Batbox /g 148 2 /c 0x37 /d "%time%"
Batbox /g 147 3 /c 0x37 /d "%date%"
Batbox /g 145 45 /c 0x37 /d "WexOS %dversion%"
Call Button 1 1 a0 "Masaustu" 13 1 a0 "Programlar" 27 1 a0 "Calistir" 39 1 a0 "Yardim" X _Box _hover
timeout /t 2 /nobreak >nul
call notification.bat "Hosgeldin"
Batbox /g 110 6 /c 0x10 /d "Bizi tercih ettiginiz icin tesekkurler."
timeout /t 4 /nobreak >nul
goto desktop
:desktop
color 30
cls
title WexOS
call box.bat  0 0 5 50 0 - 30
call box.bat  146 1 4 16 0 - 30
Batbox /g 148 2 /c 0x37 /d "%time%"
Batbox /g 147 3 /c 0x37 /d "%date%"
Batbox /g 145 45 /c 0x37 /d "WexOS %dversion%"
Call Button 1 1 a0 "Masaustu" 13 1 a0 "Programlar" 27 1 a0 "Calistir" 39 1 a0 "Yardim" X _Box _hover
GetInput /M %_Box% /H 70
if %errorlevel% == 1 (goto desktop)
if %errorlevel% == 2 (call apps.bat)
if %errorlevel% == 3 (call run.bat)
if %errorlevel% == 4 (call help.bat)
if %errorlevel% == 5 (call wexstore.bat)
goto desktop