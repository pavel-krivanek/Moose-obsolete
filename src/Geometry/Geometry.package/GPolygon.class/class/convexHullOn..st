as yet unclassified
convexHullOn: aCollection
	| lastPoint nextPoint convexHull |
"self halt."
	convexHull := OrderedCollection new.	
	nextPoint := aCollection detectMin: #x.
	 [
		lastPoint := nextPoint.
		convexHull add: lastPoint.
		nextPoint := aCollection detect: [ :point | point ~= lastPoint ].
		(aCollection copyWithout: nextPoint) do: [ :point |
			| turn |		
			turn :=
				(nextPoint x - lastPoint x) * (point y - lastPoint y) -
				((point x - lastPoint x) * (nextPoint y - lastPoint y)).
			(turn < 0 or:
				[ turn = 0 and:
				[ (lastPoint dist: point) > (lastPoint dist: nextPoint) ] ]) ifTrue:
					[ nextPoint := point ] ] ] doWhileTrue: [
				convexHull first ~= nextPoint ].
		
	^ self newVertices: convexHull
				