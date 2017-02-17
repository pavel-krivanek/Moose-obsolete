properties
extendWith: point and: frame
	|points v|
	(self asLine hasPoint: point) 
		ifTrue:[ 
			(( self v1 dist: point ) < ( self v2 dist: point ))
				ifTrue:[ v1 := point]
				ifFalse:[ v2 := point].
			v := self vertices detect:[:p | (p = point) not ].
			points := frame intersectionPointsWithLine: (self asLine).
			points size = 2 
				ifTrue:[  ( ( GSegment with: point with: points first ) hasPoint: v )  
					ifTrue:[ ^ GSegment with: point with: points first ]
					ifFalse:[ ^ GSegment with: point with: points second] ]]
		