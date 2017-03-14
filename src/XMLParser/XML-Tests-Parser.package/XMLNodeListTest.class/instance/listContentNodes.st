accessing
listContentNodes
	^ self listItems select: [:each | each isContentNode]