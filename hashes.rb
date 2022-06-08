###Hashes###
#Sao estruturas de chave-valor
#Em outras linguagens pode ter o nome de hashmap ou dicionario
#O index da hash pode ser uma string, ou seja, o acesso ao dado é mais rapido se
# comparado ao de um vetor, pois nao precisa percorrer a lista inteira

#Iniciar o hash:
hash = {} #ou hash = Hash.new, utilizando o metodo new da classe hash

#Estrutura da hash:
#hash = {chave1 => valor1, chave2 => valor2 }
#A chave e o valor podem ser qualquer tipo de objeto, string, numeros, simbolos
#As chaves não se repetem, sao unicas
h = {"nome" => "Ludmila", "idade" => 30}

#É interessante utilizar simbolos como chave, para que a  cada chamada de uma
# chave que seja string, nao seja ocupado um novo espaço na memoria
h = {:nome => "Ludmila", :idade => 30}

#No ruby é muito comum utilizar simbolos como chave, por isso foi feita uma sintaxe
# mais bonita para esse caso de uso:
h = {nome: "Ludmila", idade: 30} #remove a sintaxe de =>

#Como acesssar um valor
h[:nome] #nome da hash e nome da chave, retorna o valor da chave
#Como alterar um elemento/ valor
h[:nome] = "novo nome" #atribui um novo valor a chave :nome

#Alguns métodos úteis
hash.keys #retorna um array com as chaves
hash.values #retorna um array com os valores
hash.empty? #verifica se o hash está vazio

p h.class #retorna a classe do objeto, que é um hash
h[:altura] = 167
h[:curso] = "Ciencia da computação"
h[:nome] = "Ludmila"
p h #ver a hash inteira
h[8] = "dia" #a chave pode ser qualquer objeto
p h.keys
p h.values