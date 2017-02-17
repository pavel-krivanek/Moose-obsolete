properties
intersectionPointWithRay: ray

	^ (self asLine intersect: ray asLine) ifNotNilDo: [ :point | 
		((self hasPoint: point) and:
				[ray hasPoint: point])
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
