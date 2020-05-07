#Script Name: colab_get_profile_stats
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido pelo INCT.DD
#Description: Coletar dados sobre candidatos e partidos no Twitter

#Informações estatísticas sobre os candidatos
candidatos <- c("33374761", "74215006", "762402774260875265", "128372940", 
                "2670726740","105155795", "870030409890910210","256730310", 
                "73745956", "73889361","989899804200325121")

candidatos_lookup <- lookup_users(candidatos)
candidatos_info <- data.frame(infocandidatos$user_id, 
                              infocandidatos$screen_name, 
                              infocandidatos$followers_count, 
                              infocandidatos$friends_count, 
                              infocandidatos$statuses_count, 
                              infocandidatos$favourites_count, Sys.time())

#Informações estatísticas sobre os partidos
partidos <- c("180500907", "39931528","1202130601","1011297899463041028",
              "39522911","1151011908","86320511","2734700584","868487844595212288",
              "83835435","26250547","73144615")

partidos_lookup <- lookup_users(partidos)
partidos_info <- data.frame(infopartidos$user_id, 
                            infopartidos$screen_name, 
                            infopartidos$followers_count, 
                         infopartidos$friends_count, 
                         infopartidos$friends_count, 
                         infopartidos$statuses_count,
                         infopartidos$favourites_count, Sys.time())
