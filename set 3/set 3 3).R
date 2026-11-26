install.packages("e1071")
install.packages("rpart")
install.packages("rpart.plot")
install.packages("caret")

library(e1071)
library(rpart)
library(rpart.plot)
library(caret)

df <- data.frame(
  age = c("<=30","<=30","31...40",">40",">40",
          ">40","31...40","<=30","<=30",">40",
          "<=30","31...40","31...40",">40"),
  income = c("high","high","high","medium","low",
             "low","low","medium","low","medium",
             "medium","medium","high","medium"),
  student = c("no","no","no","no","yes","yes",
              "yes","no","yes","yes","yes","no","yes","no"),
  credit_rating = c("fair","excellent","fair","fair",
                    "fair","excellent","excellent","fair",
                    "fair","fair","excellent","excellent",
                    "fair","excellent"),
  buys_computer = c("no","no","yes","yes","yes","no",
                    "yes","no","yes","yes","yes","yes",
                    "yes","no")
)

df[] <- lapply(df, factor)

set.seed(123)

train_index <- sample(1:nrow(df), 0.7 * nrow(df))

train_data <- df[train_index, ]
test_data <- df[-train_index, ]

# Naive Bayes
nb_model <- naiveBayes(buys_computer ~ ., data = train_data)

nb_pred <- predict(nb_model, test_data)

nb_acc <- mean(nb_pred == test_data$buys_computer)

cat("Naive Bayes Accuracy\n")
print(nb_acc)

print(confusionMatrix(nb_pred, test_data$buys_computer))

# Decision Tree
dt_model <- rpart(
  buys_computer ~ .,
  data = train_data,
  method = "class"
)

rpart.plot(dt_model)

dt_pred <- predict(dt_model, test_data, type = "class")

dt_acc <- mean(dt_pred == test_data$buys_computer)

cat("Decision Tree Accuracy\n")
print(dt_acc)

print(confusionMatrix(dt_pred, test_data$buys_computer))

# Compare Accuracy
cat("Comparison of Classifier Accuracy\n")
cat("Naive Bayes Accuracy:", nb_acc, "\n")
cat("Decision Tree Accuracy:", dt_acc, "\n")