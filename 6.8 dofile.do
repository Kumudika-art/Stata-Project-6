*Load the NLSW88 data
sysuse nlsw88, clear

*Estimate an OLS model of wages using grade, age, married and race as explanatory variables
reg wage grade age i.married i.race

*Test for heteroskedasticity
estat hettest
*Examine residual-versus-fitted plot
rvfplot

*Generate log of wage and re-run regression with new dependent variable
gen logwage = log(wage)
reg logwage grade age i.married i.race

*Test for heteroskedasticity
estat hettest
*Examine residual-versus-fitted plot
rvfplot

*Use the robust option to protect against heteroskedasticity
reg logwage grade age i.married i.race, robust
