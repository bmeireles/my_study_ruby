###Input de dados###

#Como capturar um dado de entrada?
#Utilizamos o metodo gets() ou gets
#Este metodo possibilita fazer um prompt para a entrada de dados, e assim
# que digitar o valor e clicar em enter, esse valor vai ser salvo em
# uma variavel
#nome = gets() #o ruby abre o prompt e espera o usuario entrar com um valor
# para salvar na variavel nome
#p nome #imprime o nome salvo na variavel
#p nome.chomp() #retorna a string sem o ultimo caractere especial
#nome = gets.chomp #já executa o chomp logo depois de capturar o dado
#gets.chomp.to_i #remove o \n com o método chomp e transforma em inteiro
# com o to_i

p "Digite seu nome: "
nome = gets
puts "Seu nome é #{nome} "
