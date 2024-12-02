library(ggplot2)
library(caTools)

data=read.csv("Z:\\BSC IT SEM-5\\Data Mining\\39 Car Price.CSV")
print(data)

data=data.frame(
  data2$horsepower,
  data2$price
)

sum(is.na(data))
names(data)

plot(data$data2.horsepower,data$data2.pricce,
     xlab="Hurse Power",
     ylab="price",
     main="scatter plot of years hourse power vs price")

split=sample.split(data,splitRatio = 7.0)
train_data=subset(data,spilt==TRUE)
train_data=subset(data,spilt==FALSE)
lmr=lm(formula=data2.price~data2.horsepower,data=train_data)
coef(lmr)
ypred=predict(lmr,newdata=test_data)
ypred2=predict(lmr,newdata=test_data)

