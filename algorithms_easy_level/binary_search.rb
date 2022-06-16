###Binary Search###
#Binary Search is a searching algorithm used in a sorted array by repeatedly
# dividing the search interval in half. The idea of binary search is to use the
# information that the array is sorted and reduce the time complexity to O(Log n).

lista = [1, 3, 7, 10, 14, 18, 23, 26, 28, 31, 34, 37]
esq = lista.first
dir = lista.last
def bin_search(lista, esq, dir, numero)
    #something
    if dir >= esq
        meio = esq + (dir - esq)/2

end