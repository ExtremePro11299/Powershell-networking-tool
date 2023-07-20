@echo off
title Networking tool
echo.
echo Welcome to the Powershell networking tool.
echo.
cd /d "%~dp0"
:: Resources checker ˇˇ
set resourcesnf=false
if not exist Resources\ (
goto rnnf
) else (
goto start
)
:: Resources checker ^^
:: Resources not found screen ˇˇ
:rnnf
set resourcesnf=true
color 0
echo.
echo Could not find the Resources folder.
echo Without it the program cannot run.
echo Make sure the folder is named Resources and it is in the same folder as this file.
echo If you cannot find the Resources folder, reinstall the program from GitHub.
echo What do you want to do?
echo 1) Exit
echo 2) Help
echo 3) Uninstall
set /p rntin=
if %rntin%==1 exit
if %rntin%==2 call :help
if %rntin%==3 call :uninstall
goto rnnf
:: Resources not found screen ^^
:: Main ˇˇ
:start
color 2
echo What do you want to do? (type the number)
echo 1) Ping (test connection)
echo 2) Tracert (trace route)
echo 3) Netstat (check active connections)
echo 4) Ipconfig
echo 5) Help (open README)
echo 6) Exit
echo 7) Uninstall
set /p input=
echo.
if %input%==1 call :testprep
if %input%==2 call :tracerouteprep
if %input%==3 call :nstprep
if %input%==4 call :ipcfgp
if %input%==5 call :help
if %input%==6 exit
if %input%==7 call :uninstall
echo.
goto start
:: Main ^^
:: Features ˇˇ
:tracerouteprep
powershell "Resources\Traceroute.ps1"
echo Opened route tracer.
goto :eof
:testprep
powershell "Resources\Pingtest.ps1"
echo Opened connection tester.
goto :eof
:ipcfgp
powershell "Resources\Ipconfig.ps1"
echo Opened Ipconfig module.
goto :eof
:nstprep
powershell "Resources\Netstat.ps1"
echo Opened Netstat module.
goto :eof
:: Features ^^
:uninstall
color 6
del /F
goto :eof
:help
start README.md -n21
echo Opened help file.
pause
cls
goto :eof
