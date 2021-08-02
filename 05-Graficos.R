#Definindo a pasta de trabalho
setwd("C:/Users/User/Desktop/DSA/PowerBI/Capitulo12")
getwd()

# dados
vetor_total_resultados = c(3,12,5,18,45)
names(vetor_total_resultados) = c("A","B","C","D","E")
vetor_total_resultados

# Barplot
?barplot
barplot(vetor_total_resultados)
barplot(vetor_total_resultados, col = c(1,2,3,4,5))

# salvando o gráfico em disco
png("barplot.png", width = 480, height = 480 )
barplot(vetor_total_resultados, 
        col = rgb(0.5,0.1,0.6,0.6),
        xlab = "Categorias",
        ylab = "Valores",
        main = "Barplot em R",
        ylim = c(0,60))
dev.off()

# GGplot2
library(ggplot2)
View(mtcars)

# barplot
ggplot(mtcars, aes( x = as.factor(cyl))) +
        geom_bar()
ggplot(mtcars, aes(x = as.factor(cyl), fill= as.factor(cyl)))+
        geom_bar() +
        scale_fill_manual(values = c("red", "Green", "blue"))

# Criando dados Dummy
dados = data.frame(group = c("A","B","C","D"), value=c(33,62,56,67))
View(dados)

#barplot
ggplot(dados, aes(x = group, y = value, fill = group)) +
        geom_bar(width = 0.85, stat="identity")

# pie Chart
fatias <- c (4,12,14,16,8)
paises <- c("Brasil","Estados Unidos","Alemanha","Reino Unido","Espanha")
pie(fatias, labels = paises, explode = 0.1, main = "leitura de  livros por Pessoa/Ano")

# Pie Chart 3D
install.packages("plotrix")
library(plotrix)

fatias <- c (4,12,14,16,8)
paises <- c("Brasil","Estados Unidos","Alemanha","Reino Unido","Espanha")
pie3D(fatias, labels = paises, explode = 0.3, main = "leitura de  livros por Pessoa/Ano")

# Line Chart

# Dados
carros <- c(1,3,6,4,9)
caminhoes <- c(2,5,4,5,12)

#plot
plot(carros, type = "o", col="blue", ylim= c(0,12))
lines(caminhoes, type = "o", pch = 22, lty=2, col = "red")
title(main = "Produção de Veículos", col.main = "blue", font.main = 4)

#Boxplot
library(ggplot2)
View(mpg)

# plot
ggplot(mpg, aes(x = reorder(class, hwy), y = hwy, fill = class)) + 
        geom_boxplot() + 
        xlab("class") + 
        theme(legend.position = "nome")

# Scatter Plot
data = data.frame(cond = rep(c("condition_1", "condition_2"), each=10),
                  my_x = 1:100 + rnorm(100,sd=9), my_y = 1:100 + rnorm(100, sd=16))

ggplot(data,aes(x=my_x, y=my_y))+
        geom_point(shape=1)

# Adiciona linha de regressão
ggplot(data, aes(x=my_x, y=my_y)) +
        geom_point(shape=1) +
        geom_smooth(method = lm, color="red", se = FALSE)

#Adiciona Smooth
ggplot(data, aes(x=my_x, y=my_y)) +
        geom_point(shape=1) +
        geom_smooth(method = lm, color="red", se = TRUE)

#Treemap
install.packages("treemap")
library(treemap)

####Histograma######
# Gerando Valores para X
x <-mtcars$mpg

# Criando o Histograma
h <- hist(x,
          breaks = 10,
          col = "red",
          xlab = "Milhas por Galão",
          main = "Histograma com curva de distribuição")



