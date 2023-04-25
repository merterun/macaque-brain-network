library(igraph)

data("macaque")

# Calculate the degree centrality of each node
macaque_degree_centrality <- degree(macaque)

# Calculate the betweenness centrality of each node
macaque_betweenness_centrality <- betweenness(macaque)

# Calculate the closeness centrality of each node
macaque_closeness_centrality <- closeness(macaque)

# Calculate the eigenvector centrality of each node
macaque_eigenvector_centrality <- eigen_centrality(macaque)

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

# Visualize the macaque network with the eigenvector centrality of each node highlighted
ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point(aes(size = eigen_centrality))
