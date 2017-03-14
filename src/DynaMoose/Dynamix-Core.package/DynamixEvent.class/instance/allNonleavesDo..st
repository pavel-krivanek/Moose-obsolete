enumerating
allNonleavesDo: aBlock
	self withAllChildrenDo: [:each | each isLeaf ifFalse: [aBlock value: each] ].