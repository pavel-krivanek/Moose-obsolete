properties
allLatestEvolutionOfPropertyNamed: aPropertyName
	
	| ene currentValue previousValue |
	ene := (self first propertyNamed: aPropertyName)
		* (2 raisedTo: 1 - self size).
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