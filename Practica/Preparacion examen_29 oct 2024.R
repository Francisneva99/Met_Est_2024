#Francisco Javier Herrera Nevarez 
#29/10/2024 

#PREPARACION PARA SEGUNDO EXAMEN  
#EJERCICIO 1_______________________________________________________________________
Grupo <- gl(2, 15, labels = c("Bosque Templado", "Bosque Tropical"))
biomasa <- c(45, 48, 47, 50, 46, 49, 51, 47, 46, 52, 48, 50, 49, 47, 46,
             60, 59, 62, 61, 58, 63, 62, 61, 60, 59, 62, 60, 61, 63, 62)
Datos <- data.frame(Grupo, biomasa)
head(Datos)
# PRIEBA T 
t.test(biomasa)
# Desviacion E. 
desviacion <- sd (biomasa)
print(desviacion)
#_____________________________________________________________________________________
install.packages("dplyr")
library(dplyr)

# media y desviacion estandar por grupo. 
resultados <- Datos %>%
  group_by(Grupo) %>%
  summarise(
    Media = mean(biomasa),
    Desviacion_Estandar = sd(biomasa)
  )
print(resultados)
# prueba t entre los 2 tipos de bosque
t.test(biomasa ~ Grupo, Datos = Datos)
#_____________________________________________________________________________________
#PREGUNTAS 
#¿Cuál es la hipótesis nula y la hipótesis alternativa para la prueba de t en este contexto?
#R: HIPOTESIS N:No hay diferencia en las medias de biomasa entre el bosque templado y el bosque tropical.
#HIPOTESIS AL: Hay una diferencia en las medias de biomasa entre el bosque templado y el bosque tropical.

# ¿Cuál es la media y desviación estándar de la biomasa en cada tipo de bosque?
#Bosque Templado: 48.1 Y Bosque Tropical: 60.9 

# ¿Existe una diferencia estadísticamente significativa al nivel de significancia del 5%?
# si existe una diferencia significativa ya que el valor p es menor que 0.05, por lo que se puede rechazar la hipótesis nula
#por lo que las medias de biomasa entre el bosque templado y el bosque tropical son diferentes. 

# Interpreta el valor p obtenido de la prueba de t y explica si se debe rechazar o no la hipótesis nula.
# el valor p es menor a 0.05 y esto indica que se puede rechazar la hipotesis nula. 

# ¿Qué implicaciones podría tener este resultado para la gestión de recursos forestales en México?
# Conocer las diferencias en biomasa puede ayudar a desarrollar estrategias de manejo sostenible 
#que ayuden a la producción de recursos forestales, por lo que el buen manejo de estos pueden ayudar a la economia
#local o del pais. 

#EJERCICIO 2____________________________________________________________________________________________

Madera <- read.csv("C:/Repositorios_FJHN/Met_Est_2024/Clase/Madera.pinus.csv", header = T)
head(Madera)
#Diferencia 
Madera$diferencia_dureza <- Madera$Dureza.Posterior - Madera$Dureza.Inicial
print(Madera)
#media y desviacion 
mean(Madera$diferencia_dureza)
sd(Madera$diferencia_dureza)

#PREGUNTAS_____________________________________________________________________________________________
#¿Cuáleslahipótesisnulaylahipótesisalternativaparalapruebadetapareadaenestecontexto?
#HIPOTESIS N: el tratamiento no tiene efecto en la dureza de la madera.
#HIPOTESIS AL: el tratamiento tiene un efecto positivo o negativo en la dureza.

#¿Cuáles la media y la desviación estándar de estas diferencias?
#media: 0.3333333 desviacion: 0.08441823 


# Ejercicio 3

# Peso de los sacos
pesos <- c(24.8, 24.5, 24.7, 24.6, 24.3, 24.9, 24.4, 24.5, 24.6, 24.2,
           24.5, 24.4, 24.3, 24.7, 24.8, 24.5, 24.3, 24.4, 24.6, 24.2)

# Calcular la media
media_pesos <- mean(pesos)
media_pesos

# Calcular la desviación estándar
desviacion_pesos <- sd(pesos)
desviacion_pesos


#a salida de la prueba de t (t_test) incluirá varios valores importantes, entre ellos:

#Estadístico t: Indica la magnitud de la diferencia en términos de desviación estándar.
#Grados de libertad: Son los grados de libertad de la prueba, calculados como 
#𝑛
#−
#1
#n−1, donde 
#𝑛
#n es el tamaño de la muestra.
#Valor de p: Este es el valor clave para decidir si rechazamos o no la hipótesis nula.
#Interpretación del Valor de p
#Si el valor de p es menor a 0.05 (el nivel de significancia), entonces tenemos suficiente evidencia para rechazar la hipótesis nula y concluir que el peso promedio de los sacos es significativamente menor que 25 kg.
#Si el valor de p es mayor a 0.05, no se rechaza la hipótesis nula, y por lo tanto no podemos concluir que el peso promedio es menor que 25 kg.
#6. Implicaciones Prácticas del Resultado
#Si el valor de p es significativo y se rechaza la hipótesis nula, esto sugiere que los sacos de alimento pesan, en promedio, menos de lo esperado (25 kg). Esto tiene varias implicaciones prácticas para el rancho:

#Calidad del Producto: Los sacos más livianos que el peso esperado podrían indicar una inconsistencia en la calidad o precisión del envasado del proveedor.
#Costos y Presupuesto: Al recibir menos cantidad de alimento de la esperada, el rancho podría estar pagando más por menos producto, lo que impacta el presupuesto.
#Planificación de la Alimentación: Si el alimento es insuficiente, es posible que los animales no reciban la cantidad de nutrición planeada, lo cual podría afectar su salud y crecimiento.
#Si el valor de p no es significativo y no se rechaza la hipótesis nula, se puede concluir que no hay evidencia suficiente para decir que los sacos pesan menos de 25 kg en promedio, lo que indicaría que el proveedor cumple con lo esperado.



# Realizar la prueba de t de una muestra
t_test <- t.test(pesos, mu = 25, alternative = "less")
t_test

#pesos es el vector de datos.
#mu = 25 establece el valor de la hipótesis nula (peso esperado de 25 kg).
#alternative = "less" indica que estamos probando si el peso promedio es menor que 25.

# Mostrar resultados
media_pesos
desviacion_pesos
t_test












