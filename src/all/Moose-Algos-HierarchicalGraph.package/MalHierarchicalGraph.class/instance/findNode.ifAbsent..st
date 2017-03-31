enumerating
findNode: aModel ifAbsent: aBlock
	"Returns the node wrapping the given model, runs given block if such a node does not exists in the graph."
	^ self nodeWrapping: aModel ifAbsent: aBlock.