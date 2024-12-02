library("e1071")
library("caTools")
iris
set.seed(100)
split=sample.split(iris,SplitRatio = 0.7)
training_data=subset(iris,split=="TRUE")
testing_data=subset(iris,split=="FALSE")

classfied_cl<-naiveBayes(Species~.,data=training_data)
classfied_cl

Y_pred<-predict(classfied_cl,newdata=testing_data)
cm<-table(testing_data$Species,Y_pred)
cm

misClassError<-mean(Y_pred!=testing_data$Species)
print(paste('Accuracy=',1-misClassError))
