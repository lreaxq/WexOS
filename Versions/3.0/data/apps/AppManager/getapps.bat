set managel=%errorlevel%
if %errorlevel% == 1 (goto app1)
if %errorlevel% == 2 (goto app2)
if %errorlevel% == 3 (goto app3)
if %errorlevel% == 4 (goto app4)
if %errorlevel% == 5 (goto app5)
if %errorlevel% == 6 (goto app6)
if %errorlevel% == 7 (goto app7)
if %errorlevel% == 8 (goto app8)
if %errorlevel% == 9 (goto app9)
if %errorlevel% == 10 (goto app10)
if %errorlevel% == 11 (goto app11)
if %errorlevel% == 12 (goto app12)
if %errorlevel% == 13 (goto app13)
if %errorlevel% == 14 (goto app14)
if %errorlevel% == 15 (goto app15)
if %errorlevel% == 16 (goto app16)
if %errorlevel% == 17 (goto app17)
if %errorlevel% == 18 (goto app18)
if %errorlevel% == 19 (goto app19)
if %errorlevel% == 20 (goto app20)
if %errorlevel% == 21 (goto app21)
if %errorlevel% == 22 (goto app22)
if %errorlevel% == 23 (goto app23)
if %errorlevel% == 24 (goto app24)
if %errorlevel% == 25 (goto app25)
set h=a
goto close

:manage
goto app%managel%
goto close

:app1
set mapp=%app[1]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[1]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[1]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[1]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[1]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
   Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app2
set mapp=%app[2]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[2]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[2]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu"
set /a appsatirr="31" 
if not exist ../%app[2]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[2]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app3
set mapp=%app[3]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[3]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[3]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[3]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[3]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app4
set mapp=%app[4]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[4]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[4]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[4]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[4]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app5
set mapp=%app[5]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[5]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[5]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu"
set /a appsatirr="31" 
if not exist ../%app[5]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[5]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1") 
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app6
set mapp=%app[6]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[6]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[6]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[6]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[6]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app7
set mapp=%app[7]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[7]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[7]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[7]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[7]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app8
set mapp=%app[8]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[8]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[8]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[8]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[8]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app9
set mapp=%app[9]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[9]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[9]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[9]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[9]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app10
set mapp=%app[10]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[10]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[10]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[10]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[10]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app11
set mapp=%app[11]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[11]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[11]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[11]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[11]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app12
set mapp=%app[12]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[12]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[12]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[12]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[12]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app13
set mapp=%app[13]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[13]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[13]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[13]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[13]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app14
set mapp=%app[14]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[14]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[14]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[14]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[14]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app15
set mapp=%app[15]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[15]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[15]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[15]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[15]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app16
set mapp=%app[16]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[16]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[16]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[16]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[16]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app17
set mapp=%app[17]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[17]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[17]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[17]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[17]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app18
set mapp=%app[18]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[18]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[18]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[18]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[18]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app19
set mapp=%app[19]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[19]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[19]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[19]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[19]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app20
set mapp=%app[20]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[20]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[20]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[20]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[20]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app21
set mapp=%app[21]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[21]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[21]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[21]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[21]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app22
set mapp=%app[22]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[22]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[22]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[22]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[22]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app23
set mapp=%app[23]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[23]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[23]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[23]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[23]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app24
set mapp=%app[23]%
if not defined mapp (goto apperr3)
call c_3.bat
cd ..
cd %app[24]%
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[24]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[24]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[24]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:app25
call c_3.bat
cd ..
cd %app[25]%
set mapp=%app[25]%
if not defined mapp (goto apperr3)
call appinfo.bat
cd ..
cd AppManager
call prompt2.bat "%app[25]%_Programi_Yonetiliyor"
call box.bat  21 14 15 70 0 - 80
Batbox /g 38 15 /c 0x80 /d "AppInfo Bilgisi"
Batbox /g 22 16 /c 0x80 /d "Uygulama Adi: %app_name%"
Batbox /g 22 17 /c 0x80 /d "Uygulama Aciklamasi: %app_desc%"
Batbox /g 22 18 /c 0x80 /d "Uygulama Surumu: %app_ver%"
Batbox /g 22 19 /c 0x80 /d "Gerekli Wexos Surumu: %app_wver%"
call box.bat  93 14 15 55 0 - 80
Batbox /g 114 15 /c 0x80 /d "Gerekli Dosyalar"
Batbox /g 94 16 /c 0x80 /d "%app_file1%"
Batbox /g 94 17 /c 0x80 /d "%app_file2%"
Batbox /g 94 18 /c 0x80 /d "%app_file3%"
Batbox /g 94 19 /c 0x80 /d "%app_file4%"
Batbox /g 94 20 /c 0x80 /d "%app_file5%"
Batbox /g 94 21 /c 0x80 /d "%app_file6%"
Batbox /g 94 22 /c 0x80 /d "%app_file7%"
Batbox /g 94 23 /c 0x80 /d "%app_file8%"
Batbox /g 94 24 /c 0x80 /d "%app_file9%"
Batbox /g 94 25 /c 0x80 /d "%app_file10%"
Batbox /g 94 26 /c 0x80 /d "%app_file11%"
Batbox /g 94 27 /c 0x80 /d "%app_file12%"
Batbox /g 94 28 /c 0x80 /d "%app_file13%"
Batbox /g 94 29 /c 0x80 /d "%app_file14%"
Batbox /g 94 30 /c 0x80 /d "%app_file15%"
call box.bat 21 29 10 127 0 - 80
Batbox /g 80 30 /c 0x80 /d "Hata Gunlugu" 
set /a appsatirr="31" 
if not exist ../%app[25]%/index.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program index dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
if not exist ../%app[25]%/appinfo.bat (
   Batbox /g 22 %appsatirr% /c 0x84 /d "Program appinfo dosyasi bulunamiyor"
   set /a appsatirr="%appsatirr%+1")
