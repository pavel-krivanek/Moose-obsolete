adding
addNode: aNode after: aPreviousNode
	"Adds aNode to the receiver's node list after aPreviousNode raising an
	error if aPreviousNode is absent"

	^ self nodes
		add: aNode
		after: aPreviousNode