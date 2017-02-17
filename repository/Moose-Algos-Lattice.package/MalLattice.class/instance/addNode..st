accessing
addNode: aNode
	self findNode: aNode ifAbsent: (self nodes add: aNode)