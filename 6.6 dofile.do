*Load auto data
sysuse auto, clear

*Install software to use esttab and outreg2
ssc install estout, replace
ssc install outreg2, replace

*Initial regressions
reg price mpg
reg price mpg length
reg price mpg length turn

*Initial regressions wioth stores estimates
reg price mpg
estimate store a1
reg price mpg length
estimate store a2
reg price mpg length turn
estimate store a3

*Create table with estimates table
estimates table a1 a2 a3

*Create table with esttab command with standard error option
esttab a1 a2 a3, se

*Using outreg2
reg price mpg
outreg2 using test.xls, replace
reg price mpg length
outreg2 using test.xls, append
reg price mpg length turn
outreg2 using test.xls, append
