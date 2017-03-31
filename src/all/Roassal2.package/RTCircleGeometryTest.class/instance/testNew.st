tests
testNew
	self should: [ RTCircleGeometry new ] raise: Error.
	circle := RTCircleGeometry center: 0 @ 0 radius: 10.
	self assert: circle center equals: 0 @ 0.
	self assert: circle radius equals: 10