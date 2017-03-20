setwd("/Users/Alex")
library(survival)

dataSet = read.csv('EM_CoxProportionalHazards.csv')

X_ <- na.omit(dataSet)
X_[X_==""] <- NA

model <- coxph(Surv(time, status) ~  RuleofLaw + ControlofCorruption + GovtDebttoGDP + RRDC + GDPPerCapita + GOVTEFFECTIVENESS + GDPGROWTHANNUALRATE++UnemploymentRate + PoliticalStability +InterestRate + InflationRate + RegulatoryQuality + VOICEANDACCOUNTABILITY, data=X_, singular.ok=TRUE, robust=FALSE)
model
summary(model)