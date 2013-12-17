@ECHO OFF
color 1F
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                 CHROMIUM x64 AUTO UPDATER v1.8 (27/11/2013)                 I
echo I                    for Windows Vista/7/8/8.1 (x64 only)                     I
echo I                                                                             I
echo I                   Author: Marcin Grygiel aka Marcin-prv                     I
echo I                          Website: www.firstever.eu                          I
echo I                                                                             I
echo -------------------------------------------------------------------------------
echo I                                                                             I
echo I                Deleting Task - "Update everyday at 20:00"...                I
echo I                                                                             I
echo I                PRESS ANY KEY TO CONTINUE OR CTRL+C TO ABORT                 I
echo I                                                                             I
echo -------------------------------------------------------------------------------
Pause
SchTasks /Delete /TN "Chromium Auto Updater by Marcin-prv" /F