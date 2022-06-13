#Numbers / números
puts 42.class #é um inteiro
puts 42.42.class # é um float

puts 123_500 #voce pode colocar separadores para uma melhor
# leitura de um numero muito grande

#Somar inteiro e um float (o resultado é sempre um float)
soma = 5 + 3.2
p soma

#Em ruby, o "+" nao é uma operaçao basica, e sim um método
#Em outras linguagens as opreçoes podem ser diferentes de metodos
p 5 + 2 # calculo utilizando o +
p 5.send("+", 2) # calculo utilizando o metodo explicitamente

#Tudo no ruby é um objeto
class Integer
    def +(outro_valor)
        self - outro_valor #reescrevi meu metodo de soma para ser uma subtraçao
    end
end

p 10 + 5 # o resultado é 5, porque sobrescrevi o metodo para subtrair

#Verificar se um numero é par
p 10.even? # retorna true se o numero for par
#Verificar se um numero é impar
p 10.odd? # retorna true se o numero for impar
