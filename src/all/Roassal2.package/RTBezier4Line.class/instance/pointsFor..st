private
pointsFor: edge
	| cp1 cp2 cp3 cp4 arr point |
	cp1 := attachPoint startingPointOf: edge.
	cp4 := attachPoint endingPointOf: edge.
	arr := controlElement rtValue: edge.
	point := [ :e | e isPoint ifTrue: [ e ] ifFalse: [ e position ] ].
	cp2 := point value: arr first.
	cp3 := point value: arr second.
			
	^ Array with: cp1 with: cp2 with: cp3 with: cp4.