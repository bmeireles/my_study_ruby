###Linear search###

p "Digite 5 numeros para a lista. Digite um de cada vez."
numero1 = gets.chomp.to_i
numero2 = gets.chomp.to_i
numero3 = gets.chomp.to_i
numero4 = gets.chomp.to_i
numero5 = gets.chomp.to_i
lista = Array.new
lista << numero1 << numero2 << numero3 << numero4 << numero5 
#lista = [1,23,14,24,67,54,81,17,40,58,10]
p "Agora digite o numero que deseja encontrar na lista: "
numero = gets.chomp.to_i
#numero = 10
i = 0
while  i < lista.length #for i in lista
    if numero == lista[i]
    puts "O numero #{numero} está presente no index #{i}."
    end
    i+=1
end
#puts "O numero #{numero} nao se encontra na lista."



