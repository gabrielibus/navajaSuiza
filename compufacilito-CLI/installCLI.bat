echo off
echo COMPUFACILITO CLI installer --> www.compufacilito.com - 2022

:: VERIFICO INICIO COMO ADMINISTRADOR ========================================
fsutil dirty query %systemdrive%  >nul 2>&1 || (
    echo ADMINISTRADOR pause
    exit
)
::===========================================================================

:: INSTALL CHOCO - 7zip

if not exist "\programData\chocolatey" @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" && choco install 7zip -y -a

set api_url=https://script.google.com/macros/s/AKfycbyNg9CZdSYiXcaNa-FeSK3An8lNTUFCQDHG2BVgn7_0yPJijzwswhqZG0QqM9IjO-8HcQ/exec
set endpoint="?args=install,compufacilito"

:: CREACIÓN DE CARPETA DE INSTALACIÓN
set installation_path=C:\tmp_cf

if not exist %installation_path% (
    mkdir %installation_path%
    cd %installation_path%

    :: REGISTRO EN VARIABLES DE ENTORNO
    setx /M path "%PATH%;%installation_path%\compufacilito"

    :: DESCARGA DEL EJECUTABLE
    curl -L "%api_url%%endpoint%" > start.bat
    start.bat
    echo:
    echo Armado y listo!
    pause
) ELSE (
    echo cf ya ha sido instalado
    pause
)



