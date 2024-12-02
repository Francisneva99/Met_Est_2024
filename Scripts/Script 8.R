#Francisco Javier Herrera Nevarez
#REGRESION LINEAL (28/10/24)

#Y'= ALFA x + B (x) 
# x=0 (y=?) cuando x vale 0 cuanto es lo que vale y, por ende cuando aumenta en "x" cuanto aumemeta "y" 

#r2 es el coeficiente de determinacion, este nos indica el porcentaje que la varable x explica la variable y 

# lm (modelo lineal) para obtener la linea de tendencia central y buscar la pendeinte (beta) y el intersepto (alpha)

#Datos de erupciones de un geyser "REGRESION LINEAL"
#Francisco Javier Herrera Nevarez 

geyser <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/Erupciones.csv", header = T)
head(geyser)
#la variable dependiente es la erupcion y la independiente es el tiempo. 

plot(geyser$waiting, geyser$eruptions, pch=18, col = "cadetblue4", xlab = "Tiempo de espera (min)", ylab = "Duracion (min)")

range(geyser$eruptions)
range(geyser$waiting)

#Correlacion de las variables. 
cor.test(geyser$eruptions, geyser$waiting)

#Revisar si existe una relacion linael entre 2 variables. 
#la pregunta: ¿puedo presedecir el tiempo de la erupcion en base al tiempo de espera dos erupciones consecutivas. 

#si no hay paraes de datos no puedo relizar una correlacion ni una regrecion lineal. 

#Sin guardar 
lm(geyser$eruptions ~ geyser$waiting)

#para guardar la informacion del modelo lineal 
gy.lm <- lm(geyser$eruptions ~ geyser$waiting)

summary(gy.lm) 

#proceso de verificacion para ver si sale la linea de tendencia  

plot(geyser$waiting, geyser$eruptions, pch=18, col = "cadetblue4", xlab = "Tiempo de espera (min)", ylab = "Duracion (min)")
abline(gy.lm, col = "coral4", lwd = 3)
# si sale en medio de los datos nos indica que la formula esta correcta 
#lwd = se usa para definir en grozor de la linea.

#se agrega una tabla del valor predicho (residuales "diferencia entre el observado y el predicho)
geyser$predicho <- gy.lm$fitted.values
geyser$prima <- -1.874016 + 0.075628 * geyser$waiting #se multiploica por Y 

#extraer los residuales 
geyser$residual <- gy.lm$residuals^2

yprima <- c(70, 75, 82)
-1.87+0.075 * yprima







