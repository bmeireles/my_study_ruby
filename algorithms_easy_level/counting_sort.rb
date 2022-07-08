###Counting Sort###

#Counting sort: forma simplificada
#1-Criar um array auxiliar com cada numero existente na lista;
#2-Percorrer todos os elementos da lista, e para cada elemento,
#fazer a contagem no array auxiliar;
#3-Com o array auxiliar completo, percorrer ele, e para cada elemento,
#escrever o numero do index tantas vezes quanto o valor armazenado.
#4-Escrever os valores em um novo array
#5-Print do array final ordenado.

def count_sort(array)

    #Primeiro criamos o array que receberá os valores finais sequenciados:
    lista_final = Array.new
    for i in array
        lista_final.append(0)
    end
    puts lista_final

    #Depois criamos um array para guardar a contagem de cada caractere:
    



end