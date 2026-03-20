install.packages("mlbench")
install.packages("randomForest")

library(mlbench)
library(randomForest)

data("BreastCancer")

cancer_data <- BreastCancer

cancer_data$Id <- NULL

cancer_data <- na.omit(cancer_data)

cancer_data[] <- lapply(cancer_data, function(x) {
  if (is.factor(x)) as.factor(x) else x
})

set.seed(123)
train_index <- sample(seq_len(nrow(cancer_data)), size = 0.7 * nrow(cancer_data))

train_data <- cancer_data[train_index, ]
test_data  <- cancer_data[-train_index, ]

rf_model <- randomForest(Class ~ ., data = train_data, ntree = 120)

predictions <- predict(rf_model, newdata = test_data)

conf_matrix <- table(Actual = test_data$Class, Predicted = predictions)
print(conf_matrix)

accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("Model Accuracy =", round(accuracy * 100, 2), "%\n")
