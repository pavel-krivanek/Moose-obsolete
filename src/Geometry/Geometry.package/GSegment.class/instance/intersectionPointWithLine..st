properties
intersectionPointWithLine: aLine

	^ (self asLine intersect: aLine) ifNotNilDo: [ :point | 
		(self hasPoint: point)
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
