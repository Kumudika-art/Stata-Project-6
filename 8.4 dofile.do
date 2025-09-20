*Load custom NLSW88 data
use "D:\Dropbox\Lynda.com\Course\9. Categorical Choice Models\9.99 Challenge\nlsw88_banded.dta", clear

*Tabulate wagebande
tab wageband
*Explore wageband graphically with a scatterplot
tw (sc wageband wage)
*Summarize wage by each wageband category
bys wageband: su wage

*Estimate an ordered logit model of wageband
ologit wageband grade age i.race 
*Test the parallel regression assumption
brant

*Estimate a multinomial logit model of wageband
mlogit wageband grade age i.race, base(1)
*Test the Independence of Irrelevant Alternatives (IIA) assumption
mlogtest, iia
*Compute average marginal effects from multinomial logit model
margins, dydx(*)
