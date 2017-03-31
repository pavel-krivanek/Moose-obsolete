as yet unclassified
testHasPoint2
	self skip.
"	self
		assert: 	((( GRay origin: ((57583/914)@(56095/914)) direction: (62.998905906959145@61.37297058105469) ) extendBy: 5 ) asSegment has: (62.998905906959145@61.37297058105469))
		equals: true."
		self
		assert: 	((( GRay origin: 63@61 direction: (62@61) ) extendBy: 5 ) asSegment has: (62@61))
		equals: true.
