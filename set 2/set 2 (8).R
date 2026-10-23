boxplot(mpg ~ factor(cyl),
        data = mtcars,
        main = "MPG vs Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon")