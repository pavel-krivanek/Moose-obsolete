tests
testIntersectCircleTouch
	| circleLeft circleRight |
	circleLeft := RTCircleGeometry center: 0 @ 0 radius: 10.
	circleRight := RTCircleGeometry center: 20 @ 0 radius: 10.
	self assert: (circleLeft intersectCircle: circleRight) equals: (Array with: (10 @ 0))