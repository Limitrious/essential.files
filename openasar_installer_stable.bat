@echo off
echo Closing Discord... (wait around 5 seconds)

C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul

C:\Windows\System32\TIMEOUT.exe /t 5 /nobreak > nul 2> nul

echo Installing OpenAsar... (ignore any blue output flashes)
copy /y "%localappdata%\Discord\app-1.0.9053\resources\app.asar" "%localappdata%\Discord\app-1.0.9053\resources\app.asar.backup" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9053\resources\_app.asar" copy /y "%localappdata%\Discord\app-1.0.9053\resources\_app.asar" "%localappdata%\Discord\app-1.0.9053\resources\app.asar.backup" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9053\resources\app.asar.orig" copy /y "%localappdata%\Discord\app-1.0.9053\resources\app.asar.orig" "%localappdata%\Discord\app-1.0.9053\resources\app.asar.backup" > nul 2> nul

powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9053\resources\app.asar\"" > nul 2> nul



if exist "%localappdata%\Discord\app-1.0.9154\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9154\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9153\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9153\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9152\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9152\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9098\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9098\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9097\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9097\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9096\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9096\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9052\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9052\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9051\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9051\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9050\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9050\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9053\resources\_app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9053\resources\_app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9053\resources\app.asar.orig" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9053\resources\app.asar.orig\"" > nul 2> nul

echo Opening Discord...
start "" "%localappdata%\Discord\Update.exe" --processStart Discord.exe > nul 2> nul

C:\Windows\System32\TIMEOUT.exe /t 1 /nobreak > nul 2> nul

echo.
echo.
echo OpenAsar should be installed! You can check by looking for an "OpenAsar" option in your Discord settings.
echo Not installed? Try restarting Discord, running the script again, or if still not join our Discord server.
echo.
echo openasar.dev

echo.
pause
