library(boot)

funcion <- c(20, 30)
restr1 <- c(3, 6)
restr2 <- c(1, 0.5)
restr3 <- c(1, 1)

solucion1 <- simplex(a = funcion, A1 = rbind(restr1, restr2, restr3), b1 = c(150, 22, 27.5), maxi = TRUE)
