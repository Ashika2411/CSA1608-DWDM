data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)

bins <- split(data, rep(1:5, each=5, length.out=length(data)))

sapply(bins, mean)
sapply(bins, median)

boundary_smooth <- lapply(bins, function(b) {
  sapply(b, function(x) {
    boundaries <- range(b)
    boundaries[which.min(abs(boundaries - x))]
  })
})
print(boundary_smooth)