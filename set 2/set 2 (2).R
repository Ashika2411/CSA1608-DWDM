prices <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,
            12,14,14,14,15,15,15,15,15,15,
            18,18,18,18,18)

print(table(prices))

barplot(table(prices),
        main = "Electronics Prices",
        xlab = "Price",
        ylab = "Frequency")