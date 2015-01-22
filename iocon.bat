@echo off
color 1e
rem Start of variables setup...
set islogedin="no"
rem not used yet set path=%~dp0/path;%path%
set actualdir=%userprofile%
rem End of variables setup...
echo Presiona cualquier tecla para iniciar la consola "Io"...
title "Io console V 0.4"
pause > nul
echo ##############################
echo #                            #
echo #      Io console V 0.1      #
echo #                            #
echo ##############################
:init
set command=none
set /p command="%actualdir%)"
call path/%command%
if "%errorlevel%"=="1" (
cls
echo "%command%" is not a command!
pause
)
goto init
pause > nul