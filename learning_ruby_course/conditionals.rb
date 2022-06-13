###Condicionais###

#Condicionais são estruturas de controle que executam um trecho de código,
# dependendo de uma condição

#if condição #se a condição for verdadeira, ele executa faca_algo
#   faca_algo
#else        #se a condição for falsa, executa faca_outra_coisa
#   faca_outra_coisa
#end

#Operadores relacionais utilizados nas condições
# == #igualdade
# != #diferente
# > #maior que
# >= #maior ou igual
# < #menor que
# <= #menor ou igual

#Exemplo com operador relacional:
valor = 60
if valor > 50
    puts "Eu sou maior que 50"
else
    puts "Eu sou menor que 50"
end

#Operadores lógicos utilizados nas condições
# ! #negação
# && #and
# || #or

#Exemplo com operadores relacionais e lógicos:
valor = 65
if valor >= 50 && valor <= 100
    puts "Estou entre 50 e 100"
end

#Se tivermos mais de 2 condições, podemos usar elsif:
valor = 20
if valor > 50
    puts "Eu sou maior que 50"
elsif valor == 50
    puts "Eu sou igual a 50"
else
    puts "Eu sou menor que 50"
end

#Apenas nil(nulo) e false são avaliados como false
#O ruby possui uma outra opção de sintaxe mais legível para as condições:
valor = 20
puts "Eu sou maior que 50" if valor > 50

#O unless é o inverso do if, no sentido de executar uma ação se a
# condição não for verdadeira
unless valor == 100
   puts "O valor não é igual a 100"
end

#Ternario: if e else em uma linha só
#Estrutura do ternario: condição ? faca_isso_se_verdadeira : faca_isso_se_falsa
valor > 50 ? puts "Eu sou maior que 50" : "Eu sou menor que 50"

#Case: varias condições em um unico bloco
linguagem = "ruby"
case linguagem
when "ruby"
    puts "Bem vindo ao curso de ruby"
when "golang"
    puts "Curso não disponivel"
else
    puts "Nao conheço essa linguagem"
end

