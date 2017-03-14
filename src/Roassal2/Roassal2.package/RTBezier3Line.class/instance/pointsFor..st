private
pointsFor: edge
	| cp1 cp2 cp3 |
	cp1 := attachPoint startingPointOf: edge.
	cp3 := attachPoint endingPointOf: edge.
	cp2 := controlElement
		ifNil: [ self controlPointFor: cp1 and: cp3 ]
		ifNotNil: [ controlElement isPoint
				ifTrue: [ controlElement ]
				ifFalse: [ controlElement position ] ].
			
	^ Array with: cp1 with: cp2 with: cp3