#Script Name: colab_get_friends_oficina
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido por Viktor Chagas
#Description: Criar rede de retuitadores

#EXERCÍCIO 1
#get friends = get user IDs of accounts followed by USER
friends_dand <- get_friends("dandbolada")
## lookup data on those accounts
friends_dand_info <- lookup_users(friends_dand$user_id)

##get followers = get user IDs of accounts following USER
follow_dand <- get_followers("dandbolada", n = 75000)
## lookup data on those accounts
follow_dand_info <- lookup_users(follow_dand$user_id)

#EXERCÍCIO 2
#Coletar respostas a um tweet específico

#Chamar pacotes e definir usuário
library(twitteR)
userName = "_sarawinter"

#Fetch tweets a partir da timeline do @usuario
tw_sarawinter = userTimeline(userName,n = 5)
#Converter lista de tweets para data.frame  
tw_sarawinter <- twListToDF(tw_sarawinter)  

#Construir queryString para trazer retweets 
queryString = paste0("to:",userName)
#Reter a ID do tweet para o qual se espera coletar as resposta
ID = tw_sarawinter[1,"id"]  
#Coletar todas as respostas a um usuário
replies_to <- searchTwitter(queryString, sinceID = ID) 
replies_to <- twListToDF(replies_to)
#Eliminar respostas a outros tweets que não o tweet da ID determinada 
replies_to <- replies_to[!replies_to$replyToSID > Id,]

#EXERCÍCIO 3
#Coletar todas as menções a um usuário específico

#Definir a ID do usuário
mencoes <- mentions(n = 200, sinceID = 989996624184307714)
#Quantidade de menções coletadas com o comando anterior
length(mencoes)
#Transformar em dataframe
mencoes <- twListToDF(mencoes)

