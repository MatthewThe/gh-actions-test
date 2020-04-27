type nul > file2.txt
type nul > file3.txt

dir

xcopy file1.txt file1_copy.txt
set /A exit_code=%ERRORLEVEL%

xcopy file2.txt file2_copy.txt
set /A exit_code=exit_code+%ERRORLEVEL%

xcopy file3.txt file3_copy.txt
set /A exit_code=exit_code+%ERRORLEVEL%

echo Hello

cd ../

EXIT /B %exit_code%
