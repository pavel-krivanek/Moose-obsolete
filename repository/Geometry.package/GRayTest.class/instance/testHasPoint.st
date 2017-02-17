as yet unclassified
testHasPoint
	self
		assert: ((GRay origin: 100 @ 100 direction: 80 @ 110) hasPoint: 120 @ 90)
		equals: false.
	self
		assert: ((GRay origin: 100 @ 100 direction: 120 @ 90) hasPoint: 120 @ 90)
		equals: true.
	self
		assert: ((GRay origin: 100 @ 100 direction: 120 @ 90) hasPoint: 100 @ 100)
		equals: true.
	self
		assert: ((GRay origin: 100 @ 100 direction: 110 @ 110) hasPoint: 150 @ 150)
		equals: true.	