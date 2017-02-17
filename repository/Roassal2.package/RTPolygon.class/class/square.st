instance creation
square
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 4 rotation: 0);
		yourself