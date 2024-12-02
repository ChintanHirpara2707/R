data=read.csv("Z:\\BSC IT SEM-5\\Data Mining\\40 Data 2.CSV")
print(data)

data
data$State=factor(data$state,levels=c('New York','California','Florida'),
                  labels=C(1,2,3))
data$State

plot(data$R.D.Spend,data$Profit,
     xlab = "R.D. Spend",
     ylab = "Profit",
     main = "Scatter plot of R.D Spend vs Profit")
dev.off()

set.seed(123)
split=sample.split(data$Profit,SplitRatio = 0.8)
training_set=subset(data,split=="TRUE")
training_set
testing_set=subset(data,split=="FALSE")
testing_set

regressor=lm(formula=Profit~.,data=training_set)
coef(regressor)


#predicting the test set results

y_pred=predict(regressor,newdata = testing_set)
y_pred
y_pred2=predict(regressor,newdata = training_set)
y_pred2


ggplot()+geom_point(aes(x=testing_set$R.D.Spend,
                        y=testing_set$Profit),colour='red')+
  geom_line(aes(x=testing_set$R.D.Spend,
                y=y_pred,colour='blue'))+
  ggtitle('profit vs R.D Spend(training set)')+
  xlab('R.D.Spend')+
  ylab('profit')