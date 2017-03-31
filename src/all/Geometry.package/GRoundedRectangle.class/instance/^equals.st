comparing
= aRect
	self species = aRect species
		ifFalse: [ ^ false ].
	^ self rectangle = aRect rectangle and: [ self borderRadius = aRect borderRadius ]