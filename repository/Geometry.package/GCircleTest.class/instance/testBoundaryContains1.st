as yet unclassified
testBoundaryContains1
	self
		assert: ((GCircle  center: 2 @ 2 radius: 3) boundaryContains: 5 @ 2)
		equals: true