library(ggplot2)

data(mtcars)

head(mtcars)

summary(mtcars)

plot(mtcars$wt, mtcars$mpg,
     main = "Scatter Plot Of MPG vs Weight",
     xlab = "Car Weight(1000 lbs)",
     ylab = "Miles per Gallon ",
     pch = 19,col = "blue")

cor(mtcars$mpg, mtcars$wt)

model <- lm(mpg ~ wt,data = mtcars)

summary(model)

coefficients(model)
confint(model)
fitted.values <- fitted(model)
residuals <- residuals(model)

par(mfrow = c(2, 2))
plot(model)


par(mfrow = c(1, 1))
plot(mtcars$wt, mtcars$mpg,
     main = "Scatter Plot Of MPG vs Weight",
     xlab = "Car Weight(1000 lbs)",
     ylab = "Miles per Gallon ",
     pch = 19,col = "blue")
abline(model, col = "red", lwde = 4)

redidual_standard_error <- summary(model)$sigma
r_squared <- summary(model)$r.squared

new_data <- data.frame(wt = c(2.5, 3.0, 3.5))
predictions <- predict(model, new_data, interval = "confidence")

print(predictions)

ggplot(mtcars, aes(x= wt, y = mpg)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm",col = "red", se = TRUE) +
  ggtitle("Linear Regression: <PG vs Weight") +
  xlab("car weight (1000 lbs)") +
  ylab("Miesc par gallon")
