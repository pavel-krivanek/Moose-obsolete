hooks
updateFor: anElement trachelShape: trachelShape
	^ trachelShape
		text: (self wrap: (self textFor: anElement) to: (self widthFor: anElement));
		font: (self fontFor: anElement);
		fontSize: (self fontSizeFor: anElement);
		color: (self colorFor: anElement);
		position: anElement position;
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement);
		yourself