library(lpSolve)
costes <- matrix(c(4,8,7,6,7,8,5,9,7,9,4,6), ncol=4)
direccion <- "min"
capacidad.signos <- rep('<=', 3)
capacidad.valores <- c(100,200,150)
demanda.signos <- rep('>=', 4)
demanda.valores <- c(100,115,80,105)

solucion <- lp.transport(costes, direccion, capacidad.signos, capacidad.valores, demanda.signos, demanda.valores)
