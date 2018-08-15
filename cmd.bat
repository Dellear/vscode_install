@echo off
echo 内网IP
for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do ( set IP=%%a )
echo %IP: =%

rem IP后两位是空格需要截取
start chrome http://%IP: =%:9093/
