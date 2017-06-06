tests
testSelectEmptyGroupType
	| selected |
	selected := self model allMethods select: [ :each | each parentType isStub ].
	self assert: (selected isKindOf: MooseGroup)