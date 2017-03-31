instance creation
hexagon
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 6 rotation: 0);
		yourself