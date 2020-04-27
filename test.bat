type nul > file1.txt
type nul > file2.txt

dir

copy file1.txt file1_copy.txt
copy file2.txt file2_copy.txt
copy file3.txt file3_copy.txt

EXIT /B %ERRORLEVEL%
