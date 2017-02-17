as yet unclassified
testSemiperimeter
	self
		assert: (GTriangle with: 0 @ 0 with: 2 @ 0 with: 0 @ 2) semiperimeter
		equals: 2 + 2 sqrt