public
addBox: aColor
	| box |
	box := RTClipBox new
			size: 100;
			borderColor: aColor;
			borderWidth: 1;
			color: Color transparent;
			element.
	lastClick isNil ifFalse: [ 
		box translateTo: lastClick position ].
	aView add: box.
	box trachelShape edges: edges.
	box @ RTDraggable.
	box @ RTResizable.
	aView signalUpdate.
	^ box