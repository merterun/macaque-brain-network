library(igraph)
library(igraphdata)

data("macaque")

# Plot the graph using igraph
plot(macaque)


library(ggraph)

# Create ggraph object
ggraph(macaque, layout = "kk") +
  geom_edge_link() +
  geom_node_point(color = "lightblue", size = 3)

# Calculate degree centrality
degree <- degree(macaque)

# Identify top 10 nodes by degree centrality
top_nodes <- names(sort(degree, decreasing = TRUE))[1:10]

# Identify communities using the walktrap algorithm
communities <- walktrap.community(macaque)

# create an igraph object from the communities object
g <- graph_from_adjacency_matrix(as.matrix(communities$membership), mode = "undirected")


# define a layout function using the kamada-kawai algorithm
layout <- layout_with_kk(g)

# pass the layout function to the ggraph function
ggraph(g, layout = layout)

# Plot the graph with node size and color by degree centrality and community membership
ggraph(g, layout = "kk") +
  geom_edge_link() +
  geom_node_point(aes(size = degree, color = factor(communities$membership))) +
  scale_color_brewer(palette = "Set1") +
  guides(size = FALSE)
