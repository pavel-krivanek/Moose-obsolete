hooks
updateFor: anElement trachelShape: trachelShape

	trachelShape isNil ifTrue: [ ^ self ].
	trachelShape
		color: (self colorFor: anElement);
		strokeWidth: (self borderWidthFor: anElement);
		strokePaint: (self borderColorFor: anElement);
		vertices: (self verticesFor: anElement);
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement).
		
	(width notNil and: [height notNil])
		ifTrue: [ trachelShape extent: (self widthFor: anElement) @ (self heightFor: anElement) ]
	