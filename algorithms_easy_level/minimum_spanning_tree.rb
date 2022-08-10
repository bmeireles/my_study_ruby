### Minimum Spanning Tree ###

#How to find the weight of minimum spanning tree given the graph –
#This is the simplest type of question based on MST. To solve this using kruskal’s algorithm

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
#|V| = N = 6 , numeber of vertices
#N-1 = 5 , number of edges
#A tree will not have a cycle!
#How many different spanning trees can I generate from a graph?
#R =Out of 6 edges, I can select only 5, so we can have 6 different spanning trees.
#The greedy methods help to find the minimum cost spanning tree
