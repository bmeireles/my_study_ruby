### Arrays ###
#Arrays sao listas de valores separados por virgula
#Duas formas de definir um array:
lista = []
lista = Array.new

#Arrays podem ter valores de diferentes tipos
lista = [1,2,"3"]
#Como acessar um elemento do array:
#Colocar o indice do elemento entre colchetes (começando do zero o indice!)
lista[1] #acessa o segundo elemento da lista

#Como incluir um novo elemento na lista
lista << "novo item" #ou
lista.append("novo item")

lista.length #tamanho do array
lista.empty? #verifica se o array está vazio
lista.first #pega o ultimo valor
lista.last #pega o ultimo valor

lista.class #retorna o tipo da lista, que é um array
lista << 42 #inclui o elemento 42 na lista
lista << 56
p lista.length
p lista # ver lista completa
lista << "miha string"
lista << true
p lista
p lista.length

lista_1 = [1,2,3]
lista_2 = [4,5,6]
lista_1 + lista_2 #soma os elementos das duas listas
resultado = lista_1 + lista_2 #cria uma nova lista com todos os elementos das 2 listas
p resultado