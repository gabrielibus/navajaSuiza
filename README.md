# 🧰 NAVAJA SUIZA - herramientas informáticas facilito 

<a href="#officeAIO"><h2>🖊️ Office All in One</h2></a>

- <a href="#uninstallOffice">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</a>
- <a href="#installOffice">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</a>
- <a href="#officeKey">🏴‍☠️ Descarga el activador Office</a>

<a href="#chocoAIO"><h2 >
🍫 + 🥑 Choco y básicos de Windows con CMD</h2></a>
- <a href="#choco">🍫 Instala Choco</a>
- <a href="#chocoBasicos">🥑 Instala 7Zip, Adobe reader, Anydesk, Google Chrome, RustDesk, Panda Free Antivirus, VLC, Zoom</a>

<a href="#Limpiador"><h2 >
👽 Otros</h2></a>

- <a href="#Limpiador">🧼 Limpiador Windows</a>
- <a href="#Desinfección">🦠 Revisar virus en Windows con CMD</a>

<br>
<hr>





<h2 id="officeAIO">🖊️ Office All in One</h2>
  Quita cualquier versión de Office en Windows desde un CMD e instala Office 2019 Standar 😎

- <a href="#uninstallOffice">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</a>
- <a href="#installOffice">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</a>
- <a href="#officeKey">🏴‍☠️ Descarga el activador</a>


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
<br>

---
# 🪟 Básicos de Windows
<h2 id="chocoAIO">
🍫 + 🥑 Choco y básicos de Windows con CMD</h2>

- <a href="#choco">🍫 Instala Choco</a>
- <a href="#chocoBasicos">🥑 Instala 7Zip, Adobe reader, Anydesk, Google Chrome, RustDesk, Panda Free Antivirus, VLC, Zoom</a>

👇🏽 Este script hace todo lo de arriba ☝🏽 (para pegar en CMD/Terminal de Windows)
```
powershell -command "Start-Process cmd -ArgumentList '/k powershell -NoProfile -ExecutionPolicy Bypass -Command \"[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); $env:PATH += '';'' + [System.Environment]::GetFolderPath(''CommonApplicationData'') + ''\chocolatey\bin''; choco install zoom 7zip googlechrome anydesk.install rustdesk adobereader vlc --yes; choco install autohotkey pandafreeantivirus --ignore-checksum --yes; choco uninstall autohotkey --force --yes --all; exit\"' -Verb runAs"
```
<br>
<h2 id="choco">
🍫 Instalar Choco con CMD:</h2>
```
powershell -command "Start-Process cmd -ArgumentList '/k powershell -NoProfile -ExecutionPolicy Bypass -Command \"[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); $env:PATH += '';'' + [System.Environment]::GetFolderPath(''CommonApplicationData'') + ''\chocolatey\bin''; exit\"' -Verb runAs"
```
<h2 id="chocoBasicos">
🥑 Básicos de Windows con Choco: </h2> 
7Zip,  Adobe reader, Anydesk, RustDesk, Panda Free Antivirus, VLC, Zoom

```
powershell -command "Start-Process cmd -ArgumentList '/k choco install zoom 7zip googlechrome anydesk.install rustdesk adobereader vlc --yes autohotkey pandafreeantivirus --ignore-checksum --yes && choco uninstall autohotkey --force --yes --all; exit\"' -Verb runAs"
```



<h2 id="Limpiador">🧼 Limpiador Windows</h2>
```
cd %USERPROFILE%\Downloads && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/tools/OOAPB.exe && OOAPG.exe
```

<h2 id="Desinfección">🦠 Revisar virus en Windows con CMD</h2>
```
cd C:/ProgramData/Microsoft/Windows Defender/Platform/4.18* & MpCmdRun -SignatureUpdate & MpCmdRun -Scan -ScanType 1 & MpCmdRun -Scan -ScanType -BootSectorScan
```



