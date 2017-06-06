tests
testSelectGroupType
	| selected |
	selected := self model allMethods select: [ :each | each cyclomaticComplexity  = 1 ].
	self assert: (selected isKindOf: FAMIXMethodGroup)