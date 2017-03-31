enumerating
findNode: aModel
	"Returns the node wrapping the given model or nil if such a node does not exists in the graph."
	^ self nodeWrapping: aModel.