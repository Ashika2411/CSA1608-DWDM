install.packages("HSAUR")
library(HSAUR)
data("water")

plot(water$hardness, water$mortality,
     main = "Water Hardness vs Mortality",
     xlab = "Hardness",
     ylab = "Mortality")

model <- lm(mortality ~ hardness, data = water)
abline(model, col = "violet")

print(cor(water$hardness, water$mortality))
print(model)

print(predict(model, data.frame(hardness = 88)))