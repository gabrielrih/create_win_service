:: Its create a Windows Service
:: Written by Gabriel Richter (2017-06-16)
:: REFERENCE: https://technet.microsoft.com/en-us/library/bb490995.aspx
::
@echo off

:: parameters
SET USER=%~1
SET PASSWORD=%~2

:: set service features
SET SERVICENAME= "TestService"
SET BINPATH= "C:\Users\gr14171\Desktop\ccsetup518.exe"
SET DISPLAYNAME= "TestService"

:: Creating service
ECHO Creating %SERVICENAME% service with %USER%...
sc create %SERVICENAME% binpath= %BINPATH% DisplayName= %DISPLAYNAME% obj= %USER% password= %PASSWORD% start= auto

pause