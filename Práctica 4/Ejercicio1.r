library(markovchain)
library(diagram)

dtmcA <- new("markovchain",
    transitionMatrix = matrix(data = c(
        0.3, 0.3, 0.4,
        0.4, 0.4, 0.2,
        0.5, 0.3, 0.2
    ), nrow = 3, byrow = TRUE),
    states = c("Centro", "Este", "Oeste"),
    name = "Agencia"
)
dtmcA
plot(dtmcA)
plot(dtmcA, package = "diagram", box.size = 0.04)


initialState <- c(1, 0, 0)
steps <- 2
finalState <- initialState * dtmcA^steps
finalState
steadyStates(dtmcA)
