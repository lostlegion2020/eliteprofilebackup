@echo off
rem backs up complete profile bindings etc and creates a dated rar file
cls
echo .. Elite Dangerous AppData Backup B4 Game ..
setlocal enabledelayedexpansion
timout 5
set savepathnew=Z:\BindingsBackup\currentbindings
set savepathcur=Z:\BindingsBackup\savedbindings
set files="Z:\BindingsBackup\currentbindings\*.*
set bindings=%localappdata%\Frontier Developments\Elite Dangerous
set drvletter=Z:
%drvletter%
cd %savepathnew%
cls
echo backup from :  %bindings%
echo save to     :  %savepathcur%
timeout 5
mkdir %savepathcur% 
mkdir %savepathnew% 
cls
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
rar a -r0 -m5 -df "%savepathcur%\%datetimef%.rar"
xcopy /h /s /c /e "%bindings%\*" /q

@exit


