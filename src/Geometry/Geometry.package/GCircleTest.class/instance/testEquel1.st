as yet unclassified
testEquel1
	self
		assert: (GCircle  center: 1 @ 1 radius: 3) = (GCircle  center: 1.002 @ 1.009 radius: 3)
		equals: false
	