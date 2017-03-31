as yet unclassified
testCircumscribedCircle3
	| circle |
	circle := (GTriangle with: 2 @ 3 with: 7 @ 4 with: 5 @ 7) circumscribedCircle.
	self assert: circle center equals: (147/34) @ (149/34).

	

