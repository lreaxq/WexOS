set t_renk=0x07
:main
set t_satir=19
set t_sayfa=1
Batbox /g 65 15 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 16 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 89 16 /c 0x70 /d "Terminal"
Batbox /g 118 15 /c 0x44 /d "XX"
Batbox /g 65 17 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 18 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 19 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 20 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 21 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 22 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 23 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 24 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 25 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 26 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 27 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 28 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 29 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 30 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 17 /c 07 /d "WexOS Studio [Version 1.0]"
Batbox /g 65 18 /c 07 /d "(c) WexOS Corporation. Tum haklari saklidir."
goto typeof
:nextscrool
set /a t_sayfa="%t_sayfa%+1"
set t_satir=18
Batbox /g 65 15 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 16 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 84 16 /c 0x70 /d "Terminal Sayfa %t_sayfa%"
Batbox /g 118 15 /c 0x44 /d "XX"
Batbox /g 65 17 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 18 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 19 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 20 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 21 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 22 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 23 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 24 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 25 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 26 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 27 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 28 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 29 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 30 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
:typeof
if %t_satir%==30 (goto nextscrool)
if %t_satir%==31 (goto nextscrool)
if %t_satir%==32 (goto nextscrool)
if %t_satir%==33 (goto nextscrool)
if %t_satir%==34 (goto nextscrool)
if %t_satir%==35 (goto nextscrool)


Batbox /g 65 %t_satir% /c %t_renk% /d ">"

set /p terminal_type=
set /a t_satir="%t_satir%+1"
if %terminal_type%==start (goto t_start)
if %terminal_type%==cls (goto t_cls)
if %terminal_type%==color (goto t_color)
if %terminal_type%==wexver (goto t_wexver)
if %terminal_type%==help (goto t_help)
if %terminal_type%==call (goto t_call)
if %terminal_type%==close (goto close) else (goto notfound)
goto typeof
:notfound
Batbox /g 65 %t_satir% /c %t_renk% /d "Bulunamadi"
set /a t_satir="%t_satir%+1"
goto typeof

:t_start
set /a t_satir1="%t_satir%-1"
Batbox /g 65 %t_satir1% /c %t_renk% /d "start>"
set /p start_1=
if not exist %start_1% (goto start-err)
start %start_1%
goto typeof
:start-err
set /a t_sayfa="%t_sayfa%+1"
Batbox /g 65 %t_satir1% /c %t_renk% /d "%start_1% Bulunamiyor"
goto typeof

:t_cls
Batbox /g 65 17 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 18 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 19 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 20 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 21 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 22 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 23 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 24 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 25 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 26 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 27 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 28 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 29 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 65 30 /c 0 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
set t_satir=18
goto typeof

:t_color
set /a t_satir1="%t_satir%-1"
Batbox /g 65 %t_satir1% /c %t_renk% /d "color>"
set /p color_1=
if %color_1%==mavi (set t_renk=0x01)
if %color_1%==yesil (set t_renk=0x02)
if %color_1%==kirmizi (set t_renk=0x04)
if %color_1%==aqua (set t_renk=0x03)
if %color_1%==mor (set t_renk=0x05)
if %color_1%==sari (set t_renk=0x06)
if %color_1%==beyaz (set t_renk=0x07)
if %color_1%==gri (set t_renk=0x08)
goto typeof
:t_color1
Batbox /g 65 %t_satir% /c %t_renk% /d "Renk kodu gecersiz veya yanlis ornek: mavi"
set /a t_satir="%t_satir%+1"
goto typeof

:t_wexver
Batbox /g 65 %t_satir% /c %t_renk% /d "WexOS 3.0 Beta Version"
set /a t_satir="%t_satir%+1"
goto typeof

:t_help
Batbox /g 65 %t_satir% /c %t_renk% /d "color - terminal yazi rengi degistirir"
set /a t_satir="%t_satir%+1"
Batbox /g 65 %t_satir% /c %t_renk% /d "wexver - wex surumu bilgisi verir"
set /a t_satir="%t_satir%+1"
Batbox /g 65 %t_satir% /c %t_renk% /d "cls - terminal uzerindeki yazilari temizler"
set /a t_satir="%t_satir%+1"
Batbox /g 65 %t_satir% /c %t_renk% /d "call - wex icindeki uygulamalari calistirir"
set /a t_satir="%t_satir%+1"

goto typeof

:t_call
set /a t_satir="%t_satir%-1"
Batbox /g 65 %t_satir% /c %t_renk% /d "call>"
set /p call_1=
set /a t_satir="%t_satir%+1"
Batbox /g 65 %t_satir% /c %t_renk% /d "%call_1% bilgisi aliniyor..."
if not exist apps/%call_1%/index.bat (goto t_call_err1)
if not exist apps/%call_1%/appinfo.bat (goto t_call_err2)
set back=%cd%
cd apps/%call_1%
call appinfo.bat
Batbox /g 65 %t_satir% /c %t_renk% /d "Ismi: %name%, Aciklamasi: %desc%, Versiyon: %ver%"
set /a t_satir="%t_satir%+1"
call index.bat 
cd %back%
goto close
:t_call_err1
cd %back%
set /a t_satir="%t_satir%+1"
Batbox /g 65 %t_satir% /c %t_renk% /d "Uygulama bulunamiyor"
set /a t_satir="%t_satir%+1"
goto typeof

:t_call_err2
cd %back%
set /a t_satir="%t_satir%+1"
Batbox /g 65 %t_satir% /c %t_renk% /d "Uygulama hatali veya bozuk"
set /a t_satir="%t_satir%+1"
goto typeof

goto typeof
:close