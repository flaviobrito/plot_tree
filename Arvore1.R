library(igraph)
G <- graph.tree(n=13,children=2)

# let's print it using a tree-specific layout 
# (N.B. you must specify the root node)
co <- layout.reingold.tilford(G, params=list(root=1)) 
plot(G, layout=co)


library(igraph)
G <- graph.tree(n=13,children=2)

#add names to vertex (just assign a upper-case letter to each)
V(G)$name <- LETTERS[1:length(V(G))]

# plot (1)
lay <- layout.reingold.tilford(G, params=list(root='A')) 
plot(G, layout=lay, vertex.size=25)

# add a vertex 'O', then a new edge 'G' --> 'O'
G <- G + vertices('O')
G <- G + edge('G', 'O')

# plot again (2)
lay <- layout.reingold.tilford(G, params=list(root='A')) 
plot(G, layout=lay, vertex.size=25)


#Plota arvore lateralmente 
## load ape
library(ape)
## simulate a phylogeny
tree <- rtree(n = 20)
plot(tree, edge.width = 2)

#Plota árvore com linhas

tree <- read.tree(text = "(((A,B),(C,D)),E);")
plot(tree, type = "cladogram", edge.width = 2)





