*Load auto data
sysuse auto, clear

*Tabulate repair record
tab rep78

*Estimate a multinomial logit model of repair record
mlogit rep78 price mpg weight

*Estimate a multinomial logit model of repair record and display odds-ratio's
mlogit rep78 price mpg weight, rrr

*Estimate average marginal effects
margins, dydx(*)

*Test the Independene of Irrelevant Alternatives (IIA) assumption
mlogtest, iia
