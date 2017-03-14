as yet unclassified
testExtendBy5
	self skip.
	self
		assert: 	((( GRay origin: 63@61 direction: (62@61) ) extendBy: 5 ) direction)
		equals: ( 57 @ 61).
		