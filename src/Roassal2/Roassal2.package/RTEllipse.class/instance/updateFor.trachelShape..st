rendering
updateFor: anElement trachelShape: trachelShape
	| ex rec |
	trachelShape isNil ifTrue: [ ^ self ].
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	rec := (anElement position - (ex / 2)) extent: ex.
	
	trachelShape 
		fromRectangle: rec color: (self colorFor: anElement);
		strokeWidth: (self borderWidthFor: anElement);
		strokePaint: (self borderColorFor: anElement);
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement).
	^ trachelShape
	