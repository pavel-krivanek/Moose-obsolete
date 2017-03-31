as yet unclassified
testIntersect
	self
		assert: ((GSegment with: -1 @ -1 with: 1 @ 1) = (GSegment with: 1 @ 1 with: -1 @ -1))
		equals: true.
	self
		assert: ((GSegment with: -1 @ -1 with: 1 @ 1) = (GSegment with: -1 @ 1 with: -1 @ 1))
		equals: false.	