tests
testFlatCollect
	| allMethods |
	allMethods := self model allClasses flatCollect: [ :each | each methods asMooseGroup ].
	self assert: allMethods asSet equals: self model allMethods asSet