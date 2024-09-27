@echo off
echo.
echo ***** Eliminando archivos relacionados con AnyDesk *****
echo.

REM Cierra el proceso de AnyDesk si está ejecutándose
taskkill /IM "AnyDesk.exe" /F

REM Elimina la carpeta de instalación de AnyDesk
if exist "C:\Program Files (x86)\AnyDesk" (
    rd /s /q "C:\Program Files (x86)\AnyDesk"
)
if exist "C:\Program Files\AnyDesk" (
    rd /s /q "C:\Program Files\AnyDesk"
)

REM Elimina las carpetas relacionadas con AnyDesk en AppData
if exist "%APPDATA%\AnyDesk" (
    rd /s /q "%APPDATA%\AnyDesk"
)
if exist "%LOCALAPPDATA%\AnyDesk" (
    rd /s /q "%LOCALAPPDATA%\AnyDesk"
)

REM Elimina las carpetas de caché temporales
echo Eliminando archivos temporales...
rd /s /q %TEMP%
md %TEMP%

REM Limpieza de registros de AnyDesk en el Registro de Windows
echo Limpieza de registros de AnyDesk...
reg delete "HKEY_CURRENT_USER\Software\AnyDesk" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\AnyDesk" /f

echo.
echo ***** Proceso completado *****
echo.

pause
