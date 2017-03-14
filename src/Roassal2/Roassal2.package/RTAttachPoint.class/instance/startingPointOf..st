public - hooks
startingPointOf: anEdge
	(anEdge from = anEdge to) 
		ifTrue: [ ^ anEdge from encompassingRectangle rightCenter ].
    ^ inverted
        ifTrue: [ self basicEndingPointOf: anEdge ]
        ifFalse: [ self basicStartingPointOf: anEdge ]
