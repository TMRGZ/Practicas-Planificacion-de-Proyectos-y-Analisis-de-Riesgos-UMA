library(markovchain)
library(diagram)

quimio <- new("markovchain",
    states = c("R", "CL", "P", "CG", "M"),
    transitionMatrix = matrix(data = c(
        0.8671, 0.0024, 0.1270, 0.0035, 0,
        1, 0, 0, 0, 0,
        0, 0, 0.8623, 0, 0.1377,
        0, 0, 0.9, 0.1, 0,
        0, 0, 0, 0, 1
    ), byrow = TRUE, nrow = 5),
    name = "Quimio"
)

plot(quimio)
plot(quimio, package = "diagram", box.size = 0.04)

initialState <- c(0, 0, 1, 0, 0)
steps <- 3
finalStateQuimio <- initialState * quimio^steps
finalStateQuimio
steadyStates(quimio)

quimioB <- new("markovchain",
    states = c("R", "CL", "P", "CG", "M"),
    transitionMatrix = matrix(data = c(
        0.8720, 0.0273, 0.0823, 0.0184, 0,
        1, 0, 0, 0, 0,
        0, 0, 0.8771, 0, 0.1229,
        0, 0, 0.9, 0.1, 0,
        0, 0, 0, 0, 1
    ), byrow = TRUE, nrow = 5),
    name = "Quimio+B"
)

plot(quimioB)
plot(quimioB, package = "diagram", box.size = 0.04)

finalStateQuimioB <- initialState * quimioB^steps
finalStateQuimioB
steadyStates(quimioB)
