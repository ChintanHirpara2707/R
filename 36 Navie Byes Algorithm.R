install.packages('tidyverse')
library(tidyverse)

install.packages('ggplot2')
library(ggplot2)

install.packages('caret')
library(caret)

install.packages('caretEnsemble')
library(caretEnsemble)

install.packages('psych')
library(psych)

install.packages('Amelia')
library(Amelia)

install.packages('mice')
library(mice)

install.packages('GGally')
library(GGally)

install.packages('rpart')
library(rpart)

install.packages('randomForest')
library(randomForest)


data=read.csv("Z:\\BSC IT SEM-5\\Data Mining\\diabetes.CSV")
print(data)

data$Outcome<- factor(data$Outcome, levels = c(0,1), lables = c("False","True"))
str(data)
head(data)
describe(data)
