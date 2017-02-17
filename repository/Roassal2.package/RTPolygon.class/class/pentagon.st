instance creation
pentagon
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 5 rotation: 0);
		yourself