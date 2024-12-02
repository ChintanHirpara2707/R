# library(datasets)
# library(ggplot2)

# Load the necessary library
library(ggplot2)

# Load Iris dataset
data(iris)

# Remove the target variable for PCA (we will only use the numeric features)
iris_data <- iris[, 1:4]

# Perform PCA (standardizing the data automatically)
pca_result <- prcomp(iris_data, center = TRUE, scale. = TRUE)

# Print the PCA result
summary(pca_result)

# Print the principal components (the loadings)
print(pca_result$rotation)

# Print the variance explained by each principal component
print(pca_result$sdev^2 / sum(pca_result$sdev^2))

# Plot the first two principal components
biplot(pca_result)

# Plot PCA results (first two principal components)
pca_data <- as.data.frame(pca_result$x)
pca_data$Species <- iris$Species

# Use ggplot2 to create a scatter plot of the first two principal components
ggplot(pca_data, aes(x = PC1, y = PC2, color = Species)) +
  geom_point() +
  labs(title = "PCA of Iris Dataset", x = "Principal Component 1", y = "Principal Component 2") +
  theme_minimal()
