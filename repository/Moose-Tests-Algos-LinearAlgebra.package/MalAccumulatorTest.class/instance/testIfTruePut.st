test
testIfTruePut
	| a |
	a := MalAccumulator maximum.
	a accumulate: 10 withIndex: 'first'.
	self assert: a index equals: 'first'.
	self assert: a value equals: 10.
	a accumulate: 1 withIndex: 'second'.
	self assert: a index equals: 'first'.
	self assert: a value equals: 10.
	a accumulate: 100 withIndex: 'third'.
	self assert: a index equals: 'third'.
	self assert: a value equals: 100