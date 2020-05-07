#Script Name: colab_tables
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido por Viktor Chagas
#Description: Importando tabelas e contando ocorrências

#Importando banco de dados ecidadania.csv

#Gerando uma tabela de ocorrências para uma variável específica
table(ecidadania_bd$cat_maior)
#Convertendo a tabela em dataframe
categorias <- as.data.frame(table(ecidadania_bd$cat_maior))

#Gerando uma tabela cruzada com duas variáveis
table(ecidadania_bd$cat_maior, ecidadania_bd$remote_resource.1)
#Convertendo a tabela em dataframe
categorias_locais <- as.data.frame(table(ecidadania_bd$cat_maior, 
                                         ecidadania_bd$remote_resource.1))
#Outro exemplo com a mesma tabela original
  turno_pais <- as.data.frame(table(ecidadania_bd$turno, 
                                    ecidadania_bd$br_internacional))

#MOSAIC PLOT
#Criando um gráfico de mosaico com tabela cruzada
#Solicitar pacote descr
require(descr)
#Criar tabela cruzada e plotar gráfico de mosaico
categorias_locais_mosaic <- crosstab(ecidadania_bd$turno, 
                                     ecidadania_bd$br_internacional)
#Visualizar data.frame
categorias_locais_mosaic


#BARPLOT
#Criando gráfico de barras (barplot)
barplot(table(ecidadania_bd$turno))

#Gráfico horizontal colorido
barplot(table(ecidadania_bd$turno),
        main = "Turno de envio das mensagens",
        xlab = "Frequência",
        names.arg = c("madrugada", "manhã", "noite", "tarde"),
        las = 2, cex.names = 0.7, 
        col = "#FFB351",
        horiz = FALSE)
