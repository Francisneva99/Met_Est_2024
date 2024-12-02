#Analisis de Varianza (Anova)
#12/11/2024
#Francisco Javier Herrera Nevarez 
#El ANOVA permite comprobar si existen diferencias significativas entre las medias de los grupos, 
#lo que ayuda a los investigadores a determinar si la variación de los datos se debe a diferencias reales entre los grupos o sólo al azar.
# se debe tener minimo 3 muestras para poder realizar esto. el propocito es encontrar de donde proviene la variacion. 
#Usualmente, el ANOVA de un factor se emplea cuando tenemos una única variable o factor independiente y el objetivo es investigar si las variaciones 
#o diferentes niveles de ese factor tienen un efecto medible sobre una variable dependiente.

#Prueba de Tukey: se usa en experimentos que implican un número elevado de comparaciones. compara todas las combinaciones posibles de pares de poblaciones 
#para determinar cuáles difieren significativamente entre sí.

#EJERCICIO----------------------------------------------------------------------------------------------------------------------------------

#ANOVA
#Experimento de 4 parajes y sus diametros, se encuentra en Chihuahua 
paraje <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/Datos.Anova.CSV", header = T)
head(paraje)

paraje$Paraje <- as.factor(paraje$Paraje) #convertirlo a factor 
#boxplot 
boxplot(paraje$DAP ~ paraje$Paraje, col = "orange")
#determinar medias con la funcion 
tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var) #varianzas 

#prueba de normalidad 
shapiro.test(paraje$DAP)
#homogeneidad de varianzas 
bartlett.test(paraje$DAP ~ paraje$Paraje) #se cumplio la homogeneidad de varianzas, por lo que se puedo aplicar ANOVA
#analisis de Varianza (ANOVA)
par.aov <- aov(paraje$DAP ~ paraje$Paraje)
summary(par.aov)
#cuando se divide el cuadrado medio del tratamento entre el cuadrado medio del residual y la variacion es mayor en el tratamiento
#es pq hay diferencia significativa. 

#Prueva de Tukey : esta nos indica en donde se encuentra las diferencias. 
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov)) #identificar las diferencias por medio de una grafica.







