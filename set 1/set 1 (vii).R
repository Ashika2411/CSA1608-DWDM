pencils <- c(9,25,23,12,11,6,7,8,9,10)

mean(pencils)
median(pencils)

mode_value <- names(table(pencils))[table(pencils) == max(table(pencils))]
print(mode_value)