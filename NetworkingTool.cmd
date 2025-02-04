@echo off
title Networking tool
echo.
echo Welcome to the Powershell networking tool.
echo.
cd /d "%~dp0"
:: Resources checker ˇˇ
set resourcesnf=false
if exist Resources\ (
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
echo 2) Open Help (README)
set /p rntin=
if %rntin%==1 exit
if %rntin%==2 call :help
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
echo 5) Change execution policy
echo 6) Unblock scripts
echo 7) Help (open README)
echo 8) Exit
set /p input=
cls
if %input%==1 call :testprep
if %input%==2 call :tracerouteprep
if %input%==3 call :nstprep
if %input%==4 call :ipcfgp
if %input%==5 call :execpolset
if %input%==6 call :scriptUnblock
if %input%==7 call :help
if %input%==8 exit
echo.
goto start
:: Main ^^
:: Features ˇˇ
:tracerouteprep
powershell "Resources\Traceroute.ps1"
cls
goto :eof
:testprep
powershell "Resources\Pingtest.ps1"
cls
goto :eof
:ipcfgp
powershell "Resources\Ipconfig.ps1"
cls
goto :eof
:nstprep
powershell "Resources\Netstat.ps1"
cls
goto :eof
:: Features ^^
:execpolset
echo Choose the execution policy you'd like. (type the number)
echo 1) RemoteSigned (requires unblocking scripts, more secure)
echo 2) AllSigned (does not work with program, medium security)
echo 3) Restricted (does not work with the program, but is the most secure)
echo 4) Bypass (works with the program, but is very insecure)
echo 5) Undefined
echo 6) Cancel
echo 7) Help
set /p execpol=
if %execpol%==6 {
    cls
    goto :eof
}
if %execpol%==7 {
    start "" "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.4"
    cls
    goto execpolset
    }
echo For who should the execution policy apply? (type the number)
echo 1) For you only (CurrentUser)
echo 2) For the whole computer (LocalMachine, requires running as administrator)
echo 3) Cancel
set /p scp=
powershell Set-ExecutionPolicy -executionpolicy %execpol% -scope %scp%
echo Execution policy change attempted. If there is no error message above, it was successful.
pause
cls
goto :eof
:scriptUnblock
powershell Unblock-file Resources\Ipconfig.ps1
powershell Unblock-file Resources\Netstat.ps1
powershell Unblock-file Resources\Pingtest.ps1
powershell Unblock-file Resources\Traceroute.ps1
echo Scripts unblocked.
goto :eof
:help
start README.md -n21
echo Opened help file.
goto :eof
