accessing
encompassingRectangle
	"Return the encompassing rectangle of all the elements contained in the canvas"
		
	| r e |
	r := self camera encompassingRectangleOf: self shapes.
	e := r extent max: 1 @ 1.
	^ r topLeft extent: e