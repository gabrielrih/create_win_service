:: Its create a Windows Service
:: Written by Gabriel Richter (2017-06-16)
:: REFERENCE: https://technet.microsoft.com/en-us/library/bb490995.aspx
::
@echo off

:: parameters
SET USER=%~1
SET PASSWORD=%~2

:: set service features
SET SERVICENAME= "W_Teste"
SET BINPATH= "C:\Program Files\Wireshark\capinfos.exe"
SET DISPLAYNAME= "W_Teste_DN"

:: Creating service
ECHO Creating %SERVICENAME% service with %USER%...
SC create %SERVICENAME% binpath= %BINPATH% DisplayName= %DISPLAYNAME% obj= %USER% password= %PASSWORD% start= auto

PAUSE