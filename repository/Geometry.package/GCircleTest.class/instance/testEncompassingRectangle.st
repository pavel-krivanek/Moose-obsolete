as yet unclassified
testEncompassingRectangle
	self
		assert: (GCircle center: 2 @ 2 radius: 3) encompassingRectangle
		equals: (-1 @ -1 corner: 5 @ 5)