hooks
createShapeBuilder
	| sb |
	sb := RTBoundedShapeBuilder new.
	sb shapeInitializer:
		[ :aShape | sb color: self computeColorForNode ].
	^ sb