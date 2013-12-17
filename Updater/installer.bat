@ECHO OFF
7z x chrome-win32.zip
xcopy .\chrome-win32\*.* ..\*.* /s /v /i /h /k /y
del /f/q /s chrome-win32.zip
rd .\chrome-win32 /s /q
copy /y CHECK LATEST_CHANGE