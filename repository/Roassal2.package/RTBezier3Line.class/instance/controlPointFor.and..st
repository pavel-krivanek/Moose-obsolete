private
controlPointFor: cp1 and: cp3
	| mid dx dy l vector vectorNorm vectorNormInverse distanceFromMidPoint |
	mid := (cp1 + cp3)/2.
	dx := cp3 x - cp1 x.
	dy := cp3 y - cp1 y.
	l := ((dx*dx) + (dy* dy)) sqrt asFloat.
	vector := dx asFloat @ dy asFloat.
	(vector isZero and: [ l isZero ])
		ifTrue: [ ^ 0@0 ].
	vectorNorm := vector/l.
	
	vectorNormInverse := vectorNorm y negated @ vectorNorm x.
	"distanceFromMidpoint :=  (0.5 - pairEdges.length / 2 + i) * stepSize."
	distanceFromMidPoint := -20.
	^ mid + (vectorNormInverse * distanceFromMidPoint).
	
