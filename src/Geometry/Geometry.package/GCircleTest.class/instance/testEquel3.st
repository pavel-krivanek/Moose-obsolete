as yet unclassified
testEquel3
	self
		assert: (GCircle  center: 1 @ 1 radius: 3) = (GCircle  center: 1.00000001 @ 0.9999991 radius: 2.999999999)
		equals: true
	