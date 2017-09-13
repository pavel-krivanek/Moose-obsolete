comparing
= aDescription
	self species = aDescription species
		ifFalse: [ ^ false ].
	^ self set = aDescription set