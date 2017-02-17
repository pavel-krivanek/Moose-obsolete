enumerating
descendantNodesDo: aBlock
	"evaluates aBlock for all descendant nodes of the receiver"

	self hasChildren
		ifTrue: [self nodesDo: [:each | each allNodesDo: aBlock]]