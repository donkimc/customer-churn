#file.exists("R/churn.csv")
#getwd()
ds <- read.csv("R/churn.csv", header = TRUE)
summary(ds$Account.Length)