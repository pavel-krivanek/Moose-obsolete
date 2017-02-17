instance creation
heptagon
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 7 rotation: 0);
		yourself