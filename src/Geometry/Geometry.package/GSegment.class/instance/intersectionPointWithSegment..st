properties
intersectionPointWithSegment: segm

	^ (self asLine intersect: segm asLine) ifNotNilDo: [ :point | 
		((self hasPoint: point) and:[segm hasPoint: point])
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
