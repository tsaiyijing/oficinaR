#Script Name: colab_time_series
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script retirado do livro "R para Cientistas Sociais", de Jakson Alves de Aquino
#Description: Criar série temporal

#Criar gráfico de serie temporal
#Crie uma tabela CSV com valores de uma variável de acordo com um intervalo de tempo contínuo
# Atenção: não pode haver interrupção na frequência (uma lacuna de um dia, ou um mês)
meus_dados_ts <- read.csv("~/Dropbox/Pasta/meus_dados_ts.csv", sep=",")

#Caso necessário, converta os valores em datas
meus_dados_ts$VARIAVEL <- as.Date(meus_dados_ts$VARIAVEL, "%d/%m/%y")

#Plotar série temporal Caso 1
ts.plot(meus_dados_ts$VARIAVEL, ylab = "Freq",
        xlab = "2018", lty = 1, gpars=list(xaxt="n"))

#Defina os valores dos eixos
#axis(1, at = venezuela_ts$X, cex.axis = .7)
#axis(1, at = seq(6, 11, by = 1), labels = F, las=3)
#axis(1, at = seq(as.Date("2018/6/1"), as.Date("2018/12/1"), by="mon"))

#Defina a legenda do gráfico
legend("topright", legend = c("Latrocínios", "Furtos/1000"),
       lty = 1:2, bty = "3")

#Plotar série temporal Caso 2
#ts.plot(ts.lat, ts.fur, lty = 1:2, ylab = "Nº de ocorrências",
#        xlab = "Ano")
ts.plot(venezuela_ts$serie, ylab = "150",
        xlab = "2018", lty = 1, gpars=list(xaxt="n"))
legend("topright", legend = c("Latrocínios", "Furtos/1000"),
       lty = 1:2, bty = "n")

