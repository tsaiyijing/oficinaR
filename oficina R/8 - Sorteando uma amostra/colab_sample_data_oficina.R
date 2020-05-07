#Script Name: colab_sample_data
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido por Viktor Chagas
#Description: Sortear amostra a partir de um banco de dados XLS

#Solicitar pacotes necessários
#install.packages(readxl)
require(readxl)

#Importar banco de dados XLS para data.frame

#Sortear N casos
#O número de ocorrências sorteadas é definido pelo parâmetro da função
#O sorteio é feito com base nas linhas do banco de dados, elimina-se as linhas não-sorteadas
meme_sample <- meme_code[sample(nrow(meme_code), 378), ]

write.csv(meme_sample, "Downloads/meme_sample.csv", fileEncoding = "UTF-8")
