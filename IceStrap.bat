rem IceStrap
echo IceStrap
@echo off
cd Utils
start IceStrap.exe
echo Press Install on Bloxstrap. Do not configure it yet, as this is done automatically. If it asks you to upgrade Bloxstrap, press Yes. If it begins launching Roblox, press cancel, or close Roblox.
@echo off
pause
if exist "%localappdata%\Bloxstrap" (
    rmdir /S /Q "%localappdata%\Bloxstrap"
)
xcopy "Bloxstrap" "%localappdata%\Bloxstrap" /E /I /Y
set startMenu=%appdata%\Microsoft\Windows\Start Menu\Programs\Bloxstrap
ren "%startMenu%\Play Roblox.lnk" "Roblox.lnk"
ren "%startMenu%\Bloxstrap Menu.lnk" "IceStrap.lnk"
del "%userprofile%\Desktop\Play Roblox.lnk"
copy "%startMenu%\Roblox.lnk" "%userprofile%\Desktop\"
start IceStrap2.bat