@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set abc=                          uvwxyz
 
:delleft
if "%abc:~0,1%"==" " set abc=%abc:~1%&&goto delleft
echo 去除左边空格后结果为:%abc%
 
set abc=uvwxyz                                                   
:delright
if "%abc:~-1%"==" " set abc=%abc:~0,-1%&&goto delright
echo 去掉右边空格后结果为:%abc%
 
set abc=             u            v  w          x    y          z               
set "abc=%abc: =%"
echo 去除所有空格后结果为:%abc%
pause
