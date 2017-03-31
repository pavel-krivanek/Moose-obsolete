enumerating
allLeavesDo: aBlock
	self withAllChildrenDo: [:each | each isLeaf ifTrue: [aBlock value: each] ].
