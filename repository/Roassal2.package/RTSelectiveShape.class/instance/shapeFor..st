accessing
shapeFor: anElement
	| res |
	res := shape rtValue: anElement.
	res isSymbol ifTrue: [ 
		res := self getShapeBySymbol: res ].
	^ res 
	