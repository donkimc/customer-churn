#file.exists("R/churn.csv")
#getwd()
ds <- read.csv("R/churn.csv", header = TRUE)
summary(ds$Account.Length)
outlier<-boxplot(ds$Account.Length)$out
newds<-ds[-c(which(ds$Account.Length==outlier)),]

