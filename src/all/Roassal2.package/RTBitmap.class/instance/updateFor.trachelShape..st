hooks
updateFor: anElement trachelShape: trachelShape
	| ex |
	trachelShape isNil ifTrue: [ ^ self ].
	
	form isNil ifTrue: [ 
		ex := (self widthFor: anElement) @ (self heightFor: anElement).
		trachelShape extent: ex
	] ifFalse: [ 
		trachelShape form: (self form rtValue: anElement). ].

	trachelShape 
		rotateByDegrees:  (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement)
