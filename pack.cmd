@echo off


:: Assumes you have 7-zip installed to the default location
:: If you have it somewhere else you will need to modify this!
set SEVENZIP_DIR=C:\Program Files\7-zip\


:: Update "MISSION_DIR" if you rename the mission_files directory
SET ROOT_DIR=%CD%
SET MISSION_DIR=%CD%\mission_files


:: Don't modify below this line unless you know what you are doing.

:: Add 7-zip to path so we can use it
set PATH=%PATH%;%SEVENZIP_DIR%

:: Check for 7-zip
where /q 7z
if %ERRORLEVEL% NEQ 0 goto no7zip

:: Loop through sandboxes and zip them
FOR /F %%i in (sandboxes.txt) DO (
	echo %%i
	cd /D %MISSION_DIR%/%%i
	7z a "%ROOT_DIR%\%%i.zip" *
	cd /D %ROOT_DIR%
	move "%%i.zip" "%%i.miz"
)
cd /D %ROOT_DIR%

goto done



:no7zip

echo "7-Zip was not found. Please install it, or if installed to a non-standard location update the contents of pack.cmd appropriately."
pause

goto done




:done

