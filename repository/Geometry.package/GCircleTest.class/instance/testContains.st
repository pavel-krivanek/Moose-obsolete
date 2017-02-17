as yet unclassified
testContains
	self
		assert: ((GCircle  center: 2 @ 2 radius: 3) contains: 2 @ 2)
		equals: true