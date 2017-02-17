as yet unclassified
testExtendBy4
	self skip.
	self
		assert: (( GRay origin: 4 @ 2 direction: 0 @ 2) extendBy: 1 ) direction
		equals: ( -1 @ 2).
	self
		assert: (( GRay origin: 4 @ 2 direction: 4 @ 0) extendBy: 1 ) direction
		equals: ( 4 @ -1).
	self
		assert: (( GRay origin: 4 @ 2 direction: 0 @ 0) extendBy: 1 ) direction
		equals: ( -1 @ ( -1/2 )).
	self
		assert: (( GRay origin: 4 @ 2 direction: 2 @ 1) extendBy: 1 ) direction
		equals: ( 1 @ ( 1/2 )).