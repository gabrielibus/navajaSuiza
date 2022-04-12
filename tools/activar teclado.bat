echo off
echo Este script crea los atajos de teclado de compuFacilito

SET path="%homepath%\AppData\Local\Microsoft\PowerToys\Keyboard Manager"

cd %path%
:: default
start curl -O "https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/default.json"

:: settings 
start curl -O "https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/settings.json"

echo Archivos descargados correctametne

taskkill /IM /F powerToys.exe
echo Reiniciando poweeToys

start "C:\Program Files\PowerToys\powerToys.exe"
echo finalizado
pause