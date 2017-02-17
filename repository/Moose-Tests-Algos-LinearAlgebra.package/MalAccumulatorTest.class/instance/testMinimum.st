test
testMinimum
	| a |
	a := MalAccumulator minimum.
	a accumulate: 10.
	self assert: a value equals: 10.
	a accumulate: 1.
	self assert: a value equals: 1.
	a accumulate: 100.
	self assert: a value equals: 1