type nul > file1.txt
type nul > file2.txt
type nul > file3.txt

dir
set RELEASE_DIR=..\

echo out %RELEASE_DIR%

set /A exit_code=0

call :copytorelease f*e1.txt

echo Hello %exit_code%

call :copytorelease fl*e2.txt

echo Hello %exit_code%

call :copytorelease file3.txt

echo Hello %exit_code%

cd ..\
dir

EXIT /B %exit_code%

:copytorelease
echo in %RELEASE_DIR%
xcopy %1 "%RELEASE_DIR%"
where /Q %1
set /A exit_code=exit_code+%ERRORLEVEL%
EXIT /B
