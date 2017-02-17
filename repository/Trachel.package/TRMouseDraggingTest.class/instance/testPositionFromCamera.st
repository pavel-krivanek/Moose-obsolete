tests
testPositionFromCamera

	| evt |
	evt := TRMouseDragging new.
	self assert: (evt positionFromCamera closeTo: -250 @ -250)