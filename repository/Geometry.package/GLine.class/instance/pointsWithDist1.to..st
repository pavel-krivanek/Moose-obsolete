properties
pointsWithDist1: aNumber to: aPoint
	| deltaX delta |
	
	"(self hasPoint: aPoint) ifFalse: [
		Error signal: 'This line does not contain ', aPoint asString ]."

	b = 0 ifTrue: [
		^ { aPoint + (0 @ aNumber) . aPoint - (0 @ aNumber) } ].
	
	deltaX := aNumber / ((a / b) squared + 1) sqrt.		
	delta := deltaX @ (deltaX * a / b) negated.

	^ { aPoint + delta . aPoint - delta }
	