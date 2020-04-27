type nul > file2.txt
type nul > file3.txt

dir

xcopy file1.txt ../
set /A exit_code=%ERRORLEVEL%

xcopy file2.txt ../
set /A exit_code=exit_code||%ERRORLEVEL%

xcopy file3.txt ../
set /A exit_code=exit_code||%ERRORLEVEL%

echo Hello

cd ../

EXIT /B %exit_code%
