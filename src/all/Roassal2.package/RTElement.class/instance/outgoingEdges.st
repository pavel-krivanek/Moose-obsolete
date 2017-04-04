accessing
outgoingEdges
	"Return the list of outgoing edges from the node"
	connectedEdges ifNil: [ ^ #() ].
	^ self connectedEdges select: [ :e | e from == self ]