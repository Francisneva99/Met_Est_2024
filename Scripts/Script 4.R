#Francisco Javier Herrera Nevarez 23/09/2024
#pueba T_ muestras independientes 
#Realizar la comparacion de una muestra experimental vs una muestra teorica 

semillas <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/Datos.semillas.csv", header = TRUE)
head(semillas)
#PROBAR LA NORMALIDAD DE LOS DATOS
#primera visulizacion de los datos-----------------------------------------------------------------------------------
boxplot(semillas$Peso, col = "lightblue")
abline(h =6.2, col= "blue", lwd =3, lty = "dotdash")
abline(h =5.7, col= "orange", lwd =3, lty = "dotdash")

#prueba de normalidad de los datos-----------------------------------------------------------------------------------
shapiro.test(semillas$Peso)
#prueba T -----------------------------------------------------------------------------------------------------------
t.test(semillas$Peso, mu = 6.2) #No existen diferencias entre el peso observado y el peso de la muestra teorica 
#por lo tanto aceptamos la hipotesis alternativa 

# EJEMPLO 2 _ HAORA LA MEDIA TEORICA ES DE 5.85______________________________________________________________________
t.test(semillas$Peso, mu = 5.78)
boxplot(semillas$Peso, col = "lightblue")
abline(h =5.78, col= "blue", lwd =3, lty = "dotdash")
abline(h =5.7, col= "orange", lwd =3, lty = "dotdash")