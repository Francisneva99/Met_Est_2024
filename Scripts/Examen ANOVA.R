#EXAMEN FINAL ANOVA 
#04/12/2024
#FRANCISCO JAVIER HERRERA NEVAREZ 


#DATOS POR GRUPO
fertilizante_A <- c(12, 15, 14, 10, 13, 11, 16, 12, 14, 13, 12, 15, 14, 10, 11)
fertilizante_B <- c(20, 22, 19, 21, 23, 22, 20, 19, 21, 20, 22, 23, 19, 21, 22)
fertilizante_C <- c(16, 17, 18, 15, 14, 16, 17, 18, 15, 14, 16, 17, 18, 15, 14)
planta <- seq_along(1:45)

#CREAR EL DATA FRAME 
datos <- data.frame(planta = planta, tiempo = c(fertilizante_A, fertilizante_B, fertilizante_C), fertilizante = factor(rep
(c("FA", "FB", "FC"), each = 15))) 
head(datos)

tapply(datos$tiempo, datos$fertilizante, mean)
tapply(datos$tiempo, datos$fertilizante, var)

shapiro.test(datos$tiempo)
bartlett.test(datos$tiempo ~ datos$fertilizante)
par.aov <- aov(datos$tiempo ~ datos$fertilizante)
summary(par.aov)
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
