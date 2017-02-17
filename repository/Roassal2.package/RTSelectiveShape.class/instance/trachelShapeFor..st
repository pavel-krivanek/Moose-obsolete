public
trachelShapeFor: anElement
	| label bshape |
	bshape := (self shapeFor: anElement) trachelShapeFor: anElement.
	bshape
		extent: (self widthFor: anElement) @ (self heightFor: anElement);
		color: (self backgroundColorFor: anElement).
	label := self labelShape trachelShapeFor: anElement.
	^ TRCompositeShape new
		addShape: bshape;
		addShape: label;
		yourself