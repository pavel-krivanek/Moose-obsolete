as yet unclassified
testBelowPoint2
self assert:((GSegment with:  -2 @ 4 with: -2 @ 0) belowPoint: 0 @ 2 ) 
	equals: true.
self assert:((GSegment with:  -2 @ 4 with: -2 @ 0) belowPoint: -4 @ 2 ) 
	equals: false.