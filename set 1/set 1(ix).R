marks <- c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75)
sorted_marks <- sort(marks)
bins <- split(sorted_marks,
              rep(1:3, each = 6, length.out = length(marks)))
print(bins)
bins_width <- cut(marks, breaks = 3)
print(bins_width)
hist(marks, breaks = 3, xlab = "Marks",
     main = "Marks Histogram")