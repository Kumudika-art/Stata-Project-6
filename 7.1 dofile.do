*Load the auto data
sysuse auto, clear

*Estimate a linear probability model (LPM)
reg foreign price mpg i.rep78

*Predict predicted probabilities from LPM model
predict yhat
su yhat

*Estimate a logit model
logit foreign price mpg i.rep78

*Estimate a probit model
probit foreign price mpg i.rep78
