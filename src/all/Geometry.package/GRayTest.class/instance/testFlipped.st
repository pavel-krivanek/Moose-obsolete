as yet unclassified
testFlipped
	self
		assert: ((GRay origin: 100 @ 100 direction: 80 @ 110) flipped )direction
		equals: 120 @ 90.
	self
		assert: ((GRay origin: 100 @ 100 direction:  120 @ 90) flipped )direction
		equals: 80 @ 110