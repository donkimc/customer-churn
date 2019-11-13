#file.exists("R/churn.csv")
#getwd()
#ds <- read.csv("R/churn.csv", header = TRUE)
#summary(ds$Account.Length)
gc <- read.csv("R/churn.csv",header = TRUE, stringsAsFactors = FALSE,
               na.string=c("","NA"))
str(gc)
summary(gc)

cor(gc) #error / only numeric comparison