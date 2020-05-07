#Script Name: colab_ca
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido com a supervisão de Emerson Cervi
#Description: Plotar gráfico de análise de correspondência canônica

##Breve explicação sobre correspondência canônica:
##https://www.statmethods.net/advstats/ca.html

#The first graph is the standard symmetric representation
#of a simple correspondence analysis with rows and column represented by points.
#
#https://www.statmethods.net/advstats/images/ca3.jpg
#
#Row points (column points) that are closer together have more similar
#column profiles (row profiles). Keep in mind that you can not interpret
#the distance between row and column points directly.

#Solicitar pacotes necessários
#install.packages(ca)
library(ca)

#Criar tabela cruzada
table(meme_ca_arecat$AREA, meme_ca_arecat$CATEGORIA)
#Ou verificar o script colab_cross_table.R

#Executar análise de correspondência canônica
ca(table(meme_ca_arecat$AREA, meme_ca_arecat$CATEGORIA))

#Plotar gráfico de análise de correspondência canônica
plot(ca(table(meme_ca_arecat$AREA, meme_ca_arecat$CATEGORIA)))
     
#Customizar gráfico
#O parâmetro main indica o título do gráfico
#Os parâmetros ylab e xlab indicam os nomes dos eixos
#O parâmetro col indica as cores em vetores RGB
#O parâmetro col.lab indica as cores dos labels em vetores RGB
plot(ca(table(meme_ca_arecat$AREA, meme_ca_arecat$CATEGORIA)),
     main="Décadas x Tipos", 
     ylab="Dimensão 2 (6,3%)", xlab="Dimensão 1 (89,3%)",
     col = c("#433f62","#FF914B"), col.lab = c("#433f62","#FF914B"))

#Dando zoom em determinadas áreas
#Os parâmetros xlim e ylim definem os recortes
plot(ca(table(meme_ca_arecat$AREA, meme_ca_arecat$CATEGORIA)),
     main="Décadas x Tipos", xlim = c(0.0,0.5), ylim = c(0.0,1.0), 
     ylab="Dimensão 2 (6,3%)", xlab="Dimensão 1 (89,3%)",
     col = c("#433f62","#FF914B"), col.lab = c("#433f62","#FF914B"))
