# navajaSuiza
Algunas herramientas a la mano
Hola mundo!

#Choco
## CMD choco install:
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

## Office 2019 pro plus spanish
choco install office2019proplus --params '/Language:es-es'

## Office Standar Volume 2019 mínimo x64
choco install microsoft-office-deployment --params="'/Language:es-es /64bit /Product:Standard2019Volume /Exclude:Publisher,Outlook,Lync,Groove,Access'" --yes --all

### Otros instaladores de choco
zoom  
microsoft-teams  
googlechrome  
pandafreeantivirus --ignore-checksum  
7zip  
furmark  
crystaldiskinfo
crystaldiskmark
malawarebytes  
adwcleaner  

