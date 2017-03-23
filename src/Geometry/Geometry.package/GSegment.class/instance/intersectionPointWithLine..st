properties
intersectionPointWithLine: aLine

	^ (self asLine intersect: aLine) ifNotNil: [ :point | 
		(self hasPoint: point)
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
