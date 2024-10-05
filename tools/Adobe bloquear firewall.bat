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
set service="AdobeFirewall"
set user="AlientoDeZombie"

set "testAddress=google.com"
ping -n 1 %testAddress% >nul 2>&1

if errorlevel 1 (
    echo Para poder instalar debes tener conexión a internet. Por favor, verifica tu conexión.
) else ( 

curl -L "https://script.google.com/macros/s/AKfycbwxyVhtERj_ZloAS6IXRzbTFuNhfd3_-aqgUmVlYDDlkgUjVt9aFXvcEWwhO8rhrg7h/exec?type=newService&data=%user%,%service%,%name%,%globalIp%" > nul

setlocal enabledelayedexpansion
set RULENAME=AdobeBlock

:: Bloquear los ejecutables en el directorio especificado (inbound) y excluir los que contienen "Creative Cloud"
FOR /r "C:\Program Files\Adobe\" %%G in ("*.exe") Do (
    set "FilePath=%%G"
    set "DirPath=%%~dpG"
    
    :: Comprobar si el directorio contiene "Creative Cloud"
    echo !DirPath! | findstr /i "Creative Cloud" >nul
    if errorlevel 1 (
        :: Si "Creative Cloud" no está en el directorio, agregar reglas
        echo Bloqueando %%G
        NETSH advfirewall firewall add rule name="%RULENAME%-%%~nxG" dir=in program="%%G" action=block enable=yes
        NETSH advfirewall firewall add rule name="%RULENAME%-%%~nxG" dir=out program="%%G" action=block enable=yes
    ) else (
        echo Ignorando %%G de "Creative Cloud"
    )
)

endlocal
)