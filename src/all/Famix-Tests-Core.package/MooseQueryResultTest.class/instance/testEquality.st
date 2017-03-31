tests
testEquality
	| result1 result2 |
	result1 := MooseQueryResult on: FAMIXEntity new withAll: #(1 2 3).
	result2 := MooseQueryResult on: FAMIXEntity new withAll: #(1 2 3).
	self assert: result1 equals: result1.
	self assert: result1 equals: result2