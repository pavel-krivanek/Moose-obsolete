accessing
lineSegments
	^ Array with: (RTLineSegment
		from: (self shape startingPointOf: self)
		to: (self shape endingPointOf: self))