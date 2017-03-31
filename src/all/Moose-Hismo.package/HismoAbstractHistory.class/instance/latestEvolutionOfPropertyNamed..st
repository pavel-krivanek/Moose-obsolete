properties
latestEvolutionOfPropertyNamed: aPropertyName
	
	| ene currentValue previousValue |
	ene := 0.
	self
		versionsIndexFrom2Do:
			[:i | 
			currentValue := (self versions at: i) propertyNamed: aPropertyName.
			previousValue := (self versions at: i - 1) propertyNamed: aPropertyName.
			[ene := ene
				+ ((currentValue - previousValue) abs * (2 raisedTo: i - self size))]
				on: Error
				do: [:exc | ene := ene + 0]].
	^ene asFloat