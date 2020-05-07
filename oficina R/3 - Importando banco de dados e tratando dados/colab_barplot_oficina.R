#Script Name: colab_barplot_dummies
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido por Viktor Chagas
#Description: Criar e manipular gráficos de barra

#BARPLOT
#Criar gráfico de barras (barplot)
#Este script pode ser combinado com colab_import_data,
# responsável pela importação e manipulação dos dados

#Caso necessário, mudar nomes de variáveis
#O número indicado entre colchetes é o número do vetor ocupado
# pela variável que se pretende alterar
colnames(pais_whatsapp_estrangeiros)[1]
colnames(pais_whatsapp_estrangeiros)[1]<-"país"
pais_whatsapp_estrangeiros

#Gráfico de barras simples
pais_plot <- pais_whatsapp_estrangeiros$ddi
barplot(pais_plot, main="Países",
        xlab="Frequência")

#Gráfico horizontal colorido
barplot(pais_plot,
        main = "Países",
        xlab = "Frequência",
        names.arg = c("África do Sul", "Alemanha", "Austrália", "Estados Unidos", 
                      "França", "Japão", "Portugal", "Reino Unido", "Suíça"),
        las = 2, 
        col = "lightgreen",
        horiz = TRUE)
#Legenda
text(x = pais_plot, y = pais_whatsapp_estrangeiros$país,
     label = pais_whatsapp_estrangeiros$ddi, xpd=TRUE, pos = 4, cex = 0.8, 
     col = "black", srt = 0)
