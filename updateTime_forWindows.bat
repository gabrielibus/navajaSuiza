@Echo off
echo Este script actualiza la hora de Windows automáticamente (necesita conexión a internet)

net start W32Time
w32tm /resync /force

echo Hora actualizada correctamente
echo www.compufacilito.com
pause
