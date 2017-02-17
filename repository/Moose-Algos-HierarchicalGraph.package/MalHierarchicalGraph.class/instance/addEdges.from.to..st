api
addEdges: aCollection from: source to: destination
	"Imperative method to add edges. Can be called multiple times, before #propagateEdges is called (must be done manually)."
	self addEdges: aCollection source: source destination: destination.