echo off
set parameters=%*
set api_url=https://script.google.com/macros/s/AKfycbyNg9CZdSYiXcaNa-FeSK3An8lNTUFCQDHG2BVgn7_0yPJijzwswhqZG0QqM9IjO-8HcQ/exec
set endpoint="?args=%parameters%"
set endpoint=%endpoint: =,%
set endpoint=%endpoint:"=%

cd %userprofile%\Documents\cf_downloader_tmp

curl -L "%api_url%%endpoint%" > %userprofile%\Documents\cf_downloader_tmp\%1_%2.bat
%userprofile%\Documents\cf_downloader_tmp\%1_%2.bat
echo:
pause