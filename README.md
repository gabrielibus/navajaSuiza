# 🧰 NAVAJA SUIZA - herramientas informáticas facilito 

<a href="#officeAIO"><h2>🖊️ Office All in One</h2></a>

- <a href="#uninstallOffice">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</a>
- <a href="#installOffice">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</a>
- <a href="#officeKey">🏴‍☠️ Activar Office</a>

<a href="#chocoAIO"><h2 >
🍫 + 🥑 Choco y básicos de Windows con CMD</h2></a>
- <a href="#choco">🍫 Instala Choco</a>
- <a href="#chocoBasicos">🥑 Instala 7Zip, Adobe reader, Anydesk, Google Chrome, Panda Free Antivirus, VLC, Zoom</a>

<a href="#Limpiador"><h2 >
👽 Otros</h2></a>

- <a href="#Limpiador">🧼 Limpiador Windows</a>
- <a href="#Desinfección">🦠 Revisar virus en Windows con CMD</a>


<a href="#Limpiador"><h2 >🍎 Mac</h2></a>

- <a href="#macOffice">Instalar Office 2016 desde terminal con un solo comando
- <a href="#cleanup">Limpiar Mac con un solo comando

<br>
<hr>

<h2 id="officeAIO">🖊️ Office All in One</h2>
  Quita cualquier versión de Office en Windows desde un CMD e instala Office 2019 Standar 😎

- <a href="#uninstallOffice">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</a>
- <a href="#installOffice">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</a>
- <a href="#officeKey">🏴‍☠️ Activar Office</a>


👇🏽 Este script hace todo lo de arriba ☝🏽 (para pegar en CMD de Windows)
```
cd %USERPROFILE%\Downloads && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/office365-x64.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/install.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.xml && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd && uninstall.bat && install.bat && explorer .
```
<br>
<h2 id="uninstallOffice">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</h2>

```
cd %USERPROFILE%\Downloads && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.xml && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && uninstall.bat
```

<h2 id="installOffice">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</h2>

```
cd %USERPROFILE%\Downloads && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/office365-x64.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/install.bat && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && install.bat
```

<h2 id="officeKey">🏴‍☠️ Activar Office 2019</h2>

```
cd %USERPROFILE%\Downloads && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd && office_upd.cmd

```
<br>

```
irm https://get.activated.win | iex

```
<br>
<br>

---
# 🪟 Básicos de Windows
<h2 id="chocoAIO">
🍫 + 🥑 Choco y básicos de Windows con CMD</h2>

- <a href="#choco">🍫 Instala Choco</a>
- <a href="#chocoBasicos">🥑 Instala 7Zip, Adobe reader, Anydesk, Google Chrome, Panda Free Antivirus, VLC, Zoom</a>

👇🏽 Este script hace todo lo de arriba ☝🏽 (para pegar en CMD/Terminal de Windows)
```
powershell -command "Start-Process cmd -ArgumentList '/k powershell -NoProfile -ExecutionPolicy Bypass -Command \"[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); $env:PATH += '';'' + [System.Environment]::GetFolderPath(''CommonApplicationData'') + ''\chocolatey\bin''; choco install zoom 7zip googlechrome anydesk.install adobereader vlc --yes; choco install autohotkey pandafreeantivirus --ignore-checksum --yes; choco uninstall autohotkey --force --yes --all; exit\"' -Verb runAs"
```
<br>
<h2 id="choco">
🍫 Instalar Choco con CMD:</h2>

```
powershell -command "Start-Process cmd -ArgumentList '/k powershell -NoProfile -ExecutionPolicy Bypass -Command \"[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); $env:PATH += '';'' + [System.Environment]::GetFolderPath(''CommonApplicationData'') + ''\chocolatey\bin''; exit\"' -Verb runAs"
```
<h2 id="chocoBasicos">
🥑 Básicos de Windows con Choco: </h2> 
7Zip,  Adobe reader, Anydesk, Panda Free Antivirus, VLC, Zoom

```
powershell -command "Start-Process cmd -ArgumentList '/k choco install zoom 7zip googlechrome anydesk.install adobereader vlc --yes autohotkey pandafreeantivirus --ignore-checksum --yes && choco uninstall autohotkey --force --yes --all; exit\"' -Verb runAs"
```

<h2 id="Limpiador">🧼 Limpiador Windows</h2>

```
cd %USERPROFILE%\Downloads && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/tools/OOAPB.exe && OOAPG.exe
```

<h2 id="Desinfección">🦠 Revisar virus en Windows con CMD</h2>

```
cd C:/ProgramData/Microsoft/Windows Defender/Platform/4.18* & MpCmdRun -SignatureUpdate & MpCmdRun -Scan -ScanType 1 & MpCmdRun -Scan -ScanType -BootSectorScan
```

🍎 Apple
<h2 id="macOffice">Office 2016 en Mac </h2> 

```
cd ~/Downloads && curl -O https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Office_16.27.19071500_Installer.pkg && curl -O -L https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a/raw/Microsoft_Office_2019_VL_Serializer.pkg && open ~/Downloads/Microsoft_Office_16.27.19071500_Installer.pkg
```

<h2 id="cleanup">🧼 Limpiar Mac con un solo comando</h2> 

```
cd ~/Downloads && curl -o cleanup https://raw.githubusercontent.com/gabrielibus/mac-cleanup-sh/main/mac-cleanup && chmod +x ./cleanup &&  ./cleanup
```


🛡️ Bloqueo Firewall Windows:

```
cd %userprofile%\downloads && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/addfwrs.bat  && explorer .
```

<a href="#Limpiador"><h2 >🛠️ Install WMIC Windows 11</h2></a>

```
DISM /Online /Add-Capability /CapabilityName:WMIC~~~~​
```

✍🏼 Office 365 Retail
```
cd %userprofile%\downloads && curl -o Setup.exe -L "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=O365ProPlusRetail&platform=x64&language=es-es&version=O16GA"  && Setup.exe
```


<a href="#Limpiador"><h2 >🛠️ Install WMIC Windows 11</h2></a>

```
DISM /Online /Add-Capability /CapabilityName:WMIC~~~~​
```


💃🏼 Recuperar archivos en windows por CMD, facilito!

Paso 1: Instala la aplicación.

```
cd %userprofile%\downloads && curl "https://dl.winfr.org/free/WinfrGUI_Setup.exe?cfv=20251104.20182321" -o setup.exe && setup.exe
```

Paso 2: Abre Windows File Recovery desde el menú Inicio o busca la aplicación. Se abrirá una ventana del Símbolo del sistema o Windows Terminal.
Paso 3: Ejecuta el comando usando el siguiente formato. Debes guardar los archivos en una unidad de destino diferente a la microSD (por ejemplo, si la microSD es G:, usa E: como destino):

ABRE UN CMD COMO ADMINISTRADOR

```
winfr G: E: /extensive /n *.jpg /n *.png
```

G:: Unidad de origen (tu microSD).
E:: Unidad de destino (donde se guardarán los archivos recuperados).
/extensive: Modo Extenso, recomendado para recuperar archivos después de formatear, o para discos que han estado dañados por un tiempo.
/n *.jpg /n *.png: Filtros para buscar archivos con extensión .jpg y .png (puedes agregar más tipos de imagen si es necesario).
Microsoft creará automáticamente una carpeta de recuperación llamada Recovery_<fecha_y_hora> en la unidad de destino.
