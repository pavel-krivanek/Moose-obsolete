as yet unclassified
testEquals
	self
		assert: (GEllipse center: 10 @ 10 a: 5 b: 10)
		equals: (GEllipse center: 10 @ 10 a: 5 b: 10).
	self
		assert: (GEllipse center: 10 @ 10 a: 5 b: 10) hash
		equals: (GEllipse center: 10 @ 10 a: 5 b: 10) hash