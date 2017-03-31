accessing
nodeAt: anIndex ifAbsent: aBlock
	"returns the child node at position anIndex or the value of aBlock
	if there isn't one"

	^ self nodes
		at: anIndex
		ifAbsent: aBlock