#Script Name: colab_time_series_dygraphs
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#Description: Criar série temporal usando dygraphs

#Instalar pacotes necessários
#install.packages("dygraphs")
#install.packages("xts")
#install.packages("tidyr")

#Requisitar pacotes necessários
library(dygraphs)
library(xts)
library(tidyr)

#Importar dados da série temporal. O dataframe neste exemplo chama-se "censo"
##Os dados devem ser anuais e com intervalos regulares
##A documentação da função pode ser conferida em https://rstudio.github.io/dygraphs/
##Exemplo de dados do Censo abaixo

# Ano;Rio de Janeiro;São Paulo;Brasília;Curitiba;Recife;Salvador
# 1940;1764141;1326261;NA;140656;348424;290443
# 1950;2377451;2198096;NA;180575;524682;417235
# 1960;3307163;3825351;141742;361309;797234;655735
# 1970;4315746;5978977;546015;624362;1084459;1027142
# 1980;5183992;8587665;1203333;1052147;1240937;1531242
# 1990;5473909;9626894;1598415;1313094;1296995;2072058
# 2000;5851914;10405867;2043169;1586848;1421993;2440828
# 2010;6320446;11253503;2570160;1751907;1537704;2675656

#Série simples
dygraph(censo) 

#Configurando o nome e aparência dos eixos
dygraph(censo, main = "Censo Populacional 1940-2000") %>%
  dyAxis("x", drawGrid = FALSE) %>%
  dyAxis("y", label = "População") %>%
  dyOptions(includeZero = TRUE, 
            axisLineColor = "navy", 
            gridLineColor = "lightblue")

#Configurando escala, removendo grid e adicionando preenchimento
dygraph(censo, main = "Censo Populacional") %>%
  dyAxis("y", label = "População", valueRange = c(0, 12000000)) %>%
  dyOptions(axisLineWidth = 1.5,
            maxNumberWidth = 12000000,
            fillGraph = TRUE, drawGrid = FALSE)
