@echo off
echo ����IP
for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do ( set IP=%%a )
echo %IP: =%

rem IP����λ�ǿո���Ҫ��ȡ
start chrome http://%IP: =%:9093/
