@rem C:\Users\kouag\scoop\apps\scoop\current\bin\scoop.ps1
@echo off
setlocal enabledelayedexpansion
set args=%*
:: replace problem characters in arguments
set args=%args:"='%
set args=%args:(=`(%
set args=%args:)=`)%
set invalid="='
if !args! == !invalid! ( set args= )
where /q pwsh.exe
if %errorlevel% equ 0 (
    pwsh -noprofile -ex unrestricted -file "C:\Users\kouag\scoop\apps\scoop\current\bin\scoop.ps1"  %args%
) else (
    powershell -noprofile -ex unrestricted -file "C:\Users\kouag\scoop\apps\scoop\current\bin\scoop.ps1"  %args%
)
