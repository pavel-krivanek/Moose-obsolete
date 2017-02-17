util
removeShape
	| s |
	s := (self getOrCreateShapeForView).
	s remove.
	view attributes removeKey: self key.
	view signalUpdate.
	^ s