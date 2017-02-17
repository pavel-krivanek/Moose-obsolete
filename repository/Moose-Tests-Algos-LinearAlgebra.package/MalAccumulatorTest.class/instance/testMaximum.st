test
testMaximum
	| a |
	a := MalAccumulator maximum.
	a accumulate: 10.
	self assert: a value equals: 10.
	a accumulate: 1.
	self assert: a value equals: 10.
	a accumulate: 100.
	self assert: a value equals: 100