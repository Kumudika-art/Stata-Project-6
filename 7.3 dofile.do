*Load the auto data
sysuse auto, clear

*Estimate a logit model
logit foreign price mpg weight

*Estimate a logit model with odds-ratio's
logit foreign price mpg weight, or

*Compute average marginal effects for all variables
margins, dydx(*)

*Compute marginal effects for all variables at the mean of all variables
margins, dydx(*) atmeans
