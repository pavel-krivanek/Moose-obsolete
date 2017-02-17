end-phase
hasSingleBottom: aNode
	
	"does the node has a single bottom and no other"
	
	^ (aNode descendants size = 1)