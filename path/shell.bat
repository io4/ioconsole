if %islogedin%=="yes" (
if "%usr%"=="" goto init
if "%shellinput%"=="quit" (
)
%shellinput%
set shellinput = "winlogon"
set /p shellinput = "%usr%@localhost:%actualdir%>"
goto shell
) else ( echo "You must login first."
pause )
