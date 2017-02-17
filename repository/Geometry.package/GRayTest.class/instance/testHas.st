as yet unclassified
testHas

	self
		assert: (( GRay origin: 0 @ 0 direction: 12 @ 9 ) hasPoint: (13@(39/4)) ) 
		equals: true.
	self
		assert: (( GRay origin: 0 @ 0 direction: 12 @ 9 )asSegment has: (13@(39/4)) ) 
		equals: false.
	self
		assert: (( GRay origin: 0 @ 0 direction: (13@(39/4))) hasPoint: 12 @ 9  ) 
		equals: true.
	self
		assert: (( GRay origin: 0 @ 0 direction: (13@(39/4))) asSegment has: 12 @ 9  ) 
		equals: true.
	
