
x <- c(2,3,3,4,4,4,6,6,6,6,7,7,8,9,9,10,10,10,11,11,12,12,12,12,13,14,14,15,15,15,16,16,17,18,18,18,18,19,20,20,20,21,22,22,23,24,25,25)

b <- split(x, rep(1:4, each=12))
print(b)

print(sapply(b, mean))

print(lapply(b, function(v) {
  sapply(v, function(a)
    if(abs(a-min(v)) <= abs(a-max(v)))
      min(v) else max(v))
}))

hist(x, main="Grocery Prices", col="skyblue")
