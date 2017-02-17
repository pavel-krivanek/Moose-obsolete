public
offsetNormalFor: anEdge
    "Return the offset in case of multiple edges with the same starting and ending points"
    | indexOfEdge multipleEdges normal pos |
    multipleEdges := OrderedCollection new.
    multipleEdges addAll: 
        (anEdge to connectedEdges select: [ :e | 
            (e from == anEdge from) and: [ e to == anEdge to ] ]).    

    multipleEdges addAll: 
        (anEdge to connectedEdges select: [ :e | 
            (e to == anEdge from) and: [ e from == anEdge to ] ]).    

	multipleEdges size <= 1 ifTrue: [ ^ 0 @ 0 ].
	indexOfEdge := multipleEdges indexOf: anEdge.
	pos := anEdge to position - anEdge from position.
	normal := pos = (0@0) ifTrue: [ -1 @0  ] ifFalse: [ pos normal].
	^ (indexOfEdge - 1 - (multipleEdges size / 2)) * offset * normal