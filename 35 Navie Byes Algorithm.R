install.packages("e1071")
library(e1071)
data(iris)
head(iris)

iris$SpeciesBinary <- ifelse(iris$Species == "setosa", "yes", "no")
head(iris)

data <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width",
                 "SpeciesBinary")]
head(data)

set.seed(123)
trainIndex <- sample(seq_len(nrow(data)),size = 0.7 * nrow(data))
trainData <- data[trainIndex, ]
testData <- data[-trainIndex, ]

model_nb <- naiveBayes(SpeciesBinary ~ ., data = trainData)
print(model_nb)

predictions_nb <- predict(model_nb, testData)

head(predictions_nb)

confusionMatrix <- table(Predicted = predictions_nb, Actual = 
                           testData$SpeciesBinary)
print(confusionMatrix)

accuracy <- sum(diag(confusionMatrix)) / sum(confusionMatrix)
print(paste("Accuracy:", round(accuracy, 2)))

new_data <- data.frame(
  Sepal.Length = c(5.1, 6.0),
  Sepal.Width = c(3.5, 2.9),
  Sepal.Length = c(1.4, 4.5),
  Sepal.Width = c(0.2, 1.5)
)

print(new_data)
predictions_new <- predict(model_nb, new_data)
print(predictions_new)
