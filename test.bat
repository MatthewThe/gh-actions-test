type nul > file1.txt
type nul > file2.txt
type nul > file3.txt

dir
RELEASE_DIR=..\

call :copytorelease fl*e1.txt

echo Hello %exit_code%

call :copytorelease file2.txt

echo Hello %exit_code%

call :copytorelease file3.txt

echo Hello %exit_code%

cd ..\
dir

EXIT /B %exit_code%

:copytorelease
echo %RELEASE_DIR%
xcopy %1 "%RELEASE_DIR%"
where /Q %1
set /A exit_code=exit_code+%ERRORLEVEL%
EXIT /B
