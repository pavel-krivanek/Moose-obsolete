enumerating
nodesSelect: aBlock
	"returns a node list of all node children of the receiver that aBlock
	evaluates true for"

	^ self nodes select: aBlock