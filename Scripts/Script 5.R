#Francisco Javier Herrera Nevarez 24/09/2024
#Muestras dependientes 
#mismos individuos medidos en dos tiempos 2012 vs 2013, produccion de semillas 

tiempo <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/muestras.dependientes2.csv", header = TRUE)
head(tiempo)
boxplot(tiempo$Kgsem ~ tiempo$Tiempo, col= "lightblue", xlab = "Año", ylab = "Semillas (Kg)")
abline(h=10.1, col= "blue", lwd =3, lty = "dotdash")
abline(h=10.9, col= "orange", lwd=3, lty = "dotdash")

#Determinacion de las medias de Kg en ambos años 
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)
#Para saber si hay diferencias solamente_______________________________________________________________
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T)
# Saber si 2013 es mayor que 2012 
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T, alternative = "less")



#COLORES 
#darkorange2, coral4, darkolivegreen, firebrick4 

#prueba T 
#Una prueba t (también conocida como prueba t de Student) es una herramienta para evaluar las medias de uno o dos 
#grupos mediante pruebas de hipótesis. Una prueba t puede usarse para determinar si un único grupo 
#difiere de un valor conocido (una prueba t de una muestra), si dos grupos difieren entre sí (prueba t de muestras independientes), 
#o si hay una diferencia significativa en medidas pareadas (una prueba t de muestras dependientes o pareada).
#para la prueba de normalida se utiliza la prueb shapiro test 
#H0 nula 
#H1 alternativa 
# 0.05 - alfa todo menor a este es hipptesis nula 
# prueba de ho,megeneidad, ●	Propósito: Verificar si las varianzas de dos o más grupos son iguales (homogeneidad).
