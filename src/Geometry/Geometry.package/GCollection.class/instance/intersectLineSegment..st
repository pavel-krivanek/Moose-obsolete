intersection
intersectLineSegment: aLineSegment
	^ self flatCollect: [ :each | each intersectLineSegment: aLineSegment ]