tests
testAsOrderedCollection
	self assert: (self model allClasses asOrderedCollection isKindOf: OrderedCollection)