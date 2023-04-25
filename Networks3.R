library(igraph)

data("macaque")

library(ggraph)

ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point()

library(igraph)

macaque_degree_centrality <- degree(macaque)

library(ggraph)

ggraph(macaque, layout = "fr") +
  geom_edge_link() +
  geom_node_point(aes(size = macaque_degree_centrality))

