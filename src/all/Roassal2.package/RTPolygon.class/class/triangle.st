instance creation
triangle
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 3 rotation: 0);
		yourself