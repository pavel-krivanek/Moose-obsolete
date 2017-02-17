as yet unclassified
testExtendBy1
	self skip.
	self
		assert: (( GRay origin: 0 @ 0 direction: -4 @ 2) extendBy: 1 ) direction
		equals: ( -5 @ ( 5/2 )).

	self
		assert: (( GRay origin: 0 @ 0 direction: 4 @ -2) extendBy: 1 ) direction
		equals: ( 5 @ ( -5/2 )).