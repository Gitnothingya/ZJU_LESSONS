# MAXIMUM SUBMATRIX SUM PROBLEM

My experimental environment is based on Windows 10. Please follow the following tips to verify my experiment in a Windows 10 based environment, if necessary.

## Compiling

* Enter the directory ".\project\code" in your shell.
* Input command `mingw32-make` to execute the program mingw32-make.exe. Or you can use Makefile in other ways.

## Executing

* The main.exe need three parameters following it.
  * The first parameter determines how many times the tested function is repeated.
  * The second parameter selects the function to be tested. Function 0, 1, 2 implements the algorithms run in $O(N^6)$, $O(N^4)$,$O(N^3)$, respectively.
  * The third parameter is the size of the original matrix.
  * *For example*, if you input the command `.\main.exe 2 1 100`, the tested function implements the algorithm run in $O(N^4)$, and the tester repeat the function calls for 2 times with an $100\times 100$ original matrix.

* The header.exe can be used when you need to add an table header in the performance record table(performance.csv).

## Other Notes

* The main.exe print performance of the tested function to performance.csv, without table header. It also print the original matrix and submatrix to solution.txt.
* The file "test.c" will check whether the solution is correct or not. If the solution is wrong, it will print  prompt information.
* You can find both performance.csv and solution.txt in the directory "Test_cases". I also convert the performance.csv to another format, .xlsx, and you can find performance.xlsx in the directory. 
* In performance.xlsx I plotted the performances of the three functions in the same N-run_time coordinate system. Unfortunately, you will find that the graphic of algorithm1 and algorithm2 is almost a straight line. At this time, you can cancel the display of the graphic of algorithm0 by using the filter in Excel.
