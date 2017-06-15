tests
testEquality
	| result1 result2 |
	result1 := self newSimpleInstance.
	result2 := self newSimpleInstance.
	self assert: result1 equals: result1.
	self assert: result1 equals: result2