as yet unclassified
testCircumscribedCircle
	| circle |
	circle := (GTriangle with: -1 @ 2 with: 0 @ 0 with: 2 @ 1) circumscribedCircle.
	self assert: circle center equals: 0.5 @ 1.5.
	self assert: (circle radius closeTo: 10 sqrt / 2)
	

