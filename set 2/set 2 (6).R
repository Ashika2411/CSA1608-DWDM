matplot(mtcars[, c("mpg", "qsec")],
        type = "l",
        col = c("black", "blue"),
        lty = 1,
        xlab = "Car Index",
        ylab = "Values",
        main = "MPG and QSEC")

legend("topright",
       legend = c("MPG", "QSEC"),
       col = c("black", "blue"),
       lty = 1)