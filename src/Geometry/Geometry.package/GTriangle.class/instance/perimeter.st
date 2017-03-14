properties
perimeter
	^ self edges
		inject: 0
		into: [ :subSum :edge |
			subSum + edge length ]