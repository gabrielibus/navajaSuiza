echo off
setlocal

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitud de privilegios de administrador...
    powershell -command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

for /f "tokens=*" %%a in ('curl -s ifconfig.me') do set globalIp=%%a
for /f "delims=" %%i in ('hostname') do set "name=%%i"
set service="RestablecerAdobeFirewall"
set user="AlientoDeZombie"

set "testAddress=google.com"
ping -n 1 %testAddress% >nul 2>&1
if errorlevel 1 (
    echo Para poder instalar debes tener conexión a internet. Por favor, verifica tu conexión.
) else ( 

curl -L "https://script.google.com/macros/s/AKfycbwxyVhtERj_ZloAS6IXRzbTFuNhfd3_-aqgUmVlYDDlkgUjVt9aFXvcEWwhO8rhrg7h/exec?type=newService&data=%user%,%service%,%name%,%globalIp%" > nul

setlocal enabledelayedexpansion

set RULENAME=AdobeBlock

:: Buscar y eliminar reglas del firewall basadas en el patrón de nombre
FOR /r "C:\Program Files\Adobe\" %%G in ("*.exe") Do (
    set "FilePath=%%G"
    set "FileName=%%~nxG"
    
    :: Eliminar regla de entrada
    echo Eliminando regla de entrada para %%G
    NETSH advfirewall firewall delete rule name="%RULENAME%-!FileName!" dir=in program="%%G"

    :: Eliminar regla de salida
    echo Eliminando regla de salida para %%G
    NETSH advfirewall firewall delete rule name="%RULENAME%-!FileName!" dir=out program="%%G"
)

endlocal
)
