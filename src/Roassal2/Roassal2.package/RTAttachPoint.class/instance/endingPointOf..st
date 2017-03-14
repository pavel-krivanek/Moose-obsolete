public - hooks
endingPointOf: anEdge
	(anEdge from = anEdge to) 
		ifTrue: [ ^ anEdge from encompassingRectangle topCenter ].
    ^ inverted
        ifTrue: [ self basicStartingPointOf: anEdge ]
        ifFalse: [ self basicEndingPointOf: anEdge ]