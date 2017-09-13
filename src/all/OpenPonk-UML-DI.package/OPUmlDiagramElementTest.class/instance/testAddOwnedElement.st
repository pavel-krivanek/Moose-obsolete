tests
testAddOwnedElement
	| parent child |
	parent := self elementInstance.
	child := self elementInstance.
	child owningElement: parent.
	self assert: parent owningElement equals: nil.
	self assert: child owningElement equals: parent.
	self assertCollection: parent ownedElements hasSameElements: {child}.
	self assert: child ownedElements size equals: 0