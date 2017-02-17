as yet unclassified
testHasPoint1
	self skip.
	self
		assert: 	((( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 1 ) asSegment has: 13@(39/4))
		equals: true.
	self
		assert: ((( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 5 ) asSegment has: 13@(39/4))
		equals: true.
	self
		assert: 	((( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 1 ) asSegment has: 17@(51/4))
		equals: false.