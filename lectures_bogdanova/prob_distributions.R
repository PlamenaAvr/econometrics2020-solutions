# Simmulate normally distributed data ----
y1=rnorm(500)
windows()
layout(matrix(c(1:4),nrow=2,ncol=2))
plot(y1,type="l",col="blue")
hist(y1,col="light blue")
boxplot(y1,col="light blue")
quantile(y1,probs=c(0,0.25,0.5,0.75,1))
qqnorm(y1,col="blue",pch=19)
qqline(y1,col="red",lwd=2)

# Simmulate t-distributed data ----
y2=rt(500,df=2)
windows()
layout(matrix(c(1:4),nrow=2,ncol=2))
plot(y2,type="l",col="blue")
hist(y2,col="light blue")
boxplot(y2,col="light blue")
quantile(y2,probs=c(0,0.25,0.5,0.75,1))
qqnorm(y2,col="blue",pch=19)
qqline(y2,col="red",lwd=2)

# Simmulate chi-square distributed data ----
y3=rchisq(500,df=7)
windows()
layout(matrix(c(1:4),nrow=2,ncol=2))
plot(y3,type="l",col="blue")
hist(y3,col="light blue")
boxplot(y3,col="light blue")
quantile(y3,probs=c(0,0.25,0.5,0.75,1))
qqnorm(y3,col="blue",pch=19)
qqline(y3,col="red",lwd=2)

# Churn data preliminary analysis ----
rm(list=ls())
dd=read.csv("https://raw.githubusercontent.com/feb-uni-sofia/econometrics2020-solutions/master/data/data.csv",stringsAsFactors = F,na.strings = c("NA",""," ","  ","?"))
# Visualize CCspendings for Q1
windows()
layout(matrix(c(1:4),nrow=2,ncol=2))
plot(dd$Credit.Card.Spendings.Q1,type="l",col="blue")
hist(dd$Credit.Card.Spendings.Q1,col="light blue")
boxplot(dd$Credit.Card.Spendings.Q1,col="light blue")
quantile(dd$Credit.Card.Spendings.Q1,probs=c(0,0.25,0.5,0.75,1))
qqnorm(dd$Credit.Card.Spendings.Q1,col="blue",pch=19)
qqline(dd$Credit.Card.Spendings.Q1,col="red",lwd=2)