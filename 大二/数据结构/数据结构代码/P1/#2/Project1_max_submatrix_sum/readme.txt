1.Code is in max_submatrix_sum.c
2.Executable file is in max_submatrix_sum.exe
3.Report is in project_report1_MSS.pdf
4.Table of test cases is in Chapter 3 of the report.
5.The three algorithms, MSS_N6, MSS_N4 and MSS_N3 are in the same .c file.
   You can simply run the code to check them.
6.The name "MSS_N6"means the function is used to calculate max submatrix 
   sum and runs in O(N^6), etc.
7.In normal case, the matrix's elements are randomly from -9 to 9. Special cases (all 0
   and negative) are in the annotation below the normal matrix.
8.N, the size of the matrix, is defined as const int, which you can change.
   (But the repeated time K needs to be changed, too.)
9.In main(), the three functions are tested. K_N6, K_N4 and K_N3 means the repeated
   times of the respective functions. When you change N, don't forget to change Ks,
   in order that the number of ticks is at least 10 and time for waiting is bearable.
10.The output format is"N = *  maxsumN*(6/4/3) = *  ticks = *  repeat = *  total = * secs
     time = * secs",which is easy to understand.
11.If maxsumN6 = maxsumN4 = maxsumN3 in the output, which means the results of
     three functions are the same, then their results are right.