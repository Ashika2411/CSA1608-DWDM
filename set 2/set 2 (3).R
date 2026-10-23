A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

print(mean(A))
print(median(A))
print(diff(range(A)))

print(mean(B))
print(median(B))
print(diff(range(B)))

boxplot(A, B,
        names = c("Class A", "Class B"),
        main = "Class Results",
        ylab = "Marks")