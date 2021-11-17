echo off

:: Este script permite instalar Windows 11 sin checkear RAM, SecureBoot y chip TPM

echo agregando las claves de registro necesarias: 
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig
echo KEY LabConfig creada ... ok

reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /t REG_DWORD /d 1
echo Eliminando comprobación de la memoria RAM ... ok

reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /t REG_DWORD /d 1
echo Eliminando comprobación del chip TPM ...

reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /t REG_DWORD /d 1
echo Eliminando comprobación del Secure Boot ... ok

pause
