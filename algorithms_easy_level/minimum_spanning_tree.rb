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

#source code by: mneedham
#  mneedham's github: https://github.com/mneedham/algorithms2/blob/master/prims.rb
# Prim's Minimum Spanning Tree Algorithm - Naive version

def file 
    @file ||= File.readlines("edges.txt")
  end
  
  def header 
    @header ||= file.take(1)[0]
  end
  
  def number_of_nodes
    @number_of_nodes ||= header.split(" ")[0].to_i
  end
  
  def create_adjacency_matrix
    adjacency_matrix = [].tap { |m| number_of_nodes.times { m << Array.new(number_of_nodes) } }
    file.drop(1).map { |x| x.gsub(/\n/, "").split(" ").map(&:to_i) }.each do |(node1, node2, weight)|
      adjacency_matrix[node1 - 1][node2 - 1] = weight
      adjacency_matrix[node2 - 1][node1 - 1] = weight
    end
    adjacency_matrix
  end
  
  def find_cheapest_edge(adjacency_matrix, nodes_spanned_so_far, number_of_nodes)
    available_nodes = (0..number_of_nodes-1).to_a.reject { |node_index| nodes_spanned_so_far.include?(node_index + 1) }  
    
    cheapest_edges = available_nodes.inject([]) do |acc, node_index|
      get_edges(adjacency_matrix, node_index).select { |_, other_node_index| nodes_spanned_so_far.include?(other_node_index + 1) }.each do |weight, other_node_index|
        acc << { :start => node_index + 1, :end => other_node_index + 1, :weight => weight }
      end
      acc
    end
      
    cheapest_edges.sort { |x,y| x[:weight] <=> y[:weight] }.first
  end
  
  def get_edges(adjacency_matrix, node_index)
    adjacency_matrix[node_index].each_with_index.reject { |edge, index| edge.nil? }
  end
  
  def select_first_edge(adjacency_matrix)
    starting_node = 1
    cheapest_edges = get_edges(adjacency_matrix, 0).inject([]) do |all_edges, (edge, index)|
      all_edges << { :start => starting_node, :end => index + 1, :weight => edge }
      all_edges
    end
    cheapest_edges.sort { |x,y| x[:weight] <=> y[:weight] }.first
  end
  
  def nodes_left_to_cover
    (1..number_of_nodes).to_a - @nodes_spanned_so_far
  end
  
  # Prim's algorithm
  
  adjacency_matrix = create_adjacency_matrix
  first_edge = select_first_edge(adjacency_matrix)
  @nodes_spanned_so_far, @edges = [first_edge[:start], first_edge[:end]], [first_edge]
  
  while !nodes_left_to_cover.empty?
    cheapest_edge = find_cheapest_edge(adjacency_matrix, @nodes_spanned_so_far, number_of_nodes)
    @edges << cheapest_edge
    @nodes_spanned_so_far << cheapest_edge[:start]  
  end
  
  puts "edges: #{@edges}, total spanning tree cost #{@edges.inject(0) {|acc, edge| acc + edge[:weight]}}"
