test
testAverage
	| a |
	a := MalAccumulator sum.
	a accumulate: 10.
	self assert: a average equals: 10.
	a accumulate: 1.
	self assert: a average equals: 11 / 2.
	a accumulate: 100.
	self assert: a average equals: 111 / 3