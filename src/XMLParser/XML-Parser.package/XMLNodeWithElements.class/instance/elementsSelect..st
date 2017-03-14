enumerating
elementsSelect: aBlock
	"returns a node list of all element children of the receiver that
	aBlock evaluates true for"

	^ self nodes elementsSelect: aBlock