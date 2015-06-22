@echo off

cls
color 0C
title MCServer Watchdog - By M4RSAL

echo Protecting MCServer from crashes...
echo If you want to close MCServer and this script
echo close the MCServer window and type Y 
echo depending on your language followed by Enter.

:MCServer
echo (%date%) - (%time%) MCServer started. >>Watchdog_logs/(%date%).txt 
start /wait MCServer.exe

echo (%date%) - (%time%) WARNING: MCServer crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto MCServer
