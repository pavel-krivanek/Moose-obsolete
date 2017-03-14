test
testEnumerateWithIndex
	| a |
	a := MalAccumulator minimum.
	a enumerateWithIndex: #(10 1 100).
	self assert: a index equals: 2.
	self assert: a value equals: 1