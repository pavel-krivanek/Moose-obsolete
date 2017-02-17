trachel shape production
updateFor: anElement trachelShape: trachelShape
	trachelShape isNil
		ifTrue: [ ^ self ].
	trachelShape
		color: (self colorFor: anElement);
		fontSize: (self heightFor: anElement);
		fontName: (self fontNameFor: anElement);
		emphasis: (self emphasisFor: anElement);
		position: anElement position;
		text: (self textFor: anElement) on: anElement position;
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement)