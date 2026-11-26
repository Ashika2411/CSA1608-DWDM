install.packages("ggplot2")
install.packages("dplyr")
install.packages("caTools")

library(ggplot2)
library(dplyr)
library(caTools)

# Import Dataset
df <- read.csv("diabetes.csv")

str(df)
summary(df)

# Data Cleaning
df$Glucose[df$Glucose == 0] <- NA
df$BloodPressure[df$BloodPressure == 0] <- NA
df$BMI[df$BMI == 0] <- NA

df <- na.omit(df)

# Age Group Analysis
df <- df %>%
  mutate(AgeGroup = cut(
    Age,
    breaks = c(20,30,40,50,60,80),
    labels = c("21-30","31-40","41-50","51-60","61+"),
    right = FALSE
  ))

age_trends <- df %>%
  group_by(AgeGroup) %>%
  summarise(
    Count = n(),
    DiabetesRate = mean(Outcome) * 100
  )

print(age_trends)

# Bar Plot
ggplot(age_trends, aes(x = AgeGroup, y = DiabetesRate)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Diabetes Trend by Age Group",
    y = "Diabetes Rate (%)"
  )

# Simple Linear Regression
simple_model <- lm(Glucose ~ Age, data = df)

summary(simple_model)

ggplot(df, aes(x = Age, y = Glucose)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "Age vs Glucose")

# Multiple Regression
multiple_model <- lm(
  Outcome ~ Age + Glucose + BloodPressure + BMI,
  data = df
)

summary(multiple_model)

# Train-Test Split
set.seed(123)

split <- sample.split(df$Outcome, SplitRatio = 0.7)

train <- subset(df, split == TRUE)
test <- subset(df, split == FALSE)

model_test <- lm(
  Outcome ~ Age + Glucose + BloodPressure + BMI,
  data = train
)

pred <- predict(model_test, newdata = test)

results <- data.frame(
  Actual = test$Outcome,
  Predicted = pred
)

head(results)