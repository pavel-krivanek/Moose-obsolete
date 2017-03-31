tests
testBasic

	| s |
	s := TRPolygonShape new.
	self assert: s numberOfVertices equals: 0.
	self assert: s vertices equals: #().
	self assert: s encompassingRectangle equals: ((0 @ 0) corner: (0 @ 0))