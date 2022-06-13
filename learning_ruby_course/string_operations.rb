#String operations/ operações com strings

nome = "Ludmila"
puts nome
p nome #p é util para debug, por isso vamos usar mais
print nome + "\n" #print não quebra a linha automaticamente

#Para pegar a última letra da string:
p nome[(nome.length) -1] #ou nome[-1]

#Para retornar um array (uma lista com cada caractere sendo um item):
p nome.chars
p nome.chars.length #tamanho do array
p nome[0,2] #recorte

#Repetição:
puts "Cabeçalho"
puts "-"*10 #para criar um separador entre o cabeçalho e a informação
puts "texto de informação"

#Como formatar uma string:
numero = 42
puts "O numero é %05d" %numero #retorna o numero com 5 digitos

#Como remover espaços em branco:
mensagem = "    mensagem: aqui vai minha mensagem     "
puts mensagem.strip #removeu os espaços

#Upcase / downcase
nome_min = "ludmila"
nome_mai = "LUDMILA"
puts nome_min.upcase #transforma a string minuscula em maiuscula
puts nome_mai.downcase #transforma a string maiuscula em minuscula
#upcase é diferente de upcase!
#upcase gera uma nova variável na memória, upcase! altera a variável original

#Capitalize
mensagem = "minha mensagem"
puts mensagem.capitalize #modifica a primeira letra da string para maiuscula

#Separar os valores de uma string em uma lista
nomes = "ludmila raissa fernanda".split #divide a string de acordo com os espaços
p nomes #imprime uma lista com 3 itens
nomes = "ludmila-raissa-fernanda".split("-") #divide a string pela podição do hifen
p nomes

