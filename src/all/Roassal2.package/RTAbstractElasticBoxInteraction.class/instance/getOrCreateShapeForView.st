util
getOrCreateShapeForView
	^ (view attributes includesKey: self key) 
		ifTrue: [ view attributes at: self key ]
		ifFalse: [ self createShapeForView ].