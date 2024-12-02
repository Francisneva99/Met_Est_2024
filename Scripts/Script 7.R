#Correlacion 
#22/10/2024 
#Francisco Javier Herrera Nevarez 
#Correlacion 

#Cor.test -> es la funcion que me da la correlacion de los datos que tenga. 
#EJEMPLO 1__________________________________________________________________

cuarteto1 <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/Datitos.csv", header = TRUE)
head(cuarteto1)
#PROMEDIO 
mean(cuarteto1$X)
mean(cuarteto1$Y)
var(cuarteto1$X)
var(cuarteto1$Y) #varianza 
sd(cuarteto1$X)
sd(cuarteto1$Y) #desviacion estandar 
#Correlacion 
cor.test(cuarteto1$X, cuarteto1$Y)
#Cuarteto 2_____________________________________________________________
x2 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y2 <- c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)
mean(x2); mean(y2)
var(x2); var(y2)
sd (x2); sd(y2)
cor.test(x2, y2)
#CUARTETO 3_______________________________________________________________
x3 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
x4 <- c(7.76, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)
mean(x3); mean(x4)
var(x3); var(x4)
sd(x3); sd(x4)
cor.test(x3, x4)
#CUARTETO 4_______________________________________________________________
x5 <- c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8)
y4 <- c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.50, 5.56, 7.91, 6.89)
mean(x5); mean(y4)
var(x5); var(y4)
sd(x5); sd(y4)
cor.test(x5, y4)
#gtrafica________________________________________________________________
par(mfrow=c(2,2)) #para hacer un conjunto de graficas 
plot(cuarteto1$X, cuarteto1$Y, main = "Cuarteto 1")
plot(x2, y2, main = "Cuarteto 2")
plot(x3, x4, main = "Cuarteto 3")
plot(x5, y4, main = "Cuarteto 4")
par(mfrow=c(1,1))

#Datos Plantas de Ebano____________________________________________________

ebanos <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/ebanos.csv", header = TRUE)
plot(ebanos$diametro, ebanos$altura, col = "lightblue4", pch=8,
     xlab = "dbh(mm)", ylab = "Altura(cm)")
text(15,20, "r =0.82")
cor.test(ebanos$diametro, ebanos$altura)


