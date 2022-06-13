###Symbols / Simbolos ###
#Em ruby, simbolo é um tipo especial de objeto
#Sao unicos e imutaveis
#A primeira vez que um simbolo for utilizado, será alocado na memória.
#Quando utilizado novamente o ruby vai utilizar este mesmo objeto
#Sao otimos substitutos para strings quando for usado como label/chaves
#Toda vez que uma string for utilizada, mesmo que identica, ela vai gerar
# um novo objeto na memoria.

variavel = "ludmila"
p variavel.object_id
p "ludmila".object_id #retorna um espaço na memoria
p "ludmila".object_id #retorna outro espaço na memoria

p :"ludmila"
p :ludmila #com ou sem aspas, o simbolo é concatenado a string e alocado na memoria
p :ludmila.object_id #retorna o valor do objeto na memoria do computador
p :ludmila.object_id #retorna o mesmo objeto, pois o simbolo pode ser reutilizado
#É util para ocupar menos memoria!



