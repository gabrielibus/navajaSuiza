echo off
echo Reseteando permisos de carpeta protegida en Windows

icacls D:\Users\User\* /T  /L  /Q /C /RESET

pause
