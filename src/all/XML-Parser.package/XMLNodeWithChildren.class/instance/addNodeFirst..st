adding
addNodeFirst: aNode
	"Adds aNode to the begining of the receiver's node list. Can be used for
	elements, comments, and other types of nodes."

	^ self nodes addFirst: aNode