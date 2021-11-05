# navajaSuiza
Algunas herramientas a la mano

#Choco
Instalador de paquetes para Windows

## Choco install CMD:
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

## Choco install PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
___
# Office
## Office 2019 pro plus spanish
choco install office2019proplus --params '/Language:es-es'

## Office Standar Volume 2019 mínimo x64
choco install microsoft-office-deployment --params="'/Language:es-es /64bit /Product:Standard2019Volume /Exclude:Publisher,Outlook,Lync,Groove,Access'" --yes --all
___
### Instalación de todos los básicos
choco install zoom 7zip googlechrome anydesk.install adobereader vlc --yes autohotkey pandafreeantivirus --ignore-checksum --yes && choco uninstall autohotkey --yes --force --yes --all

###
choco install google-drive-file-stream
choco install zoom  
choco install microsoft-teams  
choco install googlechrome  
choco install pandafreeantivirus --ignore-checksum  
choco install 7zip  
choco install furmark  
choco install crystaldiskinfo
choco install crystaldiskmark
choco install malawarebytes  
choco install adwcleaner  

## Power Toys keyboard binding
{"remapKeys":{"inProcess":[]},"remapShortcuts":{"global":[{"originalKeys":"164;73","newRemapKeys":"46"},{"originalKeys":"164;74","newRemapKeys":"37"},{"originalKeys":"164;75","newRemapKeys":"40"},{"originalKeys":"164;76","newRemapKeys":"38"},{"originalKeys":"164;79","newRemapKeys":"46"},{"originalKeys":"164;80","newRemapKeys":"36"},{"originalKeys":"164;85","newRemapKeys":"8"},{"originalKeys":"164;186","newRemapKeys":"39"},{"originalKeys":"164;188","newRemapKeys":"174"},{"originalKeys":"164;190","newRemapKeys":"175"},{"originalKeys":"164;191","newRemapKeys":"173"}],"appSpecific":[]}}
