tests
testSideOfPoint
	self assert: (lineX sideOfPoint: 20 @ -20) equals: 1.
	self assert: (lineX sideOfPoint: 20 @ -10) equals: 0.
	self assert: (lineX sideOfPoint: 20 @ 0) equals: -1.

	self assert: (lineY sideOfPoint: 0 @ 0) equals: -1.
	self assert: (lineY sideOfPoint: 10 @ 0) equals: 0.
	self assert: (lineY sideOfPoint: 20 @ 0) equals: 1.

	self assert: (lineDiagonal sideOfPoint: -40 @ -30) equals: 1.
	self assert: (lineDiagonal sideOfPoint: 10 @ -10) equals: 0.
	self assert: (lineDiagonal sideOfPoint: -30 @ -70) equals: -1