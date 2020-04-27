type nul > file1.txt
type nul > file2.txt

dir

copy file1.txt ..\
set /A exit_code=%ERRORLEVEL%

copy file2.txt ..\
set /A exit_code=exit_code||%ERRORLEVEL%

copy file3.txt ..\
set /A exit_code=exit_code||%ERRORLEVEL%

echo Hello

cd ..\

EXIT /B %exit_code%
