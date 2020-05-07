#Script Name: colab_reshape_oficina
#Author: coLAB
#Author URL: http://www.colab.uff.br
#License: GNU General Public License v2 or later
#License URL: http://www.gnu.org/licenses/gpl-2.0.html
#Reference: Script desenvolvido por Viktor Chagas
#Description: Remodelando tabelas de dados

table(ecidadania_bd$cat_maior)
table(ecidadania_bd$remote_resource.1)

cat_local<- as.data.frame(table(ecidadania_bd$cat_maior, 
                                ecidadania_bd$remote_resource.1))

cat_local2 <- reshape(cat_local, idvar = "Var1", timevar = "Var2", direction = "wide")