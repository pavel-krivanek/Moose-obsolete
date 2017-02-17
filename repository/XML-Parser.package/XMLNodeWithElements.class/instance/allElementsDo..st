enumerating
allElementsDo: aBlock
	"evaluates all descendant elements (and the receiver if it's an
	element) with aBlock"

	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]