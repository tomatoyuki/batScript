@echo off
setlocal enabledelayedexpansion

set FolderName=%~dp0
set /a index=0
echo %~dp0
for /f "delims=\" %%a in ('dir /b /a-d /o-d "%FolderName%\*.*"') do (
	if "%%a" NEQ "GetCurrentDirFileList.bat" (
 	set /a index+=1
 	echo !index!. %%a >> FileNameList.txt
	)
)

start "" "%~dp0/FileNameList.txt"
REM pause
