adding
addNode: aNode before: aNextNode
	"Adds aNode to the receiver's node list before aNextNode raising an
	error if aNextNode is absent"

	^ self nodes
		add: aNode
		before: aNextNode