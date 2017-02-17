test
testEnumerate
	| a |
	a := MalAccumulator minimum.
	a enumerate: #(10 1 100).
	self assert: a value equals: 1