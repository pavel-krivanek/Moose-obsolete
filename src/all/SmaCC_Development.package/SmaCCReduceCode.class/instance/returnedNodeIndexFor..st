private
returnedNodeIndexFor: parseTree
	| index |
	parseTree isCascade
		ifTrue: [ ^ self returnedNodeIndexFor: parseTree messages last ].
	(parseTree isMessage and: [ parseTree selector == #yourself ])
		ifTrue: [ ^ self returnedNodeIndexFor: parseTree receiver ].
	(parseTree isVariable or: [ parseTree isLiteralNode ])
		ifFalse: [ ^ nil ].
	parseTree isVariable
		ifTrue: [ index := rhs indexOfVariable: parseTree name.
			(index between: 1 and: rhs size)
				ifTrue: [ ^ index ] ].
	(parseTree isLiteralNode and: [ parseTree value isString ])
		ifFalse: [ ^ nil ].
	(parseTree value allSatisfy: [ :each | each isDigit ])
		ifTrue: [ index := Integer readFrom: (ReadStream on: parseTree value).
			(index between: 1 and: rhs size)
				ifTrue: [ ^ index ] ].
	^ nil