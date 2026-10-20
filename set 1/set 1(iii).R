x <- c(200,300,400,600,1000)

min_max_norm <- (x - min(x)) / (max(x) - min(x))
print(min_max_norm)

z_score_norm <- (x - mean(x)) / sd(x)
print(z_score_norm)