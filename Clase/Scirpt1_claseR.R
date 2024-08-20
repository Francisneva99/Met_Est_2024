#Francisco Javier Herrera 
#20/08/24

#problema 1______________________________________________________________________

#Ingresar en objetos la uperficie reforestacion por especie 

Pinus <- 3140 
Mezquite <- 1453 
Encinos <- 450 
Teka <- 1200 
Juniperus <- 720 

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperus)
sup <- c(3140, 1453, 450, 1200, 720) 

sup
superficie

#Operaciones________________________________________________________________________________
#Transformar ha a m2 
 sup * 10000
m2 <- superficie * 10000 
sup * 10000

#Graficas________________________________________________________________________________
barplot(superficie)
#color_______________________________________________________________
barplot(superficie, ylim = c(0, 3500), col= "lightblue")
#Nombre_________________________________________________________________________________
nombre <- c("Pinus", "Mez", "Teka", "Jun", "Encino")
barplot(superficie, ylim = c(0, 3500), col= "lightblue", names.arg = nombre)
#Nombre de los ejes X y y________________________________________________________________________
xlab = "Especie"
ylab = "Superficie (ha)"
sup2 <- sort(superficie, decreasing = T)
barplot(sup2, ylim = c(0, 3500), col= "lightblue", names.arg = nombre, xlab = "Especies", ylab = "Superficie (ha)", 
        main = "Reportes CONAFOR")
#Ordenar____________________________________________________________________________________________
sup2 <- sort(superficie, decreasing = T)
barplot(sup2, ylim = c(0, 3500), col= "lightblue", names.arg = nombre, xlab = "Especies", ylab = "Superficie (ha)", 
        main = "Reportes CONAFOR")







