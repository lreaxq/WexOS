@echo off
color 90
cls
echo.
echo.
echo.
echo Sistem bir hatadan dolayi kapatilmak zorunda kaldi 
echo.
echo bu sorun devam ederse yetkililerle iletisime geciniz...
echo.
echo.
set "file=sounds/error.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*50) >sound.vbs
cscript.exe //nologo sound.vbs
timeout /t 10 /nobreak
start wexos.bat