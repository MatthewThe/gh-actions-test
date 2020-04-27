type nul > file1.txt
type nul > file2.txt

dir

copy file1.txt file1_copy.txt
set /A exit_code=%ERRORLEVEL%

copy file2.txt file2_copy.txt
set /A exit_code=exit_code+%ERRORLEVEL%

copy file3.txt file3_copy.txt
set /A exit_code=exit_code+%ERRORLEVEL%

echo Hello

EXIT /B %exit_code%
