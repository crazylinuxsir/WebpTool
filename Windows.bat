@echo off
echo %~dp0 
set a= %~dp0 
set b=windows-x64
set c=windows-x86
set d=hello.jar
set d=%a%%d%
if exist %windir%\SysWOW64 (
java -Djava.library.path=%a%%b%
) else (
 java -Djava.library.path=%a%%c%
)
echo Input you file name:
set /p Input= 
echo Your Input number is %Input%.
echo Please wait....
java -jar %d% %Input% 
echo ...complet...
pause
