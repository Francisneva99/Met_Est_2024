#Laboratorio semana 3 
# 30/08/2024
#Francisco Javier Herrera Nevarez 
#Matricula: 2019566

#IMPORTAR DATOS DE TRABAJO------------------------------------------------------------------------
tabla <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/DATOS.csv", header = TRUE)
head(tabla)
#Seleccion de datos-------------------------------------------------------------------------------

# Aplicar la función subset para la variable Altura-----------------------------------------------
H.media <- which(tabla$Altura <16.5)
H.media
mean(tabla$Altura)
H.Media <- which(tabla$Altura <= mean(tabla$Altura)) 
H.Media
H.Media <- which(tabla$Altura>18.5)
H.Media
# Aplicar la función subset para la variable Vecinos-----------------------------------------------
Vecinos.3 <- which(tabla$Vecinos<=3)
Vecinos.3
Vecinos.4 <- which(tabla$Vecinos>4)
Vecinos.4
# Aplicar la función subset para la variable Diametro---------------------------------------------
mean(tabla$Diametro)
DBH.media <- which(tabla$Diametro<mean(tabla$Diametro))
DBH.media
DBH.16  <- which(tabla$Diametro>16)
DBH.16
DBH.16 <- which(tabla$Diametro<=16.9)
DBH.16
 # Histogramas-------------------------------------------------------------------------------------
hist(tabla$Altura, col = "lightblue")
hist(H.media, col = "lightgreen")
hist(H.Media, col = "lightyellow")
hist(tabla$Vecinos, col = "lightpink")
hist(Vecinos.3, col = "blue")
hist(Vecinos.4, col = "green")
hist(tabla$Diametro, col = "yellow")
hist(DBH.media, col = "orange")
hist(DBH.16, col = "purple")
# Determinar la media-------------------------------------------------------------------------------
mean(tabla$Altura)
mean(H.media)
mean(H.Media)
mean(tabla$Vecinos)
mean(Vecinos.3)
mean(Vecinos.4)
mean(tabla$Diametro)
mean(DBH.media)
mean(DBH.16)



