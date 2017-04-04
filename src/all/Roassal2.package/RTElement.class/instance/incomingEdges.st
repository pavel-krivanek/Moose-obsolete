accessing
incomingEdges
	"Return the list of incoming edges from the node"
	connectedEdges ifNil: [ ^ #() ].
	^ self connectedEdges select: [ :e | e to == self ]