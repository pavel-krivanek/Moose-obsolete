rendering
updateFor: anElement trachelShape: trachelShape
	| ex |
	trachelShape isNil ifTrue: [ ^ self ].
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	trachelShape
		extent: ex;
		color: (self colorFor: anElement);
		borderRadius: (self borderRadiusFor: anElement);
		strokePaint: (self borderColorFor: anElement);
		strokeWidth: (self borderWidthFor: anElement);
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement)