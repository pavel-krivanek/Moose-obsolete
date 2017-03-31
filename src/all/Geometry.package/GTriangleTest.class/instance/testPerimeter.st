as yet unclassified
testPerimeter
	self
		assert: (GTriangle with: 0 @ 0 with: 2 @ 0 with: 0 @ 2) perimeter
		equals: 4 + 8 sqrt