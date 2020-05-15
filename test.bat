type nul > file1.txt
type nul > file2.txt
type nul > file3.txt

dir

xcopy fl*e1.txt ..\
where /Q fl*e1.txt
set /A exit_code=%ERRORLEVEL%

echo %exit_code%

where /Q f*e1.txt
echo %ERRORLEVEL%


xcopy file2.txt ..\
set /A exit_code=exit_code+%ERRORLEVEL%

echo %exit_code%

xcopy file3.txt ..\
set /A exit_code=exit_code+%ERRORLEVEL%

echo Hello %exit_code%

cd ..\

EXIT /B %exit_code%
