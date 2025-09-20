*load the data
sysuse auto, clear

*run model 1
reg price mpg length turn i.foreign

*graphical diagnostics
	*normality of error term
	predict resid, resid
	predict xb, xb
	su
	kdensity resid
	*residuals vs fitted plot
	rvfplot
	*influential outliers
	lvr2plot

*statistical diagnostics
	*multicollinearity
	estat vif
	*heteroskedasticity
	estat hettest
	*functional form
	estat ovtest

