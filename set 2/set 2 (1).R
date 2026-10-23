pref <- data.frame(
  A = c(18, 2, 20),
  B = c(22, 28, 10),
  C = c(20, 40, 40)
)

print(cov(pref$B, pref$C))
print(cov(pref))

print(cor(pref$B, pref$C))
print(cor(pref))

print(chisq.test(as.matrix(pref)))