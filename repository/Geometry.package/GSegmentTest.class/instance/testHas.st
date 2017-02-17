as yet unclassified
testHas

	self
		assert: (( GSegment with: 0 @ 0 with: 12 @ 9 ) has: (13@(39/4)) ) 
		equals: false.
	self
		assert: (( GSegment with: 0 @ 0 with: (13@(39/4))) has: 12 @ 9  ) 
		equals: true.