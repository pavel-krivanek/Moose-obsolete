rendering
updateFor: anElement trachelShape: trachelShape
	| ex |
	trachelShape isNil
		ifTrue: [ ^ self ].
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	trachelShape 
		extent: ex;
		color: (self colorFor: anElement);
		strokePaint: (self borderColorFor: anElement);
		strokeWidth: (self borderWidthFor: anElement);
		dashes: self borderStyle style;
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement)