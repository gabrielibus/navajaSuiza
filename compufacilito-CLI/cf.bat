echo off
set parameters=%*
set api_url=https://script.google.com/macros/s/AKfycbyNg9CZdSYiXcaNa-FeSK3An8lNTUFCQDHG2BVgn7_0yPJijzwswhqZG0QqM9IjO-8HcQ/exec
set endpoint="?args=%parameters%"
set endpoint=%endpoint: =,%
set endpoint=%endpoint:"=%

set cd_path=C:\tmp_cf
cd %cd_path%
curl -L "%api_url%%endpoint%" > %cd_path%\%1_%2.bat
%cd_path%\%1_%2.bat
echo:
pause
