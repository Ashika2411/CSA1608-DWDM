v <- c(23,23,27,27,39,41,47,49,50,
       52,54,54,56,57,58,58,60,61)

x <- 35

min_max <- (x - min(v)) / (max(v) - min(v))
print(min_max)

z_score <- (x - mean(v)) / 12.94
print(z_score)

j <- ceiling(log10(max(abs(v)) + 1))
decimal_scaling <- x / (10^j)
print(decimal_scaling)