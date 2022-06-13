###Palindromo/Palindrome###

#Palindromo: palavras que são iguais quando lidas de frente pra trás e
# de trás pra frente 
#Exemplos: ovo, osso, radar...
#Objetivos:
#1:Definir um método que verifica se é palindromo
#2:Usar gets para pedir o input de dados e chamar o metodo
#3:Imprimir se é palindromo ou não
#Documentação do ruby: ruby-doc.org

#Solução:
#Vamos percorre a palavra de trás para frente e salvar cada letra, de forma
# a termos uma string com a palavra invertida. Começamos com a ultima
# letra, que corresponde ao indice do comprimento da palavra.
#Em ruby, conseguimos percorrer uma string como se fosse uma lista
palavra = "ovo"
palavra_reversa = ""
indice = palavra.length
until indice == 0 #até o indice se tornar zero, execute o bloco
    letra = palavra[indice - 1] #o ultimo indice é o comprimento - 1
    palavra_reversa += letra #uma letra de cada é adicionada na string de forma
    # reversa.
    indice -= 1 #diminuimos o indice para o proximo loop
end
#Depois, comparamos a string reversa com a string da palavra, e se forem iguais, a 
# palavra é um palindromo
#Para podermos comparar uma palavra que tenha letra(s) maiuscula(s) com outra que
# nao tenha, precisamos usar o metodo downcase:
palavra = palavra.downcase

#Podemos também usar o metodo reverse, que inverte a string:
palavra_reversa = palavra.reverse
#A interrogação no nome de uma definição significa que ela irá retornar
# true ou false.

#Solução 1:
def palindromo?(palavra)
    palavra = palavra.downcase
    palavra_reversa = ""
    indice = palavra.length

    until indice == 0
        letra = palavra[indice - 1]
        palavra_reversa << letra #ou palavra_reversa += letra
        indice -= 1
    end

    palavra_reversa == palavra #o return está implicito na ultima linha
    # do def
end

puts "Resultados da solução 1:"
puts palindromo?("ovo")
puts palindromo?("Ovo")
puts palindromo?("foo")

#Solução 2:
def palindromo2?(palavra)
    palavra.downcase == palavra.downcase.reverse
end

puts "Resultados da solução 2:"
puts palindromo2?("ovo")
puts palindromo2?("Ovo")
puts palindromo2?("foo")