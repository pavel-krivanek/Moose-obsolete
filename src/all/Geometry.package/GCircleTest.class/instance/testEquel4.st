as yet unclassified
testEquel4
	self
		assert: (GCircle  center: 1 @ 1 radius: 3) = (GCircle  center: 1 @ 1 radius: 34)
		equals: false
	