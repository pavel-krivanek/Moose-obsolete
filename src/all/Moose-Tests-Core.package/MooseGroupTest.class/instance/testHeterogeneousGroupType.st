tests
testHeterogeneousGroupType
	| group aCollection numberOfClasses numberOfMethods |
	numberOfClasses := self model allClasses size.
	numberOfMethods := self model allMethods size.
	aCollection := self model allClasses asOrderedCollection.
	self assert: self model allClasses size equals: numberOfClasses.
	group := MooseGroup withAll: aCollection.
	self deny: (group isMemberOf: MooseGroup).
	self assert: (group isMemberOf: FAMIXClassGroup).
	group addAll: self model allMethods asOrderedCollection.
	self assert: self model allMethods size equals: numberOfMethods.
	self assert: (group isMemberOf: MooseGroup).
	aCollection := self model allMethods asOrderedCollection.
	aCollection addAll: self model allClasses asOrderedCollection.
	group := MooseGroup withAll: aCollection.
	self assert: (group isMemberOf: MooseGroup).
	self assert: self model allClasses size equals: numberOfClasses.
	self assert: self model allMethods size equals: numberOfMethods