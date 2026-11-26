
A <- c(72,68,81,55,90,74,88,60,77,85)

B <- c(65,70,78,62,69,80,75,73,71,68)

cat("Section A\n")
cat("Mean:", mean(A), "\n")
cat("Median:", median(A), "\n")
cat("Range:", diff(range(A)), "\n")

cat("Section B\n")
cat("Mean:", mean(B), "\n")
cat("Median:", median(B), "\n")
cat("Range:", diff(range(B)), "\n")

boxplot(A, B,
        names=c("Section A","Section B"),
        main="Section Marks Comparison",
        ylab="Marks",
        col=c("lightblue","lightgreen"))
