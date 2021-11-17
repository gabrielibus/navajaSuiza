@echo off
REM      BATCH FILE CREATED BY CHARLES DE HAVILLAND 20/02/2012
cls
If "%1"=="" GOTO :norulename
SET RULENAME=%1
ECHO Zentinels: Quieres bloquear todas las conexiones en el firewall para los archivos *.exe con el nombre "%RULENAME%" ?
ECHO.
ECHO.

pause
Echo.
FOR /r %%G in ("*.exe") Do (@echo %%G
NETSH advfirewall firewall add rule name="%RULENAME%-%%~nxG" dir=in program="%%G" action="block" enable="yes")
FOR /r %%G in ("*.exe") Do (@echo %%G
NETSH advfirewall firewall add rule name="%RULENAME%-%%~nxG" dir=out program="%%G" action="block" enable="yes")
Echo.
Echo done.
Echo.
GOTO :Finish
:norulename
Echo Error! - No has especificado un nombre para la regla - Addfwrs "Nombre del bloqueo"
Echo.
:Finish
Echo Bloqueo finalizado...