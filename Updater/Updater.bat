@ECHO OFF
color 1F
cd .
pause
set URL=http://commondatastorage.googleapis.com/chromium-browser-snapshots/Win
set FILE=chrome-win32.zip
for /F "delims=" %%i in (LATEST_CHANGE) do set LATEST_CHANGE=%%i

cls
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                 CHROMIUM x86 AUTO UPDATER v1.8 (27/11/2013)                 I
echo I                     for Windows Vista/7/8/8.1 (x86/x64)                     I
echo I                                                                             I
echo I                   Author: Marcin Grygiel aka Marcin-prv                     I
echo I                          Website: www.firstever.eu                          I
echo I                                                                             I
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                                                                             I
echo I                         Checking for new version...                         I
echo I                                                                             I
echo I                                                                             I
echo -------------------------------------------------------------------------------

del CHECK
wget.exe %URL%/LAST_CHANGE
ren LAST_CHANGE CHECK
for /F "delims=" %%j in (CHECK) do set CHECK=%%j
if not "%LATEST_CHANGE%"=="%CHECK%" goto Download

cls
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                 CHROMIUM x86 AUTO UPDATER v1.8 (27/11/2013)                 I
echo I                     for Windows Vista/7/8/8.1 (x86/x64)                     I
echo I                                                                             I
echo I                   Author: Marcin Grygiel aka Marcin-prv                     I
echo I                          Website: www.firstever.eu                          I
echo I                                                                             I
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                                                                             I
echo I             You have the latest Chromium version - Build %LATEST_CHANGE%             I
echo I                                                                             I
echo I                                                                             I
echo -------------------------------------------------------------------------------
ping -n 5 localhost > NUL
goto eof

:Download

cls
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                 CHROMIUM x86 AUTO UPDATER v1.8 (27/11/2013)                 I
echo I                     for Windows Vista/7/8/8.1 (x86/x64)                     I
echo I                                                                             I
echo I                   Author: Marcin Grygiel aka Marcin-prv                     I
echo I                          Website: www.firstever.eu                          I
echo I                                                                             I
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                                                                             I
echo I             Downloading latest version of Chromium Build %CHECK%             I
echo I                                                                             I
echo I                                                                             I
echo -------------------------------------------------------------------------------
wget.exe -N %URL%/%CHECK%/%FILE% -O chrome-win32.zip

cls
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                 CHROMIUM x86 AUTO UPDATER v1.8 (27/11/2013)                 I
echo I                     for Windows Vista/7/8/8.1 (x86/x64)                     I
echo I                                                                             I
echo I                   Author: Marcin Grygiel aka Marcin-prv                     I
echo I                          Website: www.firstever.eu                          I
echo I                                                                             I
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                                                                             I
echo I          Updating Chromium from Build %LATEST_CHANGE% to version %CHECK% ...          I
echo I                                                                             I
echo I                                                                             I
echo -------------------------------------------------------------------------------
installer.bat
:eof