testing
includesPoint: aPoint
	| angleOne angleTwo anglePoint |
	((aPoint dist: center) - radius) abs < 5
		ifFalse: [ ^ false ].
	angleOne := line from angleWith: center.
	angleTwo := line to angleWith: center.
	anglePoint := aPoint angleWith: center.
	^ (anglePoint between: angleOne and: angleTwo)
		| (anglePoint between: angleTwo and: angleOne)