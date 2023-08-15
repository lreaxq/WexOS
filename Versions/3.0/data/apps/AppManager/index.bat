:appmanagerindex
set h=b
call prompt2 "Uygulama_Yoneticisi"
Batbox /g 65 40 /c 0x80 /d "Lutfen Yonetmek Istediginiz Programi Seciniz!"
Call Button 25 15 60 "%app[1]%" 50 15 60 "%app[2]%" 75 15 60 "%app[3]%" 100 15 60 "%app[4]%" 125 15 60 "%app[5]%" 25 20 60 "%app[6]%" 50 20 60 "%app[7]%" 75 20 60 "%app[8]%" 100 20 60 "%app[9]%" 125 20 60 "%app[10]%" 25 25 60 "%app[11]%" 50 25 60 "%app[12]%" 75 25 60 "%app[13]%" 100 25 60 "%app[14]%" 125 25 60 "%app[15]%" 25 30 60 "%app[16]%" 50 30 60 "%app[17]%" 75 30 60 "%app[18]%" 100 30 60 "%app[19]%" 125 30 60 "%app[20]%" 25 35 60 "%app[21]%" 50 35 60 "%app[22]%" 75 35 60 "%app[23]%" 100 35 60 "%app[24]%" 125 35 60 "%app[25]%" X _Box _hover
GetInput /M %_Box% /H 70
call getapps.bat
if %h%==a (goto close)
goto appmanagerindex
:close