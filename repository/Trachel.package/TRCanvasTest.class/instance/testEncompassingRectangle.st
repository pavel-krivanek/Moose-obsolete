tests
testEncompassingRectangle
	| r |
	r := TRCanvas new encompassingRectangle.
	self assert: r extent equals: 1 @ 1