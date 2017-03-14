properties
hasPoint: aPoint withApproximation: approx
	(self a * aPoint x) + (self b * aPoint y) + self c - (((self a * approx) + (self b * approx))abs + self c)  <=~ 0.
	^ "(self a * aPoint x) + (self b * aPoint y) + self c <=~ (2 * approx)"
	(self dist: aPoint) <=~ (2 * approx)
	