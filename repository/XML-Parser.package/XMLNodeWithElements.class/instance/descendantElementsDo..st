enumerating
descendantElementsDo: aBlock
	"evaluates all descendant elements with aBlock"

	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]