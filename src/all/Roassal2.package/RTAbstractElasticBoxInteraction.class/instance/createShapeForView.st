util
createShapeForView
	| s |
	s := shapeBuilder elementOn: self.
	view add: s.
	view attributes at: self key put: s.
	^ s