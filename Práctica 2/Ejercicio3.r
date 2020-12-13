library(lpSolve)

a <- matrix(data = c(1, 225000000, 2, 0, 180000000, 3), ncol = 2)
b <- c(2, 1350000000, 10)
dir <- c(">=", "<=", ">=")

for (i in 0:10) {
    print(paste("Ponderacion a =", sep = " ", i / 10))
    coef <- c((35.069 * (i / 10) - 9.715), 28.425 * (i / 10) - 6.21)
    solucion <- lp("max", coef, a, dir, b)
    print(solucion$solution)
    print(paste("   Beneficio:", sep = " ", 25354 * solucion$solution[1] + 22215 * solucion$solution[2]))
    print(paste("   Consumo:", sep = " ", 9.715 * solucion$solution[1] + 6.21 * solucion$solution[2]))
}
