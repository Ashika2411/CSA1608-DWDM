lower <- c(1,5,15,20,50,80)
upper <- c(5,15,20,50,80,110)
frequency <- c(200,450,300,1500,700,44)

cf <- cumsum(frequency)
N <- sum(frequency)
pos <- N / 2
i <- which(cf >= pos)[1]

L <- lower[i]
cf_prev <- if (i == 1) 0 else cf[i-1]
f <- frequency[i]
h <- upper[i] - lower[i]

median_value <- L + ((pos - cf_prev) / f) * h
print(median_value)