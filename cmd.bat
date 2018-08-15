@echo off
echo 内网IP
for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do ( set IP=%%a )
echo %IP:~0,-2%

rem IP后两位是空格需要截取
start chrome https://%IP:~0,-2%:9093/
