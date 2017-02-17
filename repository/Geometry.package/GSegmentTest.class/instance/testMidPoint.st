as yet unclassified
testMidPoint
	self
		assert: (GSegment with: -1 @ 2 with: 2 @ 1) midPoint 
		equals: 0.5 @ 1.5