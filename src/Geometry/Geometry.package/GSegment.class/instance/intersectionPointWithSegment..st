properties
intersectionPointWithSegment: segm

	^ (self asLine intersect: segm asLine) ifNotNil: [ :point | 
		((self hasPoint: point) and:[segm hasPoint: point])
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
