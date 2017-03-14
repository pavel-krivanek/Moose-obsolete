private
normalFor: aLine sized: aLength
	| mid v |
	mid := aLine pointForBalance: 0.5.
	v := aLine vector.
	^ RTLineSegment from: mid to: mid + (aLength * v normal)