echo off
echo COMPUFACILITO CLI installer --> www.compufacilito.com - 2022

:: VERIFICO INICIO COMO ADMINISTRADOR ========================================
fsutil dirty query %systemdrive%  >nul 2>&1 || (
    echo ADMINISTRADOR pause
    exit
)
::===========================================================================

:: INSTALL CHOCO - 7zip
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" && choco install 7zip -y -a

:: CREACIÓN DE CARPETA DE INSTALACIÓN
set installation_path=%userprofile%\Documents\cf_downloader_tmp
mkdir %installation_path%
cd %installation_path%

:: REGISTRO EN VARIABLES DE ENTORNO
setx /M path "%PATH%;%installation_path%\compufacilito"

:: DESCARGA DEL EJECUTABLE
set api_url=https://script.google.com/macros/s/AKfycbyNg9CZdSYiXcaNa-FeSK3An8lNTUFCQDHG2BVgn7_0yPJijzwswhqZG0QqM9IjO-8HcQ/exec
set endpoint="?args=install,compufacilito"
curl -L "%api_url%%endpoint%" > start.bat
start.bat
echo:
echo Armado y listo!
pause
