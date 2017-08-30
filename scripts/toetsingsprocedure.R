#Uitvoeren van toetsingsprocedure op gemiddelde

n <- 50
alpha <- 0.05 
x <- 25
s <- 55z
testx <- 27
z <- (x - testx)/ (sqrt(s/n))
pnorm(z)

