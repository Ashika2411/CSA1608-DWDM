x <- c(200, 300, 400, 600, 1000)

minmax <- (x - min(x)) / (max(x) - min(x))
zscore <- as.numeric(scale(x))

print(minmax)
print(zscore)

v <- (80000 - 50000) / (100000 - 50000)
print(v)