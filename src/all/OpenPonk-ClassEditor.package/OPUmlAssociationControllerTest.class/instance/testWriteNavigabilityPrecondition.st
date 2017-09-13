tests
testWriteNavigabilityPrecondition
	| first second |
	first := association memberEnds first.
	second := association memberEnds second.
	self assert: first isNavigable.
	self deny: second isNavigable.
	self assert: first owningClass isNotNil.
	self assert: second owningClass isNil.
	self assert: association navigableOwnedEnds asArray equals: #()