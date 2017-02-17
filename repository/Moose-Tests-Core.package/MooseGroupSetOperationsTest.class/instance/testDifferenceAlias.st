testing
testDifferenceAlias
	| result |
	result := group1 \ group2.
	self assert: result size equals: 3.
	self assert: (result includes: 1).
	self assert: (result includes: 2).
	self assert: (result includes: 3).
	result := group2 \ group1.
	self assert: result size equals: 3.
	self assert: (result includes: 6).
	self assert: (result includes: 7).
	self assert: (result includes: 8)