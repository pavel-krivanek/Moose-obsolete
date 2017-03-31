tests
testIntersectCircleIntersect
	| circleLeft circleRight |
	circleLeft := RTCircleGeometry center: 0 @ 0 radius: 10.
	circleRight := RTCircleGeometry center: 10 @ 10 radius: 10.
	self assert: ((circleLeft intersectCircle: circleRight) first closeTo: 10 @ 0).
	self assert: ((circleLeft intersectCircle: circleRight) second closeTo: 0 @ 10)