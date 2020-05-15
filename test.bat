type nul > file1.txt
type nul > file2.txt
type nul > file3.txt

dir
RELEASE_DIR=..\

call :copytorelease fl*e1.txt
call :copytorelease file2.txt
call :copytorelease file3.txt

echo Hello %exit_code%

cd ..\
dir

EXIT /B %exit_code%

:copytorelease
xcopy %1 "%RELEASE_DIR%"
where /Q %1
set /A exit_code=exit_code+%ERRORLEVEL%
EXIT /B
