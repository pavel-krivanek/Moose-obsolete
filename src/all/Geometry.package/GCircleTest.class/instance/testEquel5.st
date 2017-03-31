as yet unclassified
testEquel5
	self
		assert: (GCircle  center: 1.4 @ 1 radius: 3) = (GCircle  center: 1 @ 1 radius: 34)
		equals: false
	