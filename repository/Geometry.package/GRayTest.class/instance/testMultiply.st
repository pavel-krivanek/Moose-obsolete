as yet unclassified
testMultiply
	self
		assert: (( GRay origin: 0 @ 0 direction: -12 @ 16 ) * ( GRay origin: 0 @ 0 direction: 12 @ 9)  )
		equals: 0.
		