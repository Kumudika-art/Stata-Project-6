*Load auto data
sysuse auto, clear

*Specify a baseline OLS regression
reg price mpg length i.foreign

*Generate the log of price
gen logprice = log(price)

*Use logprice as the dependent variable in a new OLS regression
reg logprice mpg turn length i.foreign

*Add a quadratic relationship between price and mpg to the OLS model
reg logprice c.mpg##c.mpg turn length i.foreign

*Predict the values of logprice at various mpg values
margins, at(mpg=(0 10 20 30 40 50))

*Plot the values obtained by margin on a graph
marginsplot
