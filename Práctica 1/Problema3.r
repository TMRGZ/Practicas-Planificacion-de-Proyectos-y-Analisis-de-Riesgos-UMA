library(lpSolve)
coef <- c(10,50,20,80,20)
A <- matrix(c(  3,2,2,3,4,
                2,2,3,6,4,
                2,2,8,5,3,
                4,9,5,3,2), ncol=5)
b <- c(30,80,10,60)

solucion <- lp.transport(A, direction = "min", rep('=', 4), b, rep('=', 5), coef)
solucion
solucion$solution