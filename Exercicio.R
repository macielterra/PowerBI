#Definindo a pasta de trabalho
setwd("C:/Users/User/Desktop/DSA/PowerBI/Capitulo12")
getwd()

# Carregando o DataSet
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exercicio 01 - apresente um resumo de tipos de dados e estatisticas do dataset.
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercicio 02 - Qual a média de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exercício 03 - Qual turma apresentou maior variabilidade de notas?
sd(notas$TurmaA)
sd(notas$TurmaB)

# Exercício 04 - Calcule o coeficiente de Variação das duas Turmas.
media_ta<-mean(notas$TurmaA)
media_tb<-mean(notas$TurmaB)

sd_ta<-sd(notas$TurmaA)
sd_tb<-sd(notas$TurmaB)

CVA <- sd_ta / media_ta*100
CVB <- sd_tb / media_tb*100

print(CVA)
print(CVB)

# Exercício 05 - Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v){
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
   }
calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)

