as yet unclassified
testCircumscribedCircle2
	| circle |
	circle := (GTriangle with: -1 @ 1 with: 2 @ 3  with: 5 @ -3) circumscribedCircle.
	self assert: circle center equals: (9 / 4) @ (-5 / 8).
	self assert: (circle radius closeTo: (5 sqrt)* 13 / 8 )
