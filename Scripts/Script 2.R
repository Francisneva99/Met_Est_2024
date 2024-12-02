#Clase_ 02/Sep/2024
#Francisco Javier Herrera Nevarez-------------------------------------------------------
#Instalar paquetes_______________________________________________________________________
library(repmis)
#Cambir variable----------------------------------------------------------------------------
tabla$Posicion <- as.factor(tabla$Posicion)
tabla$Especie <- as.factor(tabla$Especie)
summary(tabla)
#boxplot----------------------------------------------------------------------------------
boxplot(tabla$Diametro ~ tabla$Especie, xlab = "Especie", ylab = "Diametro", col = "lightblue")
boxplot(tabla$Vecinos ~ tabla$Especie, xlab = "Especie", ylab = "Vecinos", col = "lightpink")

#Extraccion (subconjunto)____________________________________________________________________________
SpF <- subset(tabla, tabla$Especie == "F")
#Seleccionar Exeptuando la letra F___________________________________________________________________
SpHC <- subset(tabla, tabla$Especie != "F")
#sibolos_____________________________________________________________________
# == - igual que 
# != - todo menos tal
# >= - mayor que 
# <= - menor que 
# > Mayor 
# > Menor
#____________________________________________________________________________
#obtener la media de variable transversal 
tapply(tabla$Altura, tabla$Especie, mean)
tapply(tabla$Diametro, tabla$Especie, mean)
# Base total(ENCONTRAR VALORES DISTINTOS O IGAUALES A LA MEDIA DE...)_____________________________________________________________
SpHE <- subset(tabla, tabla$Altura >= mean(tabla$Altura))
View(SpHE)
SpHE <- subset(tabla, tabla$Altura <= mean(tabla$Altura))
SpD <- subset(tabla, tabla$Diametro == mean(tabla$Diametro))
View(SpD)
which(tabla$Altura > 20)
#Arrojar filas o celdas en especifico [F,C] F= fila, C= columna______________________________________________________________
tabla[18,]
tabla[18:20,7]
tabla[,3]
tabla[c(18,20),] #Especificar 



















