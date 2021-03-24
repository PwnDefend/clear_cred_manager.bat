@echo off
REM Clear Cred Manager from any creds with "Adobe" in them
cmdkey /list | findstr Adobe > list.txt
FOR /F "tokens=1,2,3,4 delims==" %A in (list.txt) DO cmdkey /delete:%B
del list.txt" /s /f /q
