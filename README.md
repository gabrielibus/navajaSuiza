# MI NAVAJA SUIZA - herramientas informáticas a la mano 

## CHOCO - Instalador de paquetes para Windows

### Choco para CMD:
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

### Choco install PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

## Comandos rápidos para instalar software con CHOCO

### Office 2019 PRO PLUS spanish
choco install office2019proplus --params '/Language:es-es'

### Office STANDAR Volume 2019 mínimo x64
choco install microsoft-office-deployment --params="'/Language:es-es /64bit /Product:Standard2019Volume /Exclude:Publisher,Outlook,Lync,Groove,Access'" --yes --all

### Office Project Pro 2019
choco install office2019proplus --params "'/Language:es-es /64bit /Product:ProjectPro2019Volume'"

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
## ENLACES RÁPIDOS
### DESCATIVAR TELEMETRÍA EN WINDOWS   
https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/desactivarTelemetria.bat   
### ACTIVAR WIN Y OFFICE   
https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd
