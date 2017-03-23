properties
intersectionPointWithRay: ray

	^ (self asLine intersect: ray asLine) ifNotNil: [ :point | 
		((self hasPoint: point) and:
				[ray hasPoint: point])
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
