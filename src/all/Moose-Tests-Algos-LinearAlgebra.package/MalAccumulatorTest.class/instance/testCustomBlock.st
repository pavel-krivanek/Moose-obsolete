test
testCustomBlock
	| a |
	a := MalAccumulator value: 0 using: [ :current :new | current max: new size ].
	a accumulate: 'ab'.
	self assert: a value equals: 2.
	a accumulate: 'a'.
	self assert: a value equals: 2.
	a accumulate: 'abc'.
	self assert: a value equals: 3