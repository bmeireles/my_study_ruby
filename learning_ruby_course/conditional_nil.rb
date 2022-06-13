###Atribuição condicional de variáveis###
###Conditional nil###

#Como atribuir um valor numa variável apenas se ela estiver vazia:
variavel = nil #nil é nulo em ruby
variavel = "Algum valor" if variavel.nil? #apenas colocar um valor se
# ela estiver vazia
#O metodo nil? vai retornar se a variavel/objeto está nulo ou não
#Nulo também é avaliado como false, assim podemos escrever:
variavel = "Algum valor" if !variavel
#Ou utilizando o unless:
variavel = "Algum valor" unless variavel
#Outra forma mais comum no ruby:
variavel ||= "valor" #só vai atribuir o valor se a variavel estiver nula

#Exemplos:
variavel = 10
variavel ||= 20
p variavel #não vai trocar de valor, pois a variavel não estava nula
variavel = nil
variavel ||= 20
p variavel #trocou o valor
