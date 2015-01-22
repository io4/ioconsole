set /p user="Enter your username:"
set /p pass="Enter your password:"
set /p usr= < user.txt
set /p pas= < pass.txt
if "%usr%"=="%user%" (
if "%pas%"=="%pass%" (
echo "Login Correct."
set islogedin="yes"
) else (
echo "Login Incorrect."
set islogedin="no"
)
) else (
echo "Login Incorrect."
set islogedin="no"
)