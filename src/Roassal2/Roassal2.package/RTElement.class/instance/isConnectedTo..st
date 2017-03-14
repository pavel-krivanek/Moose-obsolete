testing
isConnectedTo: anElement
	"Return true if the current element is connected to anElement"
	connectedEdges ifNil: [ ^ false ].
	^ connectedEdges anySatisfy: [ :edge | (edge from == anElement) or: [ edge to == anElement ] ]