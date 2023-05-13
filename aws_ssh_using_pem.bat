@echo off

set /p user="Enter your username: "
set /p ip="Enter your IP address: "

echo Username: %user%
echo IP address: %ip%

ssh -i ./aws_linux_key_for_test.pem %user%@%ip%
