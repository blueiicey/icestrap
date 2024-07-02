@echo off
rem IceStrap Asset Loader
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator permissions...
    @echo off
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
@echo off
if not exist "%ProgramFiles%\IceStrap" (
    mkdir "%ProgramFiles%\IceStrap"
)
copy "%localappdata%\BloxStrap\icestrap.bat" "%ProgramFiles%\IceStrap\"
copy "%localappdata%\BloxStrap\IceStrap.ico" "%ProgramFiles%\IceStrap\"
echo IceStrap Installed! Use the IceStrap app to configure IceStrap, and the Roblox app to play Roblox!
echo Closing in 10 seconds...
timeout /t 10 /nobreak