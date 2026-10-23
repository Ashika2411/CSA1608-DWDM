scores <- c(12, 15, 18, 20, 22, 24, 26, 28, 30, 75)

boxplot(scores,
        main = "Tennis Players' Scores",
        xlab = "Points Scored",
        horizontal = TRUE)

print(boxplot.stats(scores)$out)