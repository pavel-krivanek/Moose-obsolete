tests
testSelectGroupType
	| selected |
	selected := self model allMethods select: [ :each | each parentType isStub ].
	self assert: (selected isKindOf: FAMIXMethodGroup)