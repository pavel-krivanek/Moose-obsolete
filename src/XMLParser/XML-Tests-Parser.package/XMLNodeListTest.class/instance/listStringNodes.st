accessing
listStringNodes
	^ self listItems select: [:each | each isStringNode]