accessing
nodeAt: anIndex put: aNode
	"replaces the child node at anIndex with aNode, raising an error if
	anIndex is outside the current range of the node list"

	^ self nodes
		at: anIndex
		put: aNode