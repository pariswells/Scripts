@echo off
FOR /F "tokens=* USEBACKQ" %%F IN (`hostname`) DO (
SET computername=%%F
)
@echo:
echo    Your Computer Name is: %ComputerName%
ipconfig | findstr /i "ipv4"
ipconfig /all | findstr /i "Default Gateway"
ipconfig /all | findstr /i "Servers"
ipconfig /all | findstr /i "Physical"
echo    .
systeminfo|findstr /c:"System Boot Time" /c:"OS Name" /c:"OS Version"
echo    .
WMIC BIOS GET SERIALNUMBER
@echo


pause


