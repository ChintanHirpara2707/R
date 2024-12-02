iris
sample = sample(150,100)
print(sample)
training_data = iris[sample,]
testing_data = iris[-sample,]
dim(training_data)
dim(testing_data)
dtm <- rpart(Species~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,data = training_data,method = "class")
dtm
plot(dtm)
text(dtm)
rpart.plot(dtm)
rpart.plot(dtm,type = 4,extra = 101)
predict = predict(dtm,testing_data,type = "class")
table(testing_data[,5],predict)
mean(testing_data[,5]==predict)
