type nul > file1.txt
type nul > file2.txt
type nul > file3.txt

dir

xcopy f*e1.txt ..\
set /A exit_code=%ERRORLEVEL%

echo %exit_code%

xcopy file2.txt ..\
set /A exit_code=exit_code+%ERRORLEVEL%

echo %exit_code%

xcopy file3.txt ..\
set /A exit_code=exit_code+%ERRORLEVEL%

echo Hello %exit_code%

cd ..\

EXIT /B %exit_code%
