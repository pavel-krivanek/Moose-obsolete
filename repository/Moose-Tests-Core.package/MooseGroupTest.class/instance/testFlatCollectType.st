tests
testFlatCollectType
	| allMethods |
	allMethods := self model allClasses flatCollect: [:each | each methods ].
	self assert: (allMethods isKindOf: FAMIXMethodGroup)