###Métodos/Functions###

def meu_metodo #um método é criado usando o def (nome do metodo), e finaliza 
# o bloco com o end
    puts "Meu metodo foi executado" #tudo que estiver dentro do def é o nosso metodo
end

def meu_metodo2(parametro1, paramentro2) #os parametros não precisam ter um
#tipo definido
    puts "Meu metodo foi executado. Parametros #{parametro1} e #{paramentro2}"
end

#A palavra return é opcional. O ruby sempre retorna o resultado da execução
# da ultima linha.
def soma(a,b)
    return a + b #é igual a: a + b, pois essa é a ultima linha do metodo
end

#Mais exemplos:
def soma2(valor1,valor2)
    puts "Estou somando #{valor1} e #{valor2}"
    return valor1 + valor2 #ou valor1 + valor2
end
puts "Vou executar a soma"
puts soma2(10,5) #imprime o resultado da execução do metodo, passando 10 e 5
# como parametros. Os parametros sao atribuídos a cada variavel de acordo com
# a ordem que sao passados. 

#Para que a entrada de um parametro seja opcional, podemos deixar um valor 
# padrão para ele:
#def soma(valor1, valor2 = 0) #quando o metodo for chamado, tem-se a opção de
#passar ou não um valor para valor2.
#end

#Para passar parametros nomeados ao metodo, independente da ordem:
def soma_param_nomeados(valor1:, valor2:)
    soma(valor1, valor2)
end
puts "Executar a soma com parametros nomeados"
puts soma_param_nomeados(valor1:10, valor2:5) #agora também posso escrever:
# (valor2:10, valor1:5)
