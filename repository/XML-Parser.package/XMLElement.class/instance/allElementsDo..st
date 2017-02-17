enumerating
allElementsDo: aBlock
	"evaluates aBlock for the receiver and all descendant elements"

	aBlock value: self.
	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]].