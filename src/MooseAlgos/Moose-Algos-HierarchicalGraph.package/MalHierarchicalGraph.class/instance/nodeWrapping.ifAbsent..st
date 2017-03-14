enumerating
nodeWrapping: aModel ifAbsent: aBlock
	"Returns the node wrapping the given model."
	^ nodes at: aModel ifAbsent: aBlock .