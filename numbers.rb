#Numbers / números
puts 42.class #é um inteiro
puts 42.42.class # é um float

puts 123_500 #voce pode colocar separadores para uma melhor
# leitura de um numero muito grande

#Somar inteiro e um float (o resultado é sempre um float)
soma = 5 + 3.2
p soma

#Em ruby, o "+" nao é uma opreçao basica, e sim um método
#Em outras linguagens as opreçoes podem ser diferentes de metodos
p 5 + 2 # calculo utilizando o +
p 5.send("+", 2) # calculo utilizando o metodo explicitamente