api
edges: aCollection from: source to: destination
	"Declerative method to add and propagate edges in one go."
	self addEdges: aCollection source: source destination: destination.
	self propagateEdges.