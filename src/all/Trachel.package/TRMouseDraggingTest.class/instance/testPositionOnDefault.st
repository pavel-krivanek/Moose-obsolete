tests
testPositionOnDefault

	| evt |
	evt := TRMouseDragging new.
	self assert: evt position equals: 0 @ 0