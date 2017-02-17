as yet unclassified
testEquel2
	self
		assert: (GCircle  center: 1 @ 1 radius: 3) = (GCircle  center: 1 @ 1 radius: 2.999999999)
		equals: true
	