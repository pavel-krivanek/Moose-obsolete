as yet unclassified
testEdges
self
	assert: ((GPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) edges first )
	equals: (GSegment with: -10 @ 0 with: 0 @ -20).
	
self
	assert: ((GPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) edges second )
	equals: (GSegment with: 0 @ -20 with: 30 @ -30).
	
self
	assert: ((GPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) edges last )
	equals: (GSegment with:  -10 @ 0 with: 0 @ 10).
	