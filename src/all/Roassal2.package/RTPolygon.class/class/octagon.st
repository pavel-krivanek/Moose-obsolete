instance creation
octagon
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 8 rotation: 0);
		yourself