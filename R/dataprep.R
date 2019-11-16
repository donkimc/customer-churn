#file.exists("R/churn.csv")
#getwd()
#ds <- read.csv("R/churn.csv", header = TRUE)
#summary(ds$Account.Length)
gc <- read.csv("R/churn.csv",header = TRUE, stringsAsFactors = FALSE,
               na.string=c("","NA"))
str(gc)
summary(gc)

#Boxplot
boxplot(gc$Account.Length)
boxplot(gc$VMail.Message)
boxplot(gc$Day.Mins)
boxplot(gc$Day.Calls)

#correlation
dat <- replace(as.character(gc$Churn.),gc$Churn.=="False.",0)
dat <- replace(as.character(dat),dat=="True.",1)
churn <- as.numeric(dat)

cor(churn,gc$Account.Length)
cor(churn,gc$VMail.Message)
cor(churn,gc[,2:20])


