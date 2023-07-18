@echo off
title Networking tool
echo.
echo Welcome to the Powershell networking tool.
echo.
if %errorLevel% == 0 (
  cd /d "%~dp0"
) else (
    echo WARNING! You did not run the tool as administrator,
    echo so the features will only work if your execution policy is set to Bypass.
)
if not exist Resources\ (
goto rnnf
) else (
goto start
)
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
if %rntin%==3 goto uninstall
goto rnnf
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
if %input%==7 goto uninstall
echo.
goto start
:: Features ˇˇ
:tracerouteprep
powershell "Resources\Traceroute.ps1"
echo Opened route tracer.
:testprep
powershell "Resources\Pingtest.ps1"
echo Opened connection tester.
:ipcfgp
powershell "Resources\Ipconfig.ps1"
echo Opened Ipconfig module.
:nstprep
powershell "Resources\Netstat.ps1"
echo Opened Netstat module.
:: Features ^^
:uninstall
color 6
echo Are you sure you want to uninstall the program? (type the number)
echo 1) Yes
echo 2) No
set /p sinput=
if %sinput%==1 goto sdfull
if %sinput%==2 goto sdcancel
:sdfull
if resourcesnf==false (
echo Stopping tasks...
taskkill /F /IM Resources\Pingtest.ps1
taskkill /F /IM Resources\Traceroute.ps1
taskkill /F /IM Resources\Ipconfig.ps1
taskkill /F /IM Resources\Netstat.ps1
)
echo Deleting...
del /F
:sdcancel
echo.
echo Uninstall cancelled.
echo.
if resourcesnf==false (
pause
cls
goto start
) else (
pause
cls
goto rnnf
)
:help
start README.md -n21
echo Opened help file.
