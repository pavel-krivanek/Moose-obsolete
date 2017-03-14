accessing
edges
	"Return all edges, incoming and outgoing, as a set."
	^ (Set newFrom: incoming) addAll: outgoing.
