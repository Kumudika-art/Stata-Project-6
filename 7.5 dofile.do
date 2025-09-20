*Load the NLSW88 data
sysuse nlsw88, clear

*Estimate a probit mode of union membership
probit union age grade i.race i.married
*Explore the classification table
estat classification
*Summarise union
su union
*Explore the classification table with new cut-point of 0.24
estat classification, cut(0.24)
*Examine goodness of fit using Fitstat
fitstat

*Estimate average marginal effects
margins, dydx(*)
