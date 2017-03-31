enumerating
allNodesDo: aBlock
	"evaluates aBlock for the receiver and all of its descendant nodes"

	aBlock value: self.
	self hasChildren
		ifTrue: [self nodesDo: [:each | each allNodesDo: aBlock]]