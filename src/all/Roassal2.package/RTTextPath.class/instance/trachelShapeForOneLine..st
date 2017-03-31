trachel shape production
trachelShapeForOneLine: anElement
	| shape |
	shape := TRTextPath new.
	shape
		text: (self textFor: anElement);
		color: (self colorFor: anElement);
		position: anElement position;
		fontSize: (self heightFor: anElement);
		fontName: (self fontNameFor: anElement);
		outlineColor: (self outlineColorFor: anElement);
		outlineWidth: (self outlineWidthFor: anElement).
	^ shape