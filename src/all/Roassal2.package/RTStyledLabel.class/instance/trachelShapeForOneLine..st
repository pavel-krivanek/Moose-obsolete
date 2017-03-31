trachel shape production
trachelShapeForOneLine: anElement
	| shape |
	shape := TRStyledLabelShape new.
	shape
		text: (self textFor: anElement);
		color: (self colorFor: anElement);
		position: anElement position;
		fontSize: (self heightFor: anElement);
		fontName: (self fontNameFor: anElement);
		emphasis: (self emphasisFor: anElement).
	^ shape