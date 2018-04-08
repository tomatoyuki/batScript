@echo off
setlocal enabledelayedexpansion

set FolderName=%~dp0
set /a index=0
echo %~dp0
for /f "delims=\" %%a in ('dir /b /a-d /o-d "%FolderName%\*.*"') do (
	set /a index+=1
	if "%%a" NEQ "GetCurrentDirFileList.bat" echo !index!. %%a >> FileNameList.txt
)



start "" "%~dp0/FileNameList.txt"
pause
