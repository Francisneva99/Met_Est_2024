# Francisco Javier Herrera Nevarez 
# Matricula: 2019566 
# 20/08/2024 
# Laboratorio 1

celular <- 300
transporte <- 240 
comestibles <- 1527 
gym <- 400
alquiler <- 1500
otros <- 1833
# Gastos totales por mes___________________________________________________________________
gastos <- c(300, 240, 1527, 400, 1500, 1833)
300 + 240 + 1527 + 400 + 1500 + 1833
#Total= 5800 

# Gasto en un semestre (5 meses)_____________________________________________________________
5800 * 5
#total= 29,000

# Gasto en un año (10 meses)__________________________________________________________________
5800 * 10
#Total= 58,000

#barplot____________________________________________________________________________________
gastos2 <- c("otros", "comestibles", "alquiler", "gym", "celular", "transporte")
gas <- sort(gastos, decreasing = T)
barplot(gas, ylim= c(0, 2000), names.arg = gastos2, col = "lightgreen", 
        xlab = "Concepto", ylab = "Dinero",
        main = "Gastos")







