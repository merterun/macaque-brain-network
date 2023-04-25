library(igraph)

data("macaque")

# Calculate the degree centrality of each node
macaque_degree_centrality <- degree(macaque)

macaque_degree_centrality

# Calculate the betweenness centrality of each node
macaque_betweenness_centrality <- betweenness(macaque)

macaque_betweenness_centrality

# Calculate the closeness centrality of each node
macaque_closeness_centrality <- closeness(macaque)

macaque_closeness_centrality

# Visualize the macaque network with the degree centrality of each node highlighted
ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point(aes(size = macaque_degree_centrality))

# Visualize the macaque network with the betweenness centrality of each node highlighted
ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point(aes(size = macaque_betweenness_centrality))

# Visualize the macaque network with the closeness centrality of each node highlighted
ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point(aes(size = macaque_closeness_centrality))


# Calculate degree centrality
degree <- degree(macaque)

# Identify top 10 nodes by degree centrality
top_nodes <- names(sort(degree, decreasing = TRUE))[1:10]

#Print the top 10 nodes by degree centrality
top_nodes

#Visualize the macaque network with the top 10 nodes highlighted
ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point(aes(size = macaque_degree_centrality, color = ""))



#This code will print the top 10 nodes by degree centrality and visualize the macaque network with the top 10 nodes highlighted. The nodes will be colored red if they are in the top 10, and black otherwise.

