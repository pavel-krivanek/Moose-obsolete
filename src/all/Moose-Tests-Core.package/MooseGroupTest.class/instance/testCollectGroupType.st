tests
testCollectGroupType
	| collectedClasses |
	collectedClasses := self model allMethods collect: #parentType.
	self assert: (collectedClasses isKindOf: FAMIXTypeGroup)