*Load auto data
sysuse auto, clear

*Estimate a OLS regression of price using mpg, weight and length as explanatory variables
regress price mpg weight length
