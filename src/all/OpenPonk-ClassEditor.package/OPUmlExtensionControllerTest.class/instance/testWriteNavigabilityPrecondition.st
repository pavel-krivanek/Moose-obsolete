tests
testWriteNavigabilityPrecondition
	| first second |
	first := extension memberEnds first.
	second := extension memberEnds second.
	self assert: first isNavigable.
	self deny: second isNavigable.
	self assert: first owningClass isNotNil.
	self assert: second owningClass isNil.
	self assert: extension navigableOwnedEnds asArray equals: #()