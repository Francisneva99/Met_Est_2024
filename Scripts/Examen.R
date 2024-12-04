#Francisco Javier Herrera Nevarez 
#Exámen Parcial 2024-09-23

# 5) Ejemplo 1 
parcelas <- read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/refs/heads/main/Datos_Examen/parcelas.csv")
head(parcelas)
shapiro.test(parcelas$Diámetro)
# 6) Valor de T 
t.test(parcelas$Diámetro~ parcelas$Parcelas)
# 7) diferencia en diametro A Y B 
mean(parcelas$Diámetro)

