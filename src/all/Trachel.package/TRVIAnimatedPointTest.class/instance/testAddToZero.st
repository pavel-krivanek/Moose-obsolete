tests
testAddToZero
	| p |
	p := pZero + (1 @ 1).
	self assert: p x value equals: 1.
	self assert: p y value equals: 1.