actions
positionShapesAfterBeingAdded
	| p |
	p := self position.
	shapeAndOffsets do: [ :tuple | tuple first translateTo: tuple second ].
	(shapeAndOffsets anySatisfy: [ :tupple | tupple first isKindOf: TRAbstractLineShape ])
		ifFalse: [ self translateBy: p ]