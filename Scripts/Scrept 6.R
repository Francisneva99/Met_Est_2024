#Ejercicios 
#Francisco Javier Herrera Nevarez 
#15/10/2024 

Pseodo <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/pseodostrobus.2.CSV", header = TRUE)
head(Pseodo)

#Prueba T_______________________________________________________________________________________
t.test(Pseodo)
t.test(Pseodo$Grupo.1, Pseodo$Grupo.2)
t.test(Pseodo$Grupo.1)
t.test(Pseodo$Grupo.2)
#Medias________________________________________________________________________________________
mean(Pseodo$Grupo.1)
mean(Pseodo$Grupo.2)
#boxplot______________________________________________________________________
boxplot(Pseodo, xlab = "Gripo.1", ylab = "Grupo.2", col = "lightpink")

#shapiro____________________________________________________
shapiro.test(Pseodo$Grupo.1)
bartlett.test(Pseodo$Grupo.1)
t.test(Pseodo$Grupo.1 ~ Pseodo$Grupo.2, var.equal = T, alternative = "greater")

#________________________________________________________________________________________________________________________
#Ejercico 2 

suelo <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/Suelo.2.csv", header = TRUE)
head(suelo)
#PROMEDIO________________________________________________________________________________
mean(suelo$Muestra.1)
mean(suelo$Muestra.2)
#BOXPLOT________________________________________________________________________________
boxplot(suelo, xlab = "Muestra.1", ylab = "Muestra.2")
#prueba t_______________________________________________________________________________
t.test(suelo$Muestra.1, suelo$Muestra.2)































