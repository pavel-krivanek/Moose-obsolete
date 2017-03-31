events
testShapeWithActionForPositionInPixelsUnder2
	| c top under |
	c := TRCanvas new.
	top := TRBoxShape new size: 20.
	top when: TRMouseDragEnter do: [  ].
	under := TRBoxShape new size: 20.
	under when: TRMouseDragEnter do: [  ].
	c addShape: under.
	c addShape: top.
	self
		assert: (c shapeWithAction: TRMouseDragEnter forPositionInPixels: 250 @ 250 under: top)
		equals: under.
	self
		assert: (c shapeWithAction: TRMouseDragEnter forPositionInPixels: 0 @ 0 under: top)
		equals: c