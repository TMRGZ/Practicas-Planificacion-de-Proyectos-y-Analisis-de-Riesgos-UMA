library(linprog)
library(lpSolve)

# Parametros del programa
coef <- c(20, 30)
a <- matrix(data = c(3, 1, 1, 6, 0.5, 1), ncol = 2)
b <- c(150, 22, 27.5)
dir <- rep("<=", 3)

# linprog
solucion <- solveLP(coef, b, a, maximum = TRUE, dir)
# solucion

# lPSolve
solucion2 <- lp("max", coef, a, dir, b)
# solucion2
# solucion2$solution
# solucion2$objval
