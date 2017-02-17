drawing
drawOn: athensCanvas
	|rec c |
	self shouldBeDrawn
		ifFalse: [ ^ self ].
	rec := self encompassingRectangle.
	edges do: [ :ed |
		(condition value: rec value: ed) ifTrue: [ 
			c := ed color.
			(useColor and: [strokePaint isNil not]) ifTrue: [ ed color: strokePaint ].
			ed trachelShape
				canvas: self canvas;
				drawOn: athensCanvas;
				canvas: nil;
				color: c ] ].
	super drawOn: athensCanvas.