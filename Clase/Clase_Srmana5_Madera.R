#cLASE DEL 10/SEP/2024
#Datos de madera 

Url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"
madera <- read.csv(Url, header = T)
#Boxplot-----------------------------------------------------------------------------------------------------
boxplot(madera$Peso_g ~ madera$Especie, col= "lightblue")
# se observa que pueden llegar a ser normales pero se nesecita hacer una prueba para estar seguros (la barreta es mas ligera que la gavia)

#COMPARAR LA NORMALIDAD DE LA VARIABLE/ TEST DE SHAPIRO
shapiro.test(madera$Peso_g)
# se determino que si son normales 

#COMPARAR LA VARIANZA/ TEST DE BARLETT 
bartlett.test(madera$Peso_g ~ madera$Especie)

#HOMOGENISAR VALORES
madera$peso_t <- log(madera$Peso_g+0.5)

#Boxplot-----------------------------------------------------------------------------------
boxplot(madera$peso_t ~ madera$Especie, col= "orange")

#RAIZ CUADRADA/ PEUEBA DE T-----------------------------------------------
t.test(madera$Peso_g ~ madera$Especie, var.equal =F)
t.test(madera$Peso_g ~ madera$Especie, var.equal =T)

#LADO C/ COMPRACION CON ESPECIE----------------------------------------------------------
boxplot(madera$Lado_C ~ madera$Especie, col= "cadetblue")
shapiro.test(madera$Lado_C)
bartlett.test(madera$Lado_C ~ madera$Especie)