Call Button 60 39 60 "Kaldir" 81 39 60 "Onar" 100 39 60 "Guncelle" X _Box _hover
GetInput /M %_Box% /H 70
   if %errorlevel%==1 (goto appdelete)
   if %errorlevel%==2 (goto apprepair)
   if %errorlevel%==3 (goto appupdate)
goto close
:apperr1
call errprompt.bat "Hata"
Batbox /g 61 21 /c 0x80 /d "Hata bu uygulama dosyalari eksik veya bozuk!"
Batbox /g 61 22 /c 0x80 /d "Uygulamayi guncelleyin veya kaldirin."
Batbox /g 1 40 /c 0x8 /d "Q - Kapat"
choice /c q >nul
if %errorlevel% == 1 (goto close)
goto close
:apperr2
call errprompt.bat "Hata"
Batbox /g 61 21 /c 0x80 /d "Hata bu uygulama wexos icin uyumsuz!"
Batbox /g 61 22 /c 0x80 /d "Uygulamayi kaldirin."
Batbox /g 1 40 /c 0x8 /d "Q - Kapat"
choice /c q >nul
if %errorlevel% == 1 (goto close)
goto close
:apperr3
call index.bat
goto close
:appdelete
if not exist ../%mapp%/appinfo.bat (goto delnexx)
if "%app_systemapp%" == "yes" (
   goto nexxx
   )
   :delnexx
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 55 24 /c 0x80 /d "%mapp% Uygulamasini Kaldirmak Istediginize Eminmisiniz?"
Call Button 70 27 60 "Evet" 85 27 60 "Iptal" X _Box _hover
GetInput /M %_Box% /H 70
if %errorlevel%==2 (goto manage)
goto appdelete2
:nexxx
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 60 24 /c 0x84 /d "%mapp% Bir Sistem Uygulamasidir Kaldirilmaz!"
Call Button 80 27 60 "Geri" X _Box _hover
GetInput /M %_Box% /H 70
goto manage
goto close
:appdelete2
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 60 24 /c 0x80 /d "%mapp% Kaldiriliyor..."
cd ..
del /Q /F %mapp%
@RD /S /Q "%mapp%"
cd AppManager
timeout /t 2 /nobreak >nul
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 65 24 /c 0x80 /d "%mapp% Uygulamasi Basariyla Kaldirildi!"
Call Button 80 27 60 "Kapat" X _Box _hover
GetInput /M %_Box% /H 70
set h==a
goto close
:apprepair
if exist ../%mapp%/repair.bat (goto apprepair2)
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 55 24 /c 0x80 /d "%mapp% Uygulamasi Onarma Ozelligini Desteklemiyor"
Call Button 80 27 60 "Geri" X _Box _hover
GetInput /M %_Box% /H 70
goto manage
:apprepair2
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 55 24 /c 0x80 /d "%mapp% Uygulamasini Onarmak Istediginize Eminmisiniz?"
Call Button 70 27 60 "Evet" 85 27 60 "Iptal" X _Box _hover
GetInput /M %_Box% /H 70
if %errorlevel%==2 (goto manage)
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 60 24 /c 0x80 /d "%mapp% Onariliyor..."
cd ../%mapp%
call repair.bat
cd ../AppManager
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 65 24 /c 0x80 /d "Uygulama Basariyla Onarildi"
Call Button 80 27 60 "Geri" X _Box _hover
GetInput /M %_Box% /H 70
goto manage
goto close
:appupdate
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 70 24 /c 0x80 /d "Guncellemeler Denetleniyor..."
timeout /t 2 /nobreak >nul
call prompt2.bat "%mapp%_Programi_Yonetiliyor"
Batbox /g 72 24 /c 0x80 /d "Guncelleme bulunamadi"
Call Button 80 27 60 "Geri" X _Box _hover
GetInput /M %_Box% /H 70
goto manage
goto close

:close
set app_name=
set app_desc=
set app_ver=
set app_wver=
set app_file1=
set app_file2=
set app_file3=
set app_file4=
set app_file5=
set app_file6=
set app_file7=
set app_file8=
set app_file9=
set app_file10=
set app_file11=
set app_file12=
set app_file13=
set app_file14=
set app_file15=
set app_file16=


