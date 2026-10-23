h <- hist(AirPassengers,
          breaks = seq(100, 700, by = 150),
          xlim = c(100, 700),
          main = "AirPassengers Histogram",
          xlab = "Number of Passengers",
          ylab = "Frequency")

print(h$counts)