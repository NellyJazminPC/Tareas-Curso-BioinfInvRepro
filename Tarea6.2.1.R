# Script para el ejercicio 1 (..Prac_Uni6/maices/bin)
#El script debe corre en cualquier equipo, asumiendo que se encuentre en: 
#Prac_Uni6/maices/bin y que éste sea el WD

getwd()
# Limpiamos Environment 

rm(list = ls())

# 1) Cargar en una df llamada fullmat el archivo Prac_Uni6/maices/meta/maizteocintle_SNP50k_meta_extended.txt
fullmat<- read.delim(file= paste0(getwd(), "/../meta/maizteocintle_SNP50k_meta_extended.txt"))

# 2) ¿Qué tipo de objeto creamos al cargar la base?
class(fullmat)

# 3) ¿Cómo se ven las primeras 6 líneas del archivo?
head(fullmat)

# 4) ¿Cuántas muestras hay?
nrow(fullmat)

# 5) ¿De cuántos estados se tienen muestras?
length(levels(fullmat$Estado))

# 6) ¿Cuántas muestras fueron colectadas antes de 1980?
sum(fullmat$A.o._de_colecta<1980, na.rm=TRUE)

# 7) ¿Cuántas muestras hay de cada raza?
table(fullmat$Raza)

# 8) En promedio ¿a qué altitud fueron colectadas las muestras?
mean(fullmat$Altitud)

# 9) ¿Y a qué altitud máxima y mínima fueron colectadas?
max(fullmat$Altitud)
min(fullmat$Altitud)

# 10) Crear una nueva df de datos sólo con las muestras de la raza Olotillo
olotillomat<-fullmat[fullmat$Raza=="Olotillo", ]

# 11) Crear una nueva df de datos sólo con las muestras de la raza Reventador, Jala y Ancho
x<-fullmat$Raza %in% c("Reventador", "Jala", "Ancho")
Rev_Jal_Anc<-fullmat[x, ]

# 12) Escribe la matriz anterior a un archivo llamado "submat.csv" en /meta.
write.csv(Rev_Jal_Anc, file= paste0(getwd(), "/../meta/submat.csv"))

