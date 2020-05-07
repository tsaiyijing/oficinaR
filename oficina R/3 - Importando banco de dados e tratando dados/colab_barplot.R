#Script Name: colab_plot_data
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido por Viktor Chagas
#Description: Criar e manipular gráficos

#BARPLOT
#Criar gráfico de barras (barplot)
#Este script pode ser combinado com colab_import_data,
# responsável pela importação e manipulação dos dados

#Caso necessário, mudar nomes de variáveis
#O número indicado entre colchetes é o número do vetor ocupado
# pela variável que se pretende alterar
colnames(meme_code)[1]
colnames(meme_code)[1]<-"ID"

#Caso a tabela traga dados brutos, primeiro você deve contar as ocorrências
#Crie dataframes diferentes para cada categoria a ser plotada
meme_formatos <- as.data.frame(table(meme_code$formato))
meme_formatos

#Gráfico de barras simples
meme_formatos_plot <- table(meme_code$formato)
barplot(meme_formatos_plot, main="Formato dos memes",
        xlab="Quantidade")

#Customizando os títulos dos eixos e do gráfico
#O parâmetro names.arg define os nomes das colunas, 
# las define o direcionamento do texto,
# ylim calcula o tamanho máximo do eixo y,
# cex.names define o tamanho das fontes das legendas e valores do gráfico, e
#col=rainbow define a coloração do gráfico
meme_formatos_plot <- barplot(meme_formatos$Freq,
                              main = "Formatos dos memes", xlab = "Quantidade", 
                              names.arg = row.names(meme_formatos$Var1), horiz = FALSE,
                              las="2", ylim=c(0, 3000), cex.names = 0.7,
                              col=rainbow(20))

#Ajustar margens do gráfico
#A ordem de componentes do vetor para as margens é: bottom, left, top, right
meme_formatos_plot <- par(mar=c(8,8,3,1))
#Logo em seguida, é preciso rodar novamente o comando para plotar o gráfico
meme_formatos_plot <- barplot(meme_formatos$Freq,
                              main = "Formatos dos memes", xlab = "Quantidade", 
                              names.arg = row.names(meme_formatos$Var1), horiz = FALSE,
                              las="2", ylim=c(0, 3500), cex.names = 0.7)

#Inserindo a frequência das categorias (data values)
#O parâmetro srt calcula a rotação da legenda
#Parâmetro pos estipula a posição da legenda
text(x = meme_formatos_plot, y = meme_formatos$Freq,
     label = meme_formatos$Freq, xpd=TRUE, pos = 4, cex = 0.8, col = "red", srt = 90)
#Adicionando os nomes das categorias (axis data labels)
axis(1, at=meme_formatos_plot, labels=meme_formatos$Var1, tick=FALSE,
     las=2, line=-0.5, cex.axis=0.5)

#Inserir legenda
legend("top", fill = 1:20, legend = meme_formatos$Var1, 
       horiz = FALSE, inset = c(0,-0.1), xpd = TRUE)



