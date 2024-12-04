#11/11/2024
#2do Examen 
#Francisco Javier Herrera Nevarez 

#codigos pregunta 15 y 16 
set.seed(42)
n <- 30 
altura <- rnorm(n, mean = 170, sd = 10)
peso<- 0.5 * altura + rnorm(n, mean = 0, sd = 5)

t.test(altura, peso)
cor.test(altura, peso)
