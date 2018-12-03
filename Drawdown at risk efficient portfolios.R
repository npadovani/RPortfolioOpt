library(PortfolioAnalytics)
library(FRAPO)
library(tseries)
library(fPortfolio)
data("StockIndex")
data("edhec")

popt_2 <- PMaxDD(PriceData = StockIndex,MaxDD = 0.10,softBudget = TRUE)
popt_2
popt_ed <- PMaxDD(PriceData = edhec,MaxDD = 0.10,softBudget = FALSE)

p_DAR <- PCDaR(StockIndex,alpha = 0.90,bound = 0.07,softBudget = FALSE)