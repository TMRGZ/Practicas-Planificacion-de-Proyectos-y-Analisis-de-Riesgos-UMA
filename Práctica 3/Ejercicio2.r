library(projmanr)

# Cargar Datos
id <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)
name <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M")
duration <- c(2, 1.5, 1, 0.5, 5, 4, 1.5, 0.5, 6, 4, 2, 3, 5)
pred <- c(
    "",
    "1",
    "1",
    "1,2",
    "1,2",
    "1,2",
    "1",
    "1",
    "1,2,3,4,5,6,7,8",
    "1,3",
    "1,3",
    "1,3",
    "1,2,3,4,5,6,7,8,9,10,11,12"
)

data <- data.frame(cbind(id, name, duration, pred))
# Diagrama de Gantt https://rdrr.io/cran/projmanr/man/gantt.html
gantt(data)
# Diagrama de Red
network_diagram(data)
# Destacar camino crítico
res <- critical_path(data)
# Diagrama de Gantt con camino critico
gantt(res)
# Diagrama de red con camino crítico
network_diagram(res)
