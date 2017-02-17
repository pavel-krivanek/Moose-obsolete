tests
testIncludesPoint
	circle := RTCircleGeometry center: 10 @ 10 radius: 10.
	self assert: (circle includesPoint: 10 @ 0).
	self assert: (circle includesPoint: 20 @ 10).
	self assert: (circle includesPoint: 10 @ 20).
	self assert: (circle includesPoint: 0 @ 10).
	self deny: (circle includesPoint: 0 @ 0).
	self deny: (circle includesPoint: 20 @ 0).
	self deny: (circle includesPoint: 20 @ 20).
	self deny: (circle includesPoint: 0 @ 20)