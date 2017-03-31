as yet unclassified
testIntersect1
	self
		assert: ((GSegment with: -1 @ -1 with: 1 @ 1) intersect:(GSegment with: -3 @ 3 with: -1 @ 1))
		equals: nil