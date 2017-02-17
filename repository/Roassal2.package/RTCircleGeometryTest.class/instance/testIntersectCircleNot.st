tests
testIntersectCircleNot
	| circleLeft circleRight |
	circleLeft := RTCircleGeometry center: 0 @ 0 radius: 10.
	circleRight := RTCircleGeometry center: 30 @ 0 radius: 10.
	self assert: (circleLeft intersectCircle: circleRight) isEmpty