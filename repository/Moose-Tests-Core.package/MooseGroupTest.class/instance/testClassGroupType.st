tests
testClassGroupType
	| group aCollection numberOfClasses |
	aCollection := self model allClasses asOrderedCollection.
	numberOfClasses := aCollection size.
	group := MooseGroup withAll: aCollection.
	self assert: (group isMemberOf: FAMIXClassGroup).
	self assert: self model allClasses size equals: numberOfClasses