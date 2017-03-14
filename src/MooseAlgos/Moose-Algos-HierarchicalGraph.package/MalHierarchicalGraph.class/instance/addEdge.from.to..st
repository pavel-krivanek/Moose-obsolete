api
addEdge: aModel from: source to: target
	"Imperative method to add a single edge to the graph."
	self addEdges: (OrderedCollection with: aModel) from: source to: target.