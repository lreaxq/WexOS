goto st
:1
call prompt.bat "Yardim"
Batbox /g 65 18 /c 0x87 /d "Lutfen Alttaki Formu Doldurunuz"
Batbox /g 85 21 /c 0x87 /d "Hata Konusu"
Batbox /g 74 22 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 82 24 /c 0x87 /d "Hata Aciklamasi"
Batbox /g 74 25 /c 0x77 /d "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
Batbox /g 74 22 /c 0x70 /d ""
set /p "h_baslik="
Batbox /g 74 25 /c 0x70 /d ""
set /p "h_aciklama="

call prompt.bat "Yardim"
Batbox /g 85 21 /c 0x87 /d "%h_baslik%"
Batbox /g 85 24 /c 0x87 /d "%h_aciklama%"
Batbox /g 85 27 /c 0x87 /d "Bu alan yapim asamasindadir"
timeout /t 3
goto st

:2
call prompt2.bat "Kullanim_Kulavuzu"
Batbox /g 25 13 /c 0x80 /d "1 - Kisa Yol Tuslari"
Batbox /g 20 15 /c 0x80 /d "Q - bazi sekmelerde Q tusu ile sekmeyi kapatabilirsiniz."
Batbox /g 20 17 /c 0x80 /d "Close - yazi yazilabilen yerlerde Q tusu calismaz bu yuzden yazi yazilan alana close yazip enter basmaniz yeterli olucaktir."
Batbox /g 22 20 /c 0x80 /d "Bilgi - Sol altta genelde hangi tus ne ise yariyor yazar yani kafaniz karisirsa sol alta bakin"

Batbox /g 25 25 /c 0x80 /d "2 - Terminal Kullanimi Ve Kodlar"
Batbox /g 20 27 /c 0x80 /d "Terminalda bosluk kullanilmaz hatalarla kapanmalara sebep olur!"
Batbox /g 20 30 /c 0x80 /d "color - terminal yazi rengi degistirir color yazip enter basilir ve renk kodu girersiniz"



Batbox /g 1 41 /c 0x33 /d "Secenekler: 1,2"
Batbox /g 1 40 /c 0x8 /d "Q - Kapat"
choice /c q >nul
if %errorlevel% == 1 (
   call c_3.bat
   goto st
   )




goto kapat

:st
call prompt.bat "Yardim"
Batbox /g 65 19 /c 0x87 /d "Sana Nasil Yardimci Olabiliriz?"
Batbox /g 65 22 /c 0x87 /d "1 - Sistemimde Hata Raporu Gonder"
Batbox /g 65 24 /c 0x87 /d "2 - Kullanim Kulavuzu"


Batbox /g 1 40 /c 0x8 /d "Q - Kapat"
Batbox /g 1 41 /c 0x8 /d "Secenekler: 1,2"
choice /c q12 >nul
if %errorlevel% == 1 (goto kapat)
if %errorlevel% == 2 (goto 1)
if %errorlevel% == 3 (goto 2)
goto kapat
:kapat