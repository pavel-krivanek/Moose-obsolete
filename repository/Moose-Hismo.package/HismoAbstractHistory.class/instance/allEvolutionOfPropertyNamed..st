properties
allEvolutionOfPropertyNamed: aPropertyName
	
	| ene current previous |
	ene := self first propertyNamed: aPropertyName.
	self
		versionsIndexFrom2Do:
			[:i | 
			current := (self versions at: i) propertyNamed: aPropertyName.
			previous := (self versions at: i - 1) propertyNamed: aPropertyName.
			ene := ene + (current - previous) abs].
	^ene