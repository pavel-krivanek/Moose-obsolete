adding
addNode: aNode
	"Adds aNode to the end of the receiver's node list. Can be used for elements,
	comments, and other types of nodes."

	^ self nodes addLast: aNode