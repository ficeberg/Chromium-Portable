@ECHO OFF
color 1F
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
echo I                Creating Task - "Update everyday at 20:00"...                I
echo I                                                                             I
echo I                (You can change settings after installation)                 I
echo I                                                                             I
echo -------------------------------------------------------------------------------
SchTasks /Create /SC DAILY /TN "Chromium Auto Updater by Marcin-prv" /TR %userprofile%\AppData\Local\Chromium\Updater\Updater.bat /ST 20:00
Notepad.exe %userprofile%\AppData\Local\Chromium\Updater\Readme.txt