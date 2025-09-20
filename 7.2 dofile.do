*Load auto data
sysuse auto, clear

*Estimate logit model
logit foreign price mpg weight

*Compute Tjur's statistic (the difference between two predicted means)
predict yhat
ttest yhat, by(foreign)

*Produce the classification table
estat classification

*Produce the classification table with a cut point at 0.3
estat classification, cut(0.3)

*Call upon the user-written command fitstat that presents a variety of R2 statistics for non-linear models
fitstat

