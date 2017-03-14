as yet unclassified
testCircumscribedCircle1
	| circle |
	circle := (GTriangle with: -1 @ 1 with: 3 @ 0 with: 1 @ 3) circumscribedCircle.
	self assert: circle center equals: (11/10) @ (9/10).
	self assert: (circle radius closeTo: (1+(21*21)) sqrt / 10)
	

