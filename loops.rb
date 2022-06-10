###Laços/ loops ###
#Laços sao formas de executar o código repetidamente,dentro de
# alguma condição.
#Usamos os mesmos operadores lógicos e relacionais que vimos
# na aula sobre condicionais.

#While
#while repete o bloco enquanto a condição for verdadeira
valor = 5
while valor > 0 #enquanto o valor for maior que 0, ele executa o bloco
    puts valor
    valor = valor - 1 #a variavel valor vai ser substituída por ela própria
    #menos 1.
end #o bloco só pára de ser executado se a condição nao for mais verdadeira,
# ou seja, quando o valor for zero
#valor = valor -1 também pode ser escrito como: valor -= 1

#For
#A estrutura de repetição for é semelhante ao while, a diferença é que no
# for temos: for (declaração da variavel) in (alguma lista ou objeto iterável, ex. hash) 
#No exemplo, para cada valor nessa lista, salvamos o valor como i:
for i in [1,2,3,4,5]
    puts "O numero é #{i}"
end

#Until
#O until inicializa o bloco com a condição sendo falsa, e só sai do laço 
# quando a condição se torna verdadeira
valor = 0
until valor == 10 #até o momento antes do valor se tornar 10, o bloco será executado
    puts valor
    valor += 1 #valor = valor + 1
end

#Alguns comandos que podemos usar em laços:
#break #sair do laço
#return #sair do laço e do método onde o laço está contido
#next #vai imediatamente para a próxima iteração
#redo #repete o laço do início (a condição não será reavaliada)

#Mais exemplos:
valor = 0
while (valor < 10)
    puts "O valor é #{valor}"
    break if valor == 5
    valor = valor + 1
end

range = 0..5 #forma uma lista de acordo com os valores inicial e final (numeros
# entre dois pontos)
for meu_valor in [0,1,2,3,4,5] #ou for meu_valor in range
    puts "Meu valor é #{meu_valor}"
end

#O for só consegue iterar em um objeto qu responde ao método each.
#Outra forma de fazer a mesma iteração do for é utilizando o each e o do:
lista = [0,1,2,3,4,5]
lista.each do |meu_valor| #para cada elemento da lista, nomeie meu_valor e
    #faça/execute o bloco
    puts "Meu valor (usando o each) é #{meu_valor}"
end

#O hash também possui o método each:
hash = {nome: "Ludmila", idade: 30}
hash.each do |chave,valor| #cada item do hash possui 2 saídas, a chave e o valor,
    #por isso usamos duas variaveis
    puts "Minha chave é #{chave} com o valor #{valor}"
end
