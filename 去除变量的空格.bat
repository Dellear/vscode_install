@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set abc=                          uvwxyz
 
:delleft
if "%abc:~0,1%"==" " set abc=%abc:~1%&&goto delleft
echo ȥ����߿ո����Ϊ:%abc%
 
set abc=uvwxyz                                                   
:delright
if "%abc:~-1%"==" " set abc=%abc:~0,-1%&&goto delright
echo ȥ���ұ߿ո����Ϊ:%abc%
 
set abc=             u            v  w          x    y          z               
set "abc=%abc: =%"
echo ȥ�����пո����Ϊ:%abc%
pause
