library(projmanr)

# Cargar Datos
data1 <- taskdata1
data2 <- taskdata2
# Diagrama de Gantt https://rdrr.io/cran/projmanr/man/gantt.html
gantt(data1)
gantt(data2)
# Diagrama de Red
network_diagram(data1)
network_diagram(data2)
# Destacar camino crítico
res1 <- critical_path(data1)
res2 <- critical_path(data2)
# Diagrama de Gantt con camino critico
gantt(res1)
gantt(res2)
# Diagrama de red con camino crítico
network_diagram(res1)
network_diagram(res2)