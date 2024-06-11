# MI NAVAJA SUIZA - herramientas informáticas a la mano 

# 🧼 Desinstalar Office, reinstalar 2019 y activar
```
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.bat && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && uninstall.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/office365-x64.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/install.bat && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && install.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd && explorer .
```

## Compufacilito CLI
cd %userprofile% && curl https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/compufacilito-CLI/installCLI.bat -O && installCLI.bat

## CHOCO - Instalador de paquetes para Windows

### Choco para CMD:
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

### Choco install PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

### Instalar office desde archivo
<hr>
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/office365-x64.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/install.bat && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && install.bat
<hr>

### Limpiador windows 
curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/tools/OOAPB.exe && OOAPG.exe

## Comandos rápidos para instalar software con CHOCO

### Office 2019 PRO PLUS spanish

choco install office2019proplus --params '/Language:es-es'

### Office STANDAR Volume 2019 mínimo x64
choco install microsoft-office-deployment --params="'/Language:es-es /64bit /Product:Standard2019Volume /Exclude:Publisher,Outlook,Lync,Groove,Access'" --yes --all

## ENLACES RÁPIDOS
### DESCATIVAR TELEMETRÍA EN WINDOWS   
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/desactivarTelemetria.bat   
### ACTIVAR WIN Y OFFICE   
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd
### Activar método teclado JKL:
https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/activar%20teclado.bat

### Office Project Pro 2019
choco install microsoft-office-deployment --params="'/Language:es-es /64bit /Product:ProjectPro2019Volume'" --yes --all

### Instalación de todos los básicos
choco install zoom 7zip googlechrome anydesk.install adobereader vlc --yes autohotkey pandafreeantivirus --ignore-checksum --yes && choco uninstall autohotkey --force --yes --all

-GOOGLE DRIVE: choco install google-drive-file-stream  
-ZOOM: choco install zoom    
-TEAMS: choco install microsoft-teams     
-CHROME: choco install googlechrome    
-PANDA ANTIVIRUS: choco install pandafreeantivirus --ignore-checksum    
-7ZIP: choco install 7zip    
-FURMARK: choco install furmark    
-CRYSTAL DISK INFO: choco install crystaldiskinfo  
-CRYSTAL DISK MARK: choco install crystaldiskmark  
-MALWAREBYTES: choco install malawarebytes    
-ADWCLEANER: choco install adwcleaner  
-AUTOCAD: choco install autocad  
___  


### DESINSTALAR office desde archivo
Este comando permite desinstalar la mayoría de las versiones de office desde la línea de comandos.
<hr>
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.bat && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && uninstall.bat
<hr>

### REVISIÓN VIRUS EN WINDOWS
cd C:/ProgramData/Microsoft/Windows Defender/Platform/4.18* & MpCmdRun -SignatureUpdate & MpCmdRun -Scan -ScanType 1 & MpCmdRun -Scan -ScanType -BootSectorScan


