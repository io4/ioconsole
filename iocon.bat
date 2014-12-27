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
set /p command="%actualdir%>"
call :%command%
cls
echo "%command%" is not a command!
pause
goto init
:none
goto init
:cls
cls
echo ##############################
echo #                            #
echo #      Io console V 0.1      #
echo #                            #
echo ##############################
goto init
:help
echo This is the Io's console help.
echo Bla bla bla...
goto init
:other
set /p nativecmd="Type the native windows console you want:"
%nativecmd%
goto init
:cmd
echo ##############################
echo #                            #
echo #      Io console V 0.1      #
echo #                            #
echo ##############################
goto init
:login
set /p user="Enter your username:"
set /p pass="Enter your password:"
set /p usr= < user.txt
set /p pas= < pass.txt
if "%usr%"=="%user%" (
if "%pas%"=="%pass%" (
echo "Login Correct."
set islogedin="yes"
goto init
) else (
echo "Login Incorrect."
set islogedin="no"
goto init
)
) else (
echo "Login Incorrect."
set islogedin="no"
goto init
)
:shell
if %islogedin%=="yes" (
if "%usr%"="" goto init
if "%shellinput%"=="quit" (
goto init
)
%shellinput%
set shellinput="winlogon"
set /p shellinput="%usr%@localhost:%actualdir%>"
goto shell
) else ( echo "You must login first."
pause )
goto init
pause > nul
