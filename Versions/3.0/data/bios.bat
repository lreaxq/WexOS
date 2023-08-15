@echo off
@title Bios
color 30
:menu
color 30
set men = Ana menu
cls
echo Bios Versiyon= 2.2
echo Bios By WexOS Studio
Batbox /g 80 20 /c 9 /d ""
cmdMenuSel f870 "                                                                                 Genel Ayarlar" "                                                                               Guvenlik Ayarlari" "                                                                               Gelismis Ayarlari"
if %errorlevel% == 1 (goto menu1)
if %errorlevel% == 2 (goto menu2)
if %errorlevel% == 2 (goto menu3)

:menu1
color 30
cls
Batbox /g 80 20 /c 9 /d ""
cmdMenuSel f870 "                                                                              Hizli Acilis = kapali" "                                                                              Otomatik Bios = kapali" "                                                                                      Geri"
if %errorlevel% == 1 (goto fastboot)
if %errorlevel% == 2 (goto otobios)
if %errorlevel% == 2 (goto menu)
goto menu
:menu2
color 30
cls
Batbox /g 80 20 /c 9 /d ""
cmdMenuSel f870 "                                                                                 Guvenli Mod" "                                                                               Yazilim Bilgisi" "                                                                               Gelismis Ayarlari"
:menu3
color 30
cls
Batbox /g 80 20 /c 9 /d ""
cmdMenuSel f870 "                                                                                 Genel Ayarlar" "                                                                               Guvenlik Ayarlari" "                                                                               Gelismis Ayarlari"
goto menu
pause >nul
:exit
