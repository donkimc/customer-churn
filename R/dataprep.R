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

#z score
z <- scale(gc$Account.Length,center=TRUE, scale=TRUE)
out_right <- which(z>2)
out_left <- which(z<(-2))
m <- median(gc$Account.Length)
boxplot(gc$Account.Length)
print("Number of ",length(out_right))
gc$Account.Length[out_right] <- m
gc$Account.Length[out_left] <- m




#correlation
dat <- replace(as.character(gc$Churn.),gc$Churn.=="False.",0)
dat <- replace(as.character(dat),dat=="True.",1)
churn <- as.numeric(dat)

corr <- function (gcc) {
  x <- c(2,7:20)
  for (i in x) {
    print(cor(churn,gc[i]))
  }
}

corr(gc)



ds <- read.csv("R/churn.csv", header = TRUE)
summary(ds$Account.Length)
outlier<-boxplot(ds$Account.Length)$out
newds<-ds[-c(which(ds$Account.Length==outlier)),]


