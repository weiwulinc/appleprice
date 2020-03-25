#This script was used to create the model that is included with the package

#Load necessary libraries
library(Quandl)


#Simple linear model
apple_price = Quandl("EOD/AAPL", api_key = "WSfEZRAC2EX_nHdvizCq", type="raw")
dataset = apple_price[c("Close","Open")]
apple_model <- lm(formula = Close ~ Open, data = dataset)

#Save the model
dir.create("data", showWarnings=FALSE)
save(apple_model, file="data/apple_model.rda")
