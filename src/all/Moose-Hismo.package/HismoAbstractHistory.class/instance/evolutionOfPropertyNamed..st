properties
evolutionOfPropertyNamed: aPropertyName
	
	| ene current previous |
	ene := 0.
	self versionsIndexFrom2Do: [:i | 
			current := aPropertyName value: (self versions at: i) .
			previous := aPropertyName value: (self versions at: i - 1).
			ene := ene + (current - previous) abs].
	^ene