### Minimum Spanning Tree ###

#How to find the weight of minimum spanning tree given the graph –
#This is the simplest type of question based on MST.

#1-Arrange the edges in non-decreasing order of weights.
#2-Add edges one by one if they don’t create cycle until we get n-1 number of edges
# where n are number of nodes in the graph.

#G = (V,E)
#G = graph
# V = set of vertices (ex: {1,2,3,4,5,6})
# E = set of edges (ex:{(1,2),(2,3),(3,4),(4,5),(5,6),(6,1)})
#What is a spanning tree? Spanning tree is a subgraph of a graph.
#It is a subset of vertices and edges.
#In a spanning tree you should take all the vertices of the original tree,
# but not all the edges.
#|V| = N = 6 , number of vertices
#N-1 = 5 , number of edges
#A tree will not have a cycle!
#How many different spanning trees can I generate from a graph?
#R =Out of 6 edges, I can select only 5, so we can have 6 different spanning trees.
#The greedy methods help to find the minimum cost spanning tree, if a weighted gragh is given
#Methods:
# 1- Prim's algorithm
# 2- Kruskal's algorithm
#Prim's algorithm: initially, select the smallest weigthed edge, and then always select the
# minimum cost edge,making sure to connect to the selected vertices.

#Kruskal's algorithm: first, select the smallest edge. Then, select the next smallest edge, regardless
# of the vertice position. But don't let the connections form a cycle.

#O(N*E) = O(n²) = complexity of Kruskal's algorithm
#It can be improved if used minimum heap => O(n*log n)

#Missing edges: you can estimate the value of an edge based on the the smallest edges
# previously selected.

#Study Prim's algorithm in C code first, then implement in Ruby
#https://scanftree.com/Data_Structure/prim%27s-algorithm
#https://www.geeksforgeeks.org/prims-minimum-spanning-tree-mst-greedy-algo-5/