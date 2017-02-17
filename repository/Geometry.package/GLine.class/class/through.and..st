as yet unclassified
through: aPoint1 and: aPoint2
|ai bi ci|
(aPoint1 y) = (aPoint2 y) ifTrue:
[ ^ GLine
		a: 0 b: 1 c: ((aPoint1 y) negated)].
(aPoint1 x) = (aPoint2 x) ifTrue:[ 
	^ GLine
		a: 1 b: 0 c: ((aPoint1 x) negated)].	
ai := (aPoint1 y) - (aPoint2 y). 
bi := (aPoint2 x) - (aPoint1 x).
ci := ((aPoint1 x) - (aPoint2 x)) * (aPoint1 y) + ( ((aPoint2 y) - (aPoint1 y)) * (aPoint1 x) ).
^ self	 a:ai b: bi c: ci