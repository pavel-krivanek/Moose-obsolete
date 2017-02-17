tests
testResetShapes

	canvas addShape: TRBoxShape new.
	canvas addShape: TRBoxShape new.
	self assert: canvas numberOfShapes equals: 2.
	canvas resetShapes.
	self assert: canvas numberOfShapes equals: 0.