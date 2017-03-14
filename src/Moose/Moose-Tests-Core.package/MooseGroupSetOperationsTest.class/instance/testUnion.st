testing
testUnion
	| result |
	result := group1 union: group2.
	self assert: result size equals: 8.
	self assert: (result includes: 1).
	self assert: (result includes: 2).
	self assert: (result includes: 3).
	self assert: (result includes: 4).
	self assert: (result includes: 5).
	self assert: (result includes: 6).
	self assert: (result includes: 7).
	self assert: (result includes: 8)