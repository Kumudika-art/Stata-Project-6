*Load auto data
sysuse auto, clear

*Tabulate repair record
tab rep78

*Estimate a ordered probit mode for repair record
oprobit rep78 price mpg weight

*Estimate a ordered logit mode for repair record
ologit rep78 price mpg weight

*Estimate average marginal effects of the ordered logit model
margins, dydx(*)

*Test the parallel regression assumption of the ordered logit model
brant

