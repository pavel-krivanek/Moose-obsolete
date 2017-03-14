private
normalFor: aLine
	| mid v |
	mid := aLine pointForBalance: 0.5.
	v := aLine vector.
	^ RTLineSegment from: mid to: mid + (distance * v normal)