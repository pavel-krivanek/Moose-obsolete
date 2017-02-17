enumerating
nodesCollect: aBlock
	"returns an ordered list of the values of all node children of the
	receiver evaluated with aBlock"

	^ self nodes collect: aBlock