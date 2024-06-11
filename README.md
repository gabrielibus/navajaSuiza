# 🧰 NAVAJA SUIZA - herramientas informáticas facilito 

#  Office instaladorFacilito
## Office All in One - Quita cualquier versión de Office en Windows desde un CMD e instala Office 2019 Standar 😎
- <a href="#a">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</a>
- <a href="#b">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</a>
- <a href="#c">🏴‍☠️ Descarga el activador</a>
```
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/office365-x64.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/install.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.xml && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd && uninstall.bat && install.bat && explorer .
```

<h2 id="b">🧼 Desinstala cualquier versión o programa de Office instalada en Windows</h2>

```
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.bat && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/uninstall.xml && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && uninstall.bat
```

<h2 id="c">🖊️ Instala Office 2019 Standar x64 (Word, Excel, Outlook y PowerPoint)</h2>

```
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/office365-x64.xml && curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/Office%20installer/install.bat && curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/Office%20installer/setup.exe && install.bat
```

<h2 id="a">🏴‍☠️ Descarga el activador Office</h2>

```
curl -O https://raw.githubusercontent.com/gabrielibus/navajaSuiza/main/tools/office_upd.cmd && explorer .
```

<br>
<br>

---
# 🪟 Básicos de Windows
🍫 + 🥑 Choco y básicos de Windows con CMD (Ejecutar como Administrador)
```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" && choco install zoom 7zip googlechrome anydesk.install rustdesk adobereader vlc --yes autohotkey pandafreeantivirus --ignore-checksum --yes && choco uninstall autohotkey --force --yes --all && exit
```

🍫 Instalar solo Choco (Ejecutar como Administrador)
```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```
🥑 Básicos de Windows con Choco:
- Zoom
- 7Zip
- Anydesk
- RustDesk
- Adobe reader
- Vlc
- Panda Free Antivirus
```
choco install zoom 7zip googlechrome anydesk.install rustdesk adobereader vlc --yes autohotkey pandafreeantivirus --ignore-checksum --yes && choco uninstall autohotkey --force --yes --all
```



## 🧼 Limpiador Windows 
```
curl -O --location --request GET https://github.com/gabrielibus/navajaSuiza/raw/main/tools/OOAPB.exe && OOAPG.exe
```

## 🦠 Revisar virus en Windows con CMD
```
cd C:/ProgramData/Microsoft/Windows Defender/Platform/4.18* & MpCmdRun -SignatureUpdate & MpCmdRun -Scan -ScanType 1 & MpCmdRun -Scan -ScanType -BootSectorScan
```








