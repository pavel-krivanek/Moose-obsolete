as yet unclassified
testInscribedRectangle2

	self
		assert: ((GCircle  center: 2 @ 2 radius: 3) inscribedRectangle)
		equals: (Rectangle origin: (2 - (3/(2 sqrt)))@(2 - (3/(2 sqrt))) corner: (2 + (3/(2 sqrt)))@(2 + (3/(2 sqrt)))).