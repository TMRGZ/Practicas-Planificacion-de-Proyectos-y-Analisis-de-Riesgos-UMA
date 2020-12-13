x <- runif(10000, 0, 1)
y <- runif(10000, 0, 1)
simul <- data.frame(cbind(x, y))

simul$dist <- sqrt(x**2 + y**2)
simul$ok <- as.factor((simul$dist >= 1) * 1)

plot(simul$x, simul$y, pch = c(1, 2)[simul$ok], col = c(1, 2)[simul$ok])
x <- seq(0, 1, by = 0.05)
y <- sqrt(1 - x**2)
circunferencia <- data.frame(cbind(x, y))
lines(circunferencia, col = "white", lwd = 5)

print((nrow(subset(simul, ok == "0")) / nrow(simul)) * 4)